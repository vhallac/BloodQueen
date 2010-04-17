
local MemberList_FuncTemplate = {}
local ItemButtonHeight = 20
local Lists = {}

function New_List(frame, btnName)
    list = setmetatable({}, {__index = MemberList_FuncTemplate})
    list.frame = frame
    list.btnName = btnName
    -- Will probably be overwritten, but better casue garbage than to error
    list.items = {}

    table.insert(Lists, list)

    return list
end

--------------------------------------------------------------------------------
-- Scrollbar handling
--------------------------------------------------------------------------------

function MemberList_FuncTemplate:GetItemButton(i)
	local button = getglobal(self.btnName..i)
	if not button then
		-- Create a new button. Assume button (i-1) was already created
		button = CreateFrame("Button", self.btnName..i, self.frame:GetParent(), "BloodQueen_ListBtnTemplate")
        button.idx = i
    end

    button:SetNormalTexture("");
    button:SetText("");
    button.list = self
    button:ClearAllPoints()
    if i > 1 then
        button:SetPoint("TOPLEFT", self.btnName..(i-1), "BOTTOMLEFT")
    else
        button:SetPoint("TOPLEFT", self.frame, "TOPLEFT")
    end

	self.numButtons = math.max(i, self.numButtons or 0)

	return button
end

function MemberList_FuncTemplate:UpdateItemList(frame)
    local buttonCount = math.floor(frame:GetHeight() / ItemButtonHeight)

    -- If frames were resizable, we'd have to hide buttons not visible here.
    -- Since it is not the case, we don't need that.

    FauxScrollFrame_Update(frame,
                           #self.items, buttonCount,
                           ItemButtonHeight)

    local topIdx = FauxScrollFrame_GetOffset(frame) or 0

    for i=1, buttonCount do
        local itemIdx = topIdx + i
        local itemButton = self:GetItemButton(i)
        if itemIdx <= #self.items then
            local name = getglobal(itemButton:GetName() .. "Name")
            name:SetText(self.items[itemIdx])
            itemButton.itemIdx = itemIdx
            itemButton:Show()
        else
            itemButton.itemIdx = nil
            itemButton:Hide()
        end
    end
end

function MemberList_FuncTemplate:SetText(text)
    -- TODO: I know, I know, reuse tables.
    self.items = {}
    -- Sanitize the input before adding them to the list
    -- For now, the only check is empty strings.
    for _, v in ipairs { strsplit("\n", text) } do
        if string.len(v) > 0 then
            table.insert(self.items, v)
        end
    end
    self:UpdateItemList(self.frame)
end

function MemberList_FuncTemplate:GetText()
    return strjoin("\n", unpack(self.items))
end

function BQ_OP_Prio_OnLoad(frame, varName)
    frame.list = New_List(frame, frame:GetName().."Button")
    _G[varName] = frame.list
end

function BQ_OP_Prio_UpdateScroll(frame)
    frame.list:UpdateItemList(frame)
end

local MovingButtonLevel
local DraggingPlayer = false

function BQ_ListBtn_OnDragStart(frame)
    -- Hide the close button while dragging
    frame.CloseButton:Hide()
	MovingButtonLevel = frame:GetFrameLevel()
	if frame.list.ListLocked then return end

	local cursorX, cursorY = GetCursorPosition()
	DraggingPlayer = true
	frame:StartMoving()
	frame:SetFrameLevel(MovingButtonLevel + 30)

    -- Allow this button to mave, but the ones that are positioned according to
    -- this stay inside the list.
    local nextBtn = getglobal(frame.list.btnName .. (frame.idx+1))
    if nextBtn then
        nextBtn:ClearAllPoints()
        if frame.idx > 1 then
            nextBtn:SetPoint("TOPLEFT", frame.list.btnName..(frame.idx-1), "BOTTOMLEFT")
        else
            -- frame is a button, frame.list.frame is the scroll frame.
            nextBtn:SetPoint("TOPLEFT", frame.list.frame, "TOPLEFT")
        end
    end
end

function BQ_ListBtn_OnDragStop(frame)
	frame:SetFrameLevel(MovingButtonLevel)
	frame:StopMovingOrSizing()

    local sourceList, sourceIdx
    local targetList, targetIdx

    sourceIdx = frame.itemIdx
    sourceList = frame.list

    -- Discover the list/button we've draged the item on
	for _, list in ipairs(Lists) do
        local parent = list.frame:GetParent()
        if parent:IsShown() then
            if MouseIsOver(parent) then
                targetList = list
                for btnIdx=1,list.numButtons do
                    local btn = getglobal(list.btnName .. btnIdx)
                    if btn and btn ~= frame and MouseIsOver(btn) then
                        targetIdx = btn.itemIdx
                        break
                    end
                end
                targetIdx = targetIdx or #list.items + 1 -- if not over an item, add to end
                break
            end
        end
    end

    -- If we've got a target
    if targetList then
        local item = sourceList.items[sourceIdx]
        table.remove(sourceList.items, sourceIdx)
        if sourceList == targetList and sourceIdx < targetIdx then
            targetIdx = targetIdx - 1
        end
        table.insert(targetList.items, targetIdx, item)
    end

    -- Update to reset button positions even when the target list is empty
    if sourceList ~= targetList then
        sourceList:UpdateItemList(sourceList.frame)
    end
    if targetList then
        targetList:UpdateItemList(targetList.frame)
    end

    -- Edge case: if the drag ends over the same line, we dont get a new OnEnter
    -- event. Send one manually.
    if MouseIsOver(frame) then
        frame:GetScript("OnEnter")(frame)
    end
end

function BQ_ListCloseBtn_OnClick(frame)
    DEFAULT_CHAT_FRAME:AddMessage("BQ_ListCloseBtn_OnClick")
    -- Edge case: When this button was the last visible one, don't hide it with
    -- close button visible. If it is repopulated, it will come back with the
    -- button visible even though the mouse ise not over it.
    frame:Hide()
    local listBtn = frame:GetParent()
    local sourceIdx = listBtn.itemIdx
    local sourceList = listBtn.list

    table.remove(sourceList.items, sourceIdx)
    sourceList:UpdateItemList(sourceList.frame)
end
