BLOODQUEEN_REPORTCHANNEL = "RAID_WARNING";
BLOODQUEEN_REPORTMC = true;
BLOODQUEEN_REPORTBITE = true;
BLOODQUEEN_REPORTASSIGN = false;
BLOODQUEEN_WHISPASSIGN = true;
BLOODQUEEN_WARNTIMER = 5;
BLOODQUEEN_ICONS = true;
BLOODQUEEN_RECOUNT = false;
BLOODQUEEN_SKADA = false;
BLOODQUEEN_DUAL = false;
BLOODQUEEN_DUALTRADE = true;
BLOODQUEEN_ICONSVAMP = false;
BloodQueen_List={
};
BLOODQUEEN_PROFILE = {
		[0] = 1,
		[1] = {
			["name"] = BloodQueen_Local["Default"],
			["list"] = BloodQueen_List,
			["reportchannel"] = BLOODQUEEN_REPORTCHANNEL,
			["warntimer"] = BLOODQUEEN_WARNTIMER,
			["icons"] = BLOODQUEEN_ICONS,
			["vampicons"] = BLOODQUEEN_ICONSVAMP,
			["dual"] = BLOODQUEEN_DUAL,
			["dualtrade"] = BLOODQUEEN_DUALTRADE,
			["recount"] = BLOODQUEEN_RECOUNT,
			["skada"] = BLOODQUEEN_SKADA,
			["reportmc"] = BLOODQUEEN_REPORTMC,
			["reportbite"] = BLOODQUEEN_REPORTBITE,
			["reportassign"] = BLOODQUEEN_REPORTASSIGN,
			["wshipassign"] = BLOODQUEEN_WHISPASSIGN,			
		},
};




local BloodQueen_Difficulty={
		[10] = { 2, 15, 20 },
		[25] = { 5, 10,  15 }
	}
local BloodQueen_Version = "1.8";
local BloodQueen_Run = { false, 0 };

local BloodQueen_Icon = 1;
local BloodQueen_RaidList={ };
local BloodQueen_TestRaidList={ };
function BloodQueenResetRaidList()
	BloodQueen_RaidList={
		[1] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[2] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[3] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[4] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[5] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[6] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[7] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[8] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[9] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[10] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[11] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[12] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[13] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[14] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[15] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[16] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[17] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[18] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[19] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[20] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[21] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[22] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[23] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[24] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[25] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
	}
end
function BloodQueenResetTestRaidList()
	BloodQueen_TestRaidList={
		[1] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[2] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[3] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[4] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[5] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[6] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[7] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[8] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[9] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[10] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[11] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[12] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[13] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[14] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[15] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[16] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[17] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[18] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[19] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[20] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[21] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[22] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[23] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[24] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
		[25] = { ["name"] = "", ["raidid"] = 0, ["from"] = 0, ["bite"] = -1, ["bitetimer"] = 0, ["warn"] = 0, ["warntimer"] = 0, ["raidicon"] = false, ["raidicontimer"] = 0, ["mc"] = 0, ["type"] = 0, ["damage"] = 0 },
	}
end

--Used for testing
--[[function BQcheat(vamp)
	for x=1,BloodQueen_Size() do
		if (BloodQueen_RaidList[x]["name"] == vamp) then
			BloodQueen_RaidList[x]["bite"] = 2; -- marked as bited forever
			if (BloodQueen_RaidList[x]["type"] == 0 and BLOODQUEEN_DUAL) then -- non listed on priorities
				BloodQueen_RaidList[x]["type"] = 2; -- non member from list getting bitted will count as ranged
			end
			BloodQueen_RaidList[x]["bitetimer"] = 0;
			if BLOODQUEEN_REPORTBITE then
				BloodQueen_Report("Vampire #"..BloodQueen_BiteNumber().." "..BloodQueen_RaidList[x]["name"]);
			end
		end
	end
	

end
function BQcheat2(vamp)
	for x=1,BloodQueen_Size() do
		if (BloodQueen_RaidList[x]["name"] == vamp) then
			BloodQueen_RaidList[x]["warntimer"] = 0;
			BloodQueen_RaidList[x]["warn"] = 1;
			BloodQueen_Bite(x,UnitName("raid"..BloodQueen_RaidList[x]["raidid"]),nil,nil,BloodQueen_RaidList[x]["type"]); -- new target to bite
		end
	end

end]]--
function BloodQueen_Size()
	local _, _, _, _, maxraid = GetInstanceInfo()
	return maxraid;
end				
function BQReportData()
	if BLOODQUEEN_RECOUNT and Recount then
		local lasttable=Recount.db.profile.MainWindowMode;
		--force current fight
		Recount.db.profile.CurDataSet="CurrentFightData";
		Recount.MainWindow.DispTableSorted={};
		Recount.MainWindow.DispTableLookup={}; 
		Recount.FightName="Current Fight";
		Recount:RefreshMainWindow();
		if RecountDeathTrack then RecountDeathTrack:SetFight(Recount.db.profile.CurDataSet) end
		--force damage done
		Recount:SetMainWindowMode(1);
		local dataMode=Recount.MainWindowData[Recount.db.profile.MainWindowMode]
		local data=dbCombatants
		local i
		local maxValue = 0
		local reportTable=Recount.MainWindow.DispTableSorted
		local lookup=Recount.MainWindow.DispTableLookup
		local Total=0
		local TotalPerSec=0
		local Value,PerSec

		local MainWindow_Settings = Recount.db.profile.MainWindow

		if type(data)=="table" then
			for k,v in pairs(data) do
				if v and v.type and Recount.db.profile.Filters.Show[v.type]  and not (v.type == "Pet" and Recount.db.profile.MergePets and v.Owner and dbCombatants[v.Owner] and not Recount.db.profile.Filters.Show[dbCombatants[v.Owner].type])  then -- Elsia: Added owner inheritance filtering for pets
					if v.Fights[Recount.db.profile.CurDataSet] then
						Value,PerSec=dataMode[2](self,v,1) -- Elsia: WotLK evil "this" was here.
						if Value>0 then
							if (v.type ~= "Pet" or not Recount.db.profile.MergePets) then -- Elsia: Only add to total if not merging pets.
								Total=Total+Value
								if type(PerSec)=="number" then
									TotalPerSec=TotalPerSec + PerSec
								end
						end

							if type(lookup[k])=="table" then
								lookup[k][1]=k
								lookup[k][2]=Value
								lookup[k][5]=PerSec
							else
								lookup[k]={k,Value,v.enClass,v,PerSec} -- Recount.Colors:GetColor("Class",v.enClass)
								table.insert(reportTable,lookup[k])
							end
						end
					end
				end
			end
		end

		for i=1,100 do
			if reportTable[i] and reportTable[i][2]>0 then
				if reportTable[i][5] then
					if type(reportTable[i][5])=="number" then
						PerSec=string.format("%.1f, ",reportTable[i][5])
					else
						PerSec=reportTable[i][5]
					end
				else
					PerSec=""
				end
				BloodQueen_HandleRecount(reportTable[i][1],(math.floor(10*reportTable[i][2])/10));
				--SendChatMessage(i..". "..reportTable[i][1].."  "..(math.floor(10*reportTable[i][2])/10).." ("..PerSec..(math.floor(1000*reportTable[i][2]/Total)/10).."%)",loc,nil,loc2)
			end
		end

		Recount:SetMainWindowMode(lasttable);
	elseif BLOODQUEEN_SKADA and Skada then
		local set
		set = Skada:find_set("current")
		if set then 
			for i, player in ipairs(set.players) do
				if player.damage > 0 then
					BloodQueen_HandleRecount(player.name,player.damage);
				end
			end
		end
	end
end

function BloodQueen_HandleRecount(player,damage)
	for i=1,BloodQueen_Size() do
		if(BloodQueen_RaidList[i]["name"]==player) then
			BloodQueen_RaidList[i]["damage"]= damage;
			return;
		end
	end
end
function BloodQueen_Report(msg)
	SendChatMessage(msg,BLOODQUEEN_REPORTCHANNEL);
end
function BloodQueen_Whisper(msg,target)
	--print(msg.." -> "..target);
	if BLOODQUEEN_WHISPASSIGN then
		SendChatMessage(msg,"WHISPER",nil,target);
	end
end
function BloodQueenFilterWhisper(table,event,msg)
	if  ( event == "CHAT_MSG_WHISPER_INFORM" and BloodQueen_Run[1] ) then
		startPos, endPos = strfind(msg, ">>");
		if startPos == 1 and endPos == 2 then
			return true;
		end
	end
	return false;
end
function BloodQueen_BiteNumber()
	local number = 0;
	for y=1,BloodQueen_Size() do
		if ( BloodQueen_RaidList[y]["bite"] == 2) then
			number=number+1;
		end
	end
	return number;
end
function BloodQueen_SetRaidTarget(target,icon)
	if BLOODQUEEN_ICONS and icon and target then
		SetRaidTarget(target,icon);
	end
end
function BloodQueen_Print(sms,type)
	if sms then
		if type == 1 then
			DEFAULT_CHAT_FRAME:AddMessage( "|c0000FF00["..BloodQueen_Local["BloodQueen"].."]|r "..sms);
		else
			DEFAULT_CHAT_FRAME:AddMessage( "|c0000FF00["..BloodQueen_Local["BloodQueen"].."]|r |c00FFFF00"..sms.."|r");
		end
	end
end
function BQGetNext(target,type)
	local value=0;
	local max;
	for i=1,BloodQueen_Size() do
		local _, _, group, _, _, _, _, online, isDead = GetRaidRosterInfo(BloodQueen_RaidList[i]["raidid"]);
		if(BloodQueen_RaidList[i]["damage"] >= value and (not BloodQueen_GetGhostID(BloodQueen_RaidList[i]["raidid"])) and BloodQueen_RaidList[i]["bite"] == 0 and BloodQueen_RaidList[i]["mc"] == 0 and (not isDead) and online and target~= BloodQueen_RaidList[i]["name"] and (BloodQueen_RaidList[i]["type"]==type or (not type))) then
			value = BloodQueen_RaidList[i]["damage"];
			max = i;
		end
	end
	if not max and type then
		return 300;
	end
	return max;
end
function BloodQueen_Bite(x,target,dead,icon,type)
	if BloodQueen_BiteNumber() >= 16 then
		return;
	end
	local whisp;
	local match;
	if BloodQueen_BiteNumber() == 1 and BLOODQUEEN_DUALTRADE then
		if type == 1 then
			type=2;
		elseif type == 2 then
			type=1;
		end
	end
	if (BLOODQUEEN_RECOUNT or BLOODQUEEN_SKADA) then
		BQReportData();
		match = BQGetNext(target,type);
	end
	for y=1,BloodQueen_Size() do 
		local _, _, group, _, _, _, _, online, isDead = GetRaidRosterInfo(BloodQueen_RaidList[y]["raidid"]);
		if ( ((not match) or y==match) and (not BloodQueen_GetGhostID(BloodQueen_RaidList[y]["raidid"])) and BloodQueen_RaidList[y]["bite"] == 0 and BloodQueen_RaidList[y]["mc"] == 0 and (not isDead) and online and target~= BloodQueen_RaidList[y]["name"] and (BloodQueen_RaidList[y]["type"]==type or (not type))) then
			local newicon = "";
			local vampicon = "";
			local yicon=y;
			if BLOODQUEEN_ICONS then
				if BLOODQUEEN_ICONSVAMP then
					if icon then
						vampicon = "{rt"..icon.."}";
					else
						vampicon = "{rt"..BloodQueen_Icon.."}";
					end
					yicon = x;
				else
					if icon then
						newicon = "{rt"..icon.."}";
					else
						newicon = "{rt"..BloodQueen_Icon.."}";
					end
				end
			end
			if dead then 
				local timeleft = BLOODQUEEN_WARNTIMER-dead;
				if timeleft > 0 then
					--SendAddonMessage("BloodQueenGTA","BITE "..target.." "..BloodQueen_RaidList[y]["name"].." "..string.format("%d",(timeleft+BloodQueen_Difficulty[BloodQueen_Size()][2])),"RAID");
					--SendAddonMessage("BloodQueenGTA","BITE "..BloodQueen_RaidList[y]["name"].." "..target.." "..string.format("%d",(timeleft+BloodQueen_Difficulty[BloodQueen_Size()][2])),"RAID");
					BloodQueen_Whisper(string.format(BloodQueen_Local[">>Target Dead/Offline! BITE"],newicon,BloodQueen_RaidList[y]["name"],group,timeleft),target);
					BloodQueen_Whisper(string.format(BloodQueen_Local[">>Target Dead/Offline! BITE"],newicon,BloodQueen_RaidList[y]["name"],group,timeleft),target);
					BloodQueen_Whisper(string.format(BloodQueen_Local[">>is going to bite you"],vampicon,target,timeleft),BloodQueen_RaidList[y]["name"]);	
					BloodQueen_RaidList[y]["bitetimer"]=0;
					BloodQueen_RaidList[y]["bite"]=1;
					BloodQueen_RaidList[y]["from"]=target;
					BloodQueen_RaidList[yicon]["raidicon"]=icon;
					BloodQueen_RaidList[yicon]["raidicontimer"]=string.format("%d",timeleft+BloodQueen_Difficulty[BloodQueen_Size()][2]);
					BloodQueen_SetRaidTarget("raid"..BloodQueen_RaidList[yicon]["raidid"],icon);
					if BLOODQUEEN_REPORTASSIGN then
						BloodQueen_Report(string.format(BloodQueen_Local["Report Bite"],vampicon,target,newicon,BloodQueen_RaidList[y]["name"]));
					end
				else
					--SendAddonMessage("BloodQueenGTA","BITE "..target.." nil "..0,"RAID");
					BloodQueen_Whisper(BloodQueen_Local[">>Target Dead/Offline! BITE ANYONE FAST<<"],target);
					BloodQueen_Whisper(BloodQueen_Local[">>Target Dead/Offline! BITE ANYONE FAST<<"],target);
				end
			else
				--SendAddonMessage("BloodQueenGTA","BITE "..target.." "..BloodQueen_RaidList[y]["name"].." "..(BLOODQUEEN_WARNTIMER+BloodQueen_Difficulty[BloodQueen_Size()][2]),"RAID");
				--SendAddonMessage("BloodQueenGTA","BITE "..BloodQueen_RaidList[y]["name"].." "..target.." "..(BLOODQUEEN_WARNTIMER+BloodQueen_Difficulty[BloodQueen_Size()][2]),"RAID");
				BloodQueen_Whisper(string.format(BloodQueen_Local[">>BITE"],newicon,BloodQueen_RaidList[y]["name"],group,BLOODQUEEN_WARNTIMER),target);
				BloodQueen_Whisper(string.format(BloodQueen_Local[">>BITE"],newicon,BloodQueen_RaidList[y]["name"],group,BLOODQUEEN_WARNTIMER),target);
				BloodQueen_Whisper(string.format(BloodQueen_Local[">>is going to bite you"],vampicon,target,BLOODQUEEN_WARNTIMER),BloodQueen_RaidList[y]["name"]);
				BloodQueen_RaidList[y]["bitetimer"]=0;
				BloodQueen_RaidList[y]["bite"]=1;
				BloodQueen_RaidList[y]["from"]=target;
				BloodQueen_RaidList[yicon]["raidicon"]=BloodQueen_Icon;
				BloodQueen_RaidList[yicon]["raidicontimer"]=BLOODQUEEN_WARNTIMER+BloodQueen_Difficulty[BloodQueen_Size()][2];
				BloodQueen_SetRaidTarget("raid"..BloodQueen_RaidList[yicon]["raidid"],BloodQueen_Icon);
				BloodQueen_IconCycle();
				if BLOODQUEEN_REPORTASSIGN then
					BloodQueen_Report(string.format(BloodQueen_Local["Report Bite"],vampicon,target,newicon,BloodQueen_RaidList[y]["name"]));
				end
			end
			whisp = 1;
			break;
		end
	end
	if not whisp then
		if not type then
			BloodQueen_Whisper(BloodQueen_Local[">>THERE'S NO ONE LEFT TO BITE GG<<"],target);
		else
			BloodQueen_Bite(x,target,dead,icon,nil);
		end
	end
end

function BloodQueen_IconCycle()
	BloodQueen_Icon=BloodQueen_Icon-1;
	if BloodQueen_Icon == 0 then
		BloodQueen_Icon = 8;
	end
end
function BloodQueen_CheckList(tab,name)
	for z=1,table.getn(tab) do
		if (tab[z]["name"]==name) then
			return false;
		end
	end
	return true;
end
function BloodQueen_Reset()
	if ((BloodQueen_Size() ==25 or BloodQueen_Size()==10) and IsRaidLeader()) then
		BloodQueenResetRaidList();
		i=1;
		for l=1,table.getn(BloodQueen_List) do
			for r=1,GetNumRaidMembers() do
				local name, _, group= GetRaidRosterInfo(r);
				if (name == BloodQueen_List[l][1] and group<=BloodQueen_Difficulty[BloodQueen_Size()][1] and BloodQueen_CheckList(BloodQueen_RaidList,name) )then
					BloodQueen_RaidList[i]["name"]=name;
					BloodQueen_RaidList[i]["raidid"]=r;
					BloodQueen_RaidList[i]["bite"]=0;
					BloodQueen_RaidList[i]["bitetimer"]=0;
					BloodQueen_RaidList[i]["warn"]=0;
					BloodQueen_RaidList[i]["warntimer"]=0;
					BloodQueen_RaidList[i]["from"] = 0
					BloodQueen_RaidList[i]["raidicon"] = false;
					BloodQueen_RaidList[i]["raidicontimer"] = 0;
					BloodQueen_RaidList[i]["mc"] = 0;
					BloodQueen_RaidList[i]["type"] = BloodQueen_List[l][2];
					i=i+1;
				end
			end
		end
		if i<=BloodQueen_Size() then
			for h=1,GetNumRaidMembers() do
				local _, _, group= GetRaidRosterInfo(h);
				if (group<=BloodQueen_Difficulty[BloodQueen_Size()][1])then
					local found;
					for j=1,BloodQueen_Size() do
						if (UnitName("raid"..h)==BloodQueen_RaidList[j]["name"])then
							found = 1;
							break;
						end
					end
					if not found then
						BloodQueen_RaidList[i]["name"]=UnitName("raid"..h);
						BloodQueen_RaidList[i]["raidid"]=h;
						BloodQueen_RaidList[i]["bite"]=0;
						BloodQueen_RaidList[i]["bitetimer"]=0;
						BloodQueen_RaidList[i]["warn"]=0;
						BloodQueen_RaidList[i]["warntimer"]=0;
						BloodQueen_RaidList[i]["from"] = 0
						BloodQueen_RaidList[i]["raidicon"] = false;
						BloodQueen_RaidList[i]["raidicontimer"] = 0;
						BloodQueen_RaidList[i]["mc"] = 0;
						BloodQueen_RaidList[i]["type"] = 0;
						i=i+1;
					end
				end
			end
		end
		if not Recount then
			BLOODQUEEN_RECOUNT = false;
		end
		if not Skada then
			BLOODQUEEN_SKADA = false;
		end
		BloodQueen_Icon = 8;
		BloodQueen_Run = { true, 0 };
		BloodQueen_Print(string.format(BloodQueen_Local["firstbite"],BloodQueen_Size()),2);
	else
		BloodQueen_Run = { false, 0 };
	end
end
function BloodQueen_Test()
	B_Save_OnClick();
	local diff = GetRaidDifficulty();
	if diff == 1 or diff == 3 then
		diff = 10;
	elseif diff == 2 or diff == 4 then
		diff = 25;
	end
	if (diff ==25 or diff==10) then
		BloodQueenResetTestRaidList();
		i=1;
		for l=1,table.getn(BloodQueen_List) do
			for r=1,GetNumRaidMembers() do
				local name, _, group= GetRaidRosterInfo(r);
				if (name == BloodQueen_List[l][1] and group<=BloodQueen_Difficulty[diff][1] and BloodQueen_CheckList(BloodQueen_TestRaidList,name) )then
					BloodQueen_TestRaidList[i]["name"]=UnitName("raid"..r);
					BloodQueen_TestRaidList[i]["raidid"]=r;
					BloodQueen_TestRaidList[i]["bite"]=0;
					BloodQueen_TestRaidList[i]["bitetimer"]=0;
					BloodQueen_TestRaidList[i]["warn"]=0;
					BloodQueen_TestRaidList[i]["warntimer"]=0;
					BloodQueen_TestRaidList[i]["from"] = 0
					BloodQueen_TestRaidList[i]["raidicon"] = false;
					BloodQueen_TestRaidList[i]["raidicontimer"] = 0;
					BloodQueen_TestRaidList[i]["mc"] = 0;
					BloodQueen_TestRaidList[i]["type"] = BloodQueen_List[l][2];
					i=i+1;
				end
			end
		end
		if i<=diff then
			for h=1,GetNumRaidMembers() do
				local _, _, group= GetRaidRosterInfo(h);
				if (group<=BloodQueen_Difficulty[diff][1])then
					local found;
					for j=1,diff do
						if (UnitName("raid"..h)==BloodQueen_TestRaidList[j]["name"])then
							found = 1;
							break;
						end
					end
					if not found then
						BloodQueen_TestRaidList[i]["name"]=UnitName("raid"..h);
						BloodQueen_TestRaidList[i]["raidid"]=h;
						BloodQueen_TestRaidList[i]["bite"]=0;
						BloodQueen_TestRaidList[i]["bitetimer"]=0;
						BloodQueen_TestRaidList[i]["warn"]=0;
						BloodQueen_TestRaidList[i]["warntimer"]=0;
						BloodQueen_TestRaidList[i]["from"] = 0
						BloodQueen_TestRaidList[i]["raidicon"] = false;
						BloodQueen_TestRaidList[i]["raidicontimer"] = 0;
						BloodQueen_TestRaidList[i]["mc"] = 0;
						BloodQueen_TestRaidList[i]["type"] = 0;
						i=i+1;
					end
				end
			end
		end
		BloodQueen_Print(string.format(BloodQueen_Local["man detected"],diff),2);
		BloodQueen_Print(BloodQueen_Local["Priority Setup for this raid:"],2);
		if (BLOODQUEEN_DUAL) then
			x=1;
			BloodQueen_Print(BloodQueen_Local["Melee:"],2);
			for i=1,diff do
				if (BloodQueen_TestRaidList[i]["type"] == 1 and BloodQueen_TestRaidList[i]["name"]~="") then
					BloodQueen_Print(x.." - "..BloodQueen_TestRaidList[i]["name"],1);
					x=x+1;
				end
			end
			BloodQueen_Print(BloodQueen_Local["Ranged:"],2);
			for i=1,diff do
				if (BloodQueen_TestRaidList[i]["type"] == 2 and BloodQueen_TestRaidList[i]["name"]~="") then
					BloodQueen_Print(x.." - "..BloodQueen_TestRaidList[i]["name"],1);
					x=x+1;
				end
			end
			BloodQueen_Print(BloodQueen_Local["Undifferentiated:"],2);
			for i=1,diff do
				if (BloodQueen_TestRaidList[i]["type"] == 0 and BloodQueen_TestRaidList[i]["name"]~="") then
					BloodQueen_Print(x.." - "..BloodQueen_TestRaidList[i]["name"],1);
					x=x+1;
				end
			end
		else
			for i=1,diff do
				if BloodQueen_TestRaidList[i]["name"]~="" then
					BloodQueen_Print(i.." - "..BloodQueen_TestRaidList[i]["name"],1);
				end
			end
		end
	end
end

function BloodQueen_GetTimers(id)
	if id ~= 0 then
		for t=1,10 do
			if (UnitDebuff("raid"..id,t)) then
				local name, _, _, _, _, _, expirationTime= UnitDebuff("raid"..id,t);
				if (name == GetSpellInfo(70867)) then --essence of the blood queen
					return expirationTime-GetTime();
				end
			else
				return 10000;
			end
		end
	end
	return 10000;
end
function BloodQueen_GetMC(id)
	if id ~= 0 then
		for t=1,10 do
			if (UnitDebuff("raid"..id,t)) then
				if ( UnitDebuff("raid"..id,t) == GetSpellInfo(70923)) then
					return true;
				end
			else
				return false;
			end
		end
	end
	return false;
end
function BloodQueen_GetGhostPlayer()
	for t=1,GetNumRaidMembers() do
		if (UnitName("player") == UnitName("raid"..t)) then
			for x=1,10 do
				if (UnitDebuff("raid"..t,x)) then
					local _, _, _, _, _, _, _, _, _, _, spellId = UnitDebuff("raid"..t,x);
					if (spellId == 8326) then -- if ghost, reset mod
						return true;
					end
				else
					return false;
				end
			end
			break;
		end
	end
	return false;
end
function BloodQueen_GetGhostID(id)
	for x=1,10 do
		if (UnitDebuff("raid"..id,x)) then
			local _, _, _, _, _, _, _, _, _, _, spellId = UnitDebuff("raid"..id,x);
			if (spellId == 8326) then -- if ghost, reset mod
				return true;
			end
		else
			return false;
		end
	end
	return false;
end
function BloodQueen_OnUpdate()
	if BloodQueen_Run[1] then
		for x=1,BloodQueen_Size() do
			if (BloodQueen_RaidList[x]["bite"] ~=2) then -- 2 is bited, 1 is in process of being bited, 0 is available
				if (BloodQueen_GetTimers(BloodQueen_RaidList[x]["raidid"]) ~= 10000 ) then
					BloodQueen_RaidList[x]["bite"] = 2; -- marked as bited forever
					if (BloodQueen_RaidList[x]["type"] == 0 and BLOODQUEEN_DUAL) then -- non listed on priorities
						BloodQueen_RaidList[x]["type"] = 2; -- non member from list getting bitted will count as ranged
					end
					BloodQueen_RaidList[x]["bitetimer"] = 0;
					if BLOODQUEEN_REPORTBITE then
						BloodQueen_Report(string.format(BloodQueen_Local["Report Vampire"],BloodQueen_BiteNumber(),BloodQueen_RaidList[x]["name"]));
					end
				end
			elseif (BloodQueen_GetTimers(BloodQueen_RaidList[x]["raidid"])<BLOODQUEEN_WARNTIMER and BloodQueen_RaidList[x]["warn"] == 0 and BloodQueen_RaidList[x]["mc"] == 0) then -- bited not mc, not yet warned
				BloodQueen_RaidList[x]["warntimer"] = 0;
				BloodQueen_RaidList[x]["warn"] = 1;
				BloodQueen_Bite(x,UnitName("raid"..BloodQueen_RaidList[x]["raidid"]),nil,nil,BloodQueen_RaidList[x]["type"]); -- new target to bite
			elseif (BloodQueen_GetMC(BloodQueen_RaidList[x]["raidid"]) and BloodQueen_RaidList[x]["mc"] == 0 )then
				BloodQueen_RaidList[x]["mc"] = 1;
				if BLOODQUEEN_REPORTMC then
					BloodQueen_Report(string.format(BloodQueen_Local["Report MC"],BloodQueen_RaidList[x]["name"]));
				end
			end
			if(BloodQueen_RaidList[x]["bite"]==1)then --process of being bited
				local _, _, group, _, _, _, _, online, isDead = GetRaidRosterInfo(BloodQueen_RaidList[x]["raidid"]);
				if isDead or (not online) then -- died or disconnected meanwhile
					BloodQueen_RaidList[x]["bite"] = 0;
					BloodQueen_SetRaidTarget("raid"..BloodQueen_RaidList[x]["raidid"],0);
					if BLOODQUEEN_REPORTASSIGN then
						BloodQueen_Report(string.format(BloodQueen_Local["target died/disconnected!"],BloodQueen_RaidList[x]["from"]));
					end
					BloodQueen_Bite(x,BloodQueen_RaidList[x]["from"],BloodQueen_RaidList[x]["bitetimer"],BloodQueen_RaidList[x]["raidicon"],BloodQueen_RaidList[x]["type"]); -- new target to bite
					BloodQueen_RaidList[x]["bitetimer"] = 0;
					BloodQueen_RaidList[x]["raidicon"] = false;
					BloodQueen_RaidList[x]["raidicontimer"] = 0;
				else
					BloodQueen_RaidList[x]["bitetimer"]=BloodQueen_RaidList[x]["bitetimer"]+arg1;
					if(BloodQueen_RaidList[x]["bitetimer"]>BLOODQUEEN_WARNTIMER+BloodQueen_Difficulty[BloodQueen_Size()][3])then
						BloodQueen_RaidList[x]["bite"] = 0;
						BloodQueen_RaidList[x]["bitetimer"] = 0;
					end
				end
			end
			if(BloodQueen_RaidList[x]["warn"]==1)then --warned
				BloodQueen_RaidList[x]["warntimer"]=BloodQueen_RaidList[x]["warntimer"]+arg1;
				if(BloodQueen_RaidList[x]["warntimer"]>BLOODQUEEN_WARNTIMER+BloodQueen_Difficulty[BloodQueen_Size()][3])then
					BloodQueen_RaidList[x]["warn"] = 0;
					BloodQueen_RaidList[x]["warntimer"] = 0;
				end
			end
			if(BloodQueen_RaidList[x]["raidicon"])then --iconed
				BloodQueen_RaidList[x]["raidicontimer"]=BloodQueen_RaidList[x]["raidicontimer"]-arg1;
				if(BloodQueen_RaidList[x]["raidicontimer"]<0)then
					BloodQueen_RaidList[x]["raidicon"]=false;
					BloodQueen_RaidList[x]["raidicontimer"] = 0;
					BloodQueen_SetRaidTarget("raid"..BloodQueen_RaidList[x]["raidid"],0);
				end
			end			
		end
		BloodQueen_Run[2]=BloodQueen_Run[2]+arg1;
		if (BloodQueen_Run[2]>350 and (not InCombatLockdown())) or BloodQueen_GetGhostPlayer() then
			BloodQueen_Run[1] = false;
			BloodQueen_Run[2] = 0;
		end
	else
		for i=1,GetNumRaidMembers() do
			if (BloodQueen_GetTimers(i) ~= 10000 ) then
				BloodQueen_Reset();
			end
		end
	end
end

-------
--XML--
-------
function BloodQueen_LoadProfile(id)
	BloodQueen_List=BLOODQUEEN_PROFILE[id]["list"];
	BLOODQUEEN_REPORTCHANNEL=BLOODQUEEN_PROFILE[id]["reportchannel"];
	BLOODQUEEN_ICONSVAMP=BLOODQUEEN_PROFILE[id]["vampicons"];
	BLOODQUEEN_WARNTIMER=BLOODQUEEN_PROFILE[id]["warntimer"];
	BLOODQUEEN_ICONS=BLOODQUEEN_PROFILE[id]["icons"];
	BLOODQUEEN_DUAL=BLOODQUEEN_PROFILE[id]["dual"];
	BLOODQUEEN_DUALTRADE=BLOODQUEEN_PROFILE[id]["dualtrade"];
	BLOODQUEEN_RECOUNT=BLOODQUEEN_PROFILE[id]["recount"];
	BLOODQUEEN_SKADA=BLOODQUEEN_PROFILE[id]["skada"];
	BLOODQUEEN_REPORTMC=BLOODQUEEN_PROFILE[id]["reportmc"];
	BLOODQUEEN_REPORTBITE=BLOODQUEEN_PROFILE[id]["reportbite"];
	BLOODQUEEN_REPORTASSIGN=BLOODQUEEN_PROFILE[id]["reportassign"];
	BLOODQUEEN_WHISPASSIGN=BLOODQUEEN_PROFILE[id]["wshipassign"];
end
function BloodQueen_SaveProfile(id)
	BLOODQUEEN_PROFILE[id]["list"]=BloodQueen_List;
	BLOODQUEEN_PROFILE[id]["reportchannel"]=BLOODQUEEN_REPORTCHANNEL;
	BLOODQUEEN_PROFILE[id]["vampicons"]=BLOODQUEEN_ICONSVAMP;
	BLOODQUEEN_PROFILE[id]["warntimer"]=BLOODQUEEN_WARNTIMER;
	BLOODQUEEN_PROFILE[id]["icons"]=BLOODQUEEN_ICONS;
	BLOODQUEEN_PROFILE[id]["dual"]=BLOODQUEEN_DUAL;
	BLOODQUEEN_PROFILE[id]["dualtrade"]=BLOODQUEEN_DUALTRADE;
	BLOODQUEEN_PROFILE[id]["recount"]=BLOODQUEEN_RECOUNT;
	BLOODQUEEN_PROFILE[id]["skada"]=BLOODQUEEN_SKADA;
	BLOODQUEEN_PROFILE[id]["reportmc"]=BLOODQUEEN_REPORTMC;
	BLOODQUEEN_PROFILE[id]["reportbite"]=BLOODQUEEN_REPORTBITE;
	BLOODQUEEN_PROFILE[id]["reportassign"]=BLOODQUEEN_REPORTASSIGN;
	BLOODQUEEN_PROFILE[id]["wshipassign"]=BLOODQUEEN_WHISPASSIGN;
end
function BloodQueen_NewProfile(name)
	if name then
		local found;
		for i=1,table.getn(BLOODQUEEN_PROFILE) do
			if BLOODQUEEN_PROFILE[i]["name"]==name then
				found = 1;
			end
		end
		if not found then
			tinsert(BLOODQUEEN_PROFILE, {
				["name"] = name,
				["list"] = {},
				["reportchannel"] = "RAID_WARNING",
				["warntimer"] = 5,
				["icons"] = true,
				["vampicons"] = false,
				["dual"] = false,
				["dualtrade"] = true,
				["recount"] = false,
				["skada"] = false,
				["reportmc"] = true,
				["reportbite"] = true,
				["reportassign"] = false,
				["wshipassign"] = true,			
			});
			BLOODQUEEN_PROFILE[0]=table.getn(BLOODQUEEN_PROFILE);
			UIDropDownMenu_Initialize(BQ_ProfileBox, B_ProfileBox);
			B_ProfileBox()
			BloodQueen_OnShow();
		end
	end
end
function BloodQueen_DeleteProfile()
	if(BLOODQUEEN_PROFILE[0]~=0 and BLOODQUEEN_PROFILE[0]~=1) then
		tremove(BLOODQUEEN_PROFILE,BLOODQUEEN_PROFILE[0]);
		BLOODQUEEN_PROFILE[0]=table.getn(BLOODQUEEN_PROFILE);
		UIDropDownMenu_Initialize(BQ_ProfileBox, B_ProfileBox);
		B_ProfileBox()
		BloodQueen_OnShow();
	end
end
function BloodQueen_OnShow()
	BloodQueen_LoadProfile(BLOODQUEEN_PROFILE[0]);
	BQ_ProfileInput:SetText(BLOODQUEEN_PROFILE[BLOODQUEEN_PROFILE[0]]["name"]);
	BloodQueenOP_PrioType1:Hide();
	BloodQueenOP_PrioType2:Hide();
	BloodQueenOP_Prio:Hide();
	BQ_EditTitle:Hide();
	BQ_EditTitleType1:Hide();
	BQ_EditTitleType2:Hide();
	BQ_Recount:Hide();
	BQ_Skada:Hide();
	BQ_PopulateTables();
	BQ_Trade:SetChecked(BLOODQUEEN_DUALTRADE);
	if BLOODQUEEN_DUAL then
		BloodQueenOP_PrioType1:Show();
		BloodQueenOP_PrioType2:Show();
		BQ_EditTitleType1:Show();
		BQ_EditTitleType2:Show();
		BQ_Trade:Show();
	else
		BQ_EditTitle:Show();
		BloodQueenOP_Prio:Show();
		BQ_Trade:Hide();	
	end 

	if (not Recount) then
		BLOODQUEEN_RECOUNT = false;
	else
		BQ_Recount:Show();
	end
	if (not Skada) then
		BLOODQUEEN_SKADA = false;
	else
		BQ_Skada:Show();
	end
	if (BLOODQUEEN_RECOUNT or BLOODQUEEN_SKADA) and (not BLOODQUEEN_DUAL) then
		BloodQueenOP_B_Raid:Disable();
		BloodQueenOP_B_Save:Disable();
		BloodQueenOP_B_Guild:Disable();
		BloodQueenOP_B_Revert:Disable();
		BloodQueenOP_B_Test:Disable();
		if BLOODQUEEN_RECOUNT then
			BloodQueenOP_PrioEdit:SetText(string.format(BloodQueen_Local["PrioListDamageMeter"],"Recount"))
			--BloodQueenOP_PrioEditType1:SetText("Recount Damage Meter\nBased Priority List");
			--BloodQueenOP_PrioEditType2:SetText("Recount Damage Meter\nBased Priority List");
		else
			BloodQueenOP_PrioEdit:SetText(string.format(BloodQueen_Local["PrioListDamageMeter"],"Skada"))
			--BloodQueenOP_PrioEditType1:SetText("Skada Damage Meter\nBased Priority List");
			--BloodQueenOP_PrioEditType2:SetText("Skada Damage Meter\nBased Priority List");
		end
		BQ_Mode:SetText(BloodQueen_Local["Mode Damage Meter"]);
	elseif (BLOODQUEEN_RECOUNT or BLOODQUEEN_SKADA) and BLOODQUEEN_DUAL then
		BloodQueenOP_B_Raid:Enable();
		BloodQueenOP_B_Save:Enable();
		BloodQueenOP_B_Guild:Enable();
		BloodQueenOP_B_Revert:Enable();
		if BLOODQUEEN_DUALTRADE then
			BQ_Mode:SetText(BloodQueen_Local["Mode Dual Prio Damage Meter Trade"]);
		else
			BQ_Mode:SetText(BloodQueen_Local["Mode Dual Prio Damage Meter"]);
		end
	else
		BloodQueenOP_B_Raid:Enable();
		BloodQueenOP_B_Save:Enable();
		BloodQueenOP_B_Guild:Enable();
		BloodQueenOP_B_Revert:Enable();
		BloodQueenOP_B_Test:Enable();
		if BLOODQUEEN_DUAL then
			if BLOODQUEEN_DUALTRADE then
				BQ_Mode:SetText(BloodQueen_Local["Mode Dual Prio Trade"]);
			else
				BQ_Mode:SetText(BloodQueen_Local["Mode Dual Prio"]);
			end
		else
			BQ_Mode:SetText(BloodQueen_Local["Mode Normal Prio"]);
		end
	end
	BQ_Recount:SetChecked(BLOODQUEEN_RECOUNT);
	BQ_Skada:SetChecked(BLOODQUEEN_SKADA);
	getglobal("BloodQueenOP_B_SliderTimerHigh"):SetText("40");
	getglobal("BloodQueenOP_B_SliderTimerLow"):SetText("1");
	BloodQueenOP_B_SliderTimer:SetMinMaxValues( 1, 40 ) ;
	BloodQueenOP_B_SliderTimer:SetValueStep( 1 ) ;
	BloodQueenOP_B_SliderTimer:SetValue(BLOODQUEEN_WARNTIMER);
	BQ_Icons:SetChecked(BLOODQUEEN_ICONS);
	BQ_IconsVamp:SetChecked(BLOODQUEEN_ICONSVAMP);
	BQ_Dual:SetChecked(BLOODQUEEN_DUAL);
	BQ_ReportMC:SetChecked(BLOODQUEEN_REPORTMC);
	BQ_ReportAssign:SetChecked(BLOODQUEEN_REPORTASSIGN);
	BQ_ReportBite:SetChecked(BLOODQUEEN_REPORTBITE);
	BQ_WhispBite:SetChecked(BLOODQUEEN_WHISPASSIGN);
	UIDropDownMenu_Initialize(BQ_ReportBox, B_ReportBox);
	UIDropDownMenu_SetSelectedValue( BQ_ReportBox, BLOODQUEEN_REPORTCHANNEL );
end

function B_SliderTimer()
	BLOODQUEEN_WARNTIMER = this:GetValue()
	local text = string.format(BloodQueen_Local["Timer Slider"],BLOODQUEEN_WARNTIMER);
	BloodQueenOP_B_SliderTimerText:SetText(text);
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
end
function B_Revert_OnClick()
	BloodQueen_OnShow();
end
function BQ_PopulateTables()
	local text1 = "\n";
	local text2 = "\n";
	local premier1 = 1;
	local premier2 = 1;
	for i=1,table.getn(BloodQueen_List) do
		if BloodQueen_List[i] then
			if ( BloodQueen_List[i][2] == 2) then
				if premier2 == 1 then
					text2= BloodQueen_List[i][1];
					premier2 = 0;
				else
					text2= text2.."\n"..BloodQueen_List[i][1];
				end
			else
				if premier1 == 1 then
					text1= BloodQueen_List[i][1];
					premier1 = 0;
				else
					text1= text1.."\n"..BloodQueen_List[i][1];
				end
			end
		end
	end
	BloodQueenOP_PrioEditType1:SetText(text1);
	BloodQueenOP_PrioEditType2:SetText(text2);
		
	local text = " ";
	local premier = 1;
	for i=1,table.getn(BloodQueen_List) do
		if BloodQueen_List[i] then
			if premier == 1 then
				text= BloodQueen_List[i][1];
				premier = 0;
			else
				text= text.."\n"..BloodQueen_List[i][1];
			end
		end
	end
	BloodQueenOP_PrioEdit:SetText(text);
end
function B_ReportBox()
	local info = {};
	info.func = BQ_ReportBoxOnClick;
	info.text = BloodQueen_Local["Raid Warning"];
	info.value = "RAID_WARNING" ;
	UIDropDownMenu_AddButton(info);
	info.text = BloodQueen_Local["Raid Chat"];
	info.value = "RAID" ;
	UIDropDownMenu_AddButton(info);
	info.text = BloodQueen_Local["Officer Chat"];
	info.value = "OFFICER" ;
	UIDropDownMenu_AddButton(info);	
	UIDropDownMenu_SetSelectedValue( BQ_ReportBox, BLOODQUEEN_REPORTCHANNEL ) ;
end

function B_ReportBoxInit()
	UIDropDownMenu_Initialize(this, B_ReportBox);
end
function BQ_ReportBoxOnClick()
	UIDropDownMenu_SetSelectedValue(BQ_ReportBox, this.value);
	BLOODQUEEN_REPORTCHANNEL = this.value ;
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
end
function B_ProfileBox()
	for i=1,table.getn(BLOODQUEEN_PROFILE) do
		local info = {};
		info.func = BQ_ProfileBoxOnClick;
		info.text = BLOODQUEEN_PROFILE[i]["name"];
		info.value = i;
		UIDropDownMenu_AddButton(info);	
	end
	UIDropDownMenu_SetSelectedValue( BQ_ProfileBox, BLOODQUEEN_PROFILE[0] ) ;
end

function B_ProfileBoxInit()
	UIDropDownMenu_Initialize(this, B_ProfileBox);
end
function BQ_ProfileBoxOnClick()
	UIDropDownMenu_SetSelectedValue(BQ_ProfileBox, this.value);
	BLOODQUEEN_PROFILE[0] = this.value ;
	BloodQueen_OnShow();
end

function BQ_DualToggle()
	if BLOODQUEEN_DUAL then
		BLOODQUEEN_DUAL = false;
	else
		BLOODQUEEN_DUAL = true;
	end
	if (not BLOODQUEEN_RECOUNT) and (not BLOODQUEEN_SKADA) then
		B_Save_OnClick(1);
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BloodQueen_OnShow();
end
function BQ_RecountPrio()
	if BLOODQUEEN_RECOUNT then
		BLOODQUEEN_RECOUNT = false;
	else
		BLOODQUEEN_RECOUNT = true;
		BLOODQUEEN_SKADA = false;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BloodQueen_OnShow();
end
function BQ_SkadaPrio()
	if BLOODQUEEN_SKADA then
		BLOODQUEEN_SKADA = false;
	else
		BLOODQUEEN_SKADA = true;
		BLOODQUEEN_RECOUNT = false;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BloodQueen_OnShow();
end
function BQ_DualTrade()
	if BLOODQUEEN_DUALTRADE then
		BLOODQUEEN_DUALTRADE = false;
	else
		BLOODQUEEN_DUALTRADE = true;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BloodQueen_OnShow();
	
end
function BQ_ReportMCToggle()
	if BLOODQUEEN_REPORTMC then
		BLOODQUEEN_REPORTMC = false;
	else
		BLOODQUEEN_REPORTMC = true;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BQ_ReportMC:SetChecked(BLOODQUEEN_REPORTMC);
end	
function BQ_ReportAssignToggle()
	if BLOODQUEEN_REPORTASSIGN then
		BLOODQUEEN_REPORTASSIGN = false;
		if not BLOODQUEEN_WHISPASSIGN then
			BLOODQUEEN_WHISPASSIGN = true;
		end
	else
		BLOODQUEEN_REPORTASSIGN = true;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BQ_ReportAssign:SetChecked(BLOODQUEEN_REPORTASSIGN);
	BQ_WhispBite:SetChecked(BLOODQUEEN_WHISPASSIGN);
end	
function BQ_WhispBiteToggle()
	if BLOODQUEEN_WHISPASSIGN then
		BLOODQUEEN_WHISPASSIGN = false;
		if not BLOODQUEEN_REPORTASSIGN then
			BLOODQUEEN_REPORTASSIGN = true;
		end
	else
		BLOODQUEEN_WHISPASSIGN = true;
	end
	BQ_WhispBite:SetChecked(BLOODQUEEN_WHISPASSIGN);
	BQ_ReportAssign:SetChecked(BLOODQUEEN_REPORTASSIGN);
end	
function BQ_ReportBiteToggle()
	if BLOODQUEEN_REPORTBITE then
		BLOODQUEEN_REPORTBITE = false;
	else
		BLOODQUEEN_REPORTBITE = true;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
	BQ_ReportBite:SetChecked(BLOODQUEEN_REPORTBITE);
end	
function B_Guild_OnClick()
	local text;
	local premier = 1;
	local offline = GetGuildRosterShowOffline();
	local selection = GetGuildRosterSelection();
	SetGuildRosterShowOffline(1);
	SetGuildRosterSelection(0);
	GetGuildRosterInfo(0);
	for i=1, GetNumGuildMembers() do
		local name, rank, rankIndex, level = GetGuildRosterInfo(i);
		if premier == 1 then
			text= name;
			premier = 0;
		else
			text= text.."\n"..name;
		end
	end
	SetGuildRosterShowOffline(offline);
	SetGuildRosterSelection(selection);
	if text then
		if BLOODQUEEN_DUAL then
			BloodQueenOP_PrioEditType1:SetText(text);
		else
			BloodQueenOP_PrioEdit:SetText(text);
		end
	end
end
function B_Raid_OnClick()
	if BLOODQUEEN_DUAL then
		local text;
		local premier1 = 1;
		local premier2 = 1;
		for i=1,GetNumRaidMembers() do
			local name = GetRaidRosterInfo(i);
			local _, class = UnitClass("raid"..i);
			if class == "WARRIOR" or class == "ROGUE" or class == "DEATHKNIGHT" then
				if premier1 == 1 then
					text1= name;
					premier1 = 0;
				else
					text1= text1.."\n"..name;
				end
			elseif (class == "PALADIN" or class == "SHAMAN" or class == "DRUID") and UnitManaMax("raid"..i)<16000 and UnitManaMax("raid"..i)>1 then
				if premier1 == 1 then
					text1= name;
					premier1 = 0;
				else
					text1= text1.."\n"..name;
				end
			else	
				if premier2 == 1 then
					text2= name;
					premier2 = 0;
				else
					text2= text2.."\n"..name;
				end
			end
		end
		if text1 then
			BloodQueenOP_PrioEditType1:SetText(text1);
			
		end
		if text2 then
			BloodQueenOP_PrioEditType2:SetText(text2);
			
		end
	else
		local text;
		local premier = 1;
		for i=1,GetNumRaidMembers() do
			local name = GetRaidRosterInfo(i);
			local _, class = UnitClass("raid"..i);
			if premier == 1 then
				text= name;
				premier = 0;
			else
				text= text.."\n"..name;
			end
		end
		if text then
			BloodQueenOP_PrioEdit:SetText(text);
		end	
	end
end
function B_Save_OnClick(reportme)
	BloodQueen_List={ };
	if BLOODQUEEN_DUAL then
		local tbl1 =  BloodQueen_split (string.gsub(BloodQueenOP_PrioEditType1:GetText(),"\n"," ")," ");
		local tbl2 =  BloodQueen_split (string.gsub(BloodQueenOP_PrioEditType2:GetText(),"\n"," ")," ");
		for i=1,table.getn(tbl1) do
			tinsert(BloodQueen_List, { tbl1[i], 1 });
		end
		for i=1,table.getn(tbl2) do
			tinsert(BloodQueen_List, { tbl2[i], 2 });
		end
	else
		local tbl =  BloodQueen_split (string.gsub(BloodQueenOP_PrioEdit:GetText(),"\n"," ")," ");
		for i=1,table.getn(tbl) do
			tinsert(BloodQueen_List, { tbl[i] , 0});
		end
	end
	BloodQueen_ListFix();
	BQ_PopulateTables();
	if not reportme then
		BloodQueen_Print(BloodQueen_Local["New priority list saved"],2);
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
end

function BloodQueen_ListFix()
	i=1;
	while(i<=table.getn(BloodQueen_List)) do
		if (BloodQueen_List[i][1] == "") then
			tremove(BloodQueen_List,i);
		else
			i=i+1;
		end
	end
end
function BQ_IconsToggle()
	if( BQ_Icons:GetChecked() == nil ) then
		BLOODQUEEN_ICONS = false ;
	else
		BLOODQUEEN_ICONS = true ;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
end
function BQ_IconsVampToggle()
	if( BQ_IconsVamp:GetChecked() == nil ) then
		BLOODQUEEN_ICONSVAMP = false ;
	else
		BLOODQUEEN_ICONSVAMP = true ;
	end
	BloodQueen_SaveProfile(BLOODQUEEN_PROFILE[0]);
end
function BloodQueen_split (self,delimiter)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( self, delimiter, from  )
	while delim_from do
		table.insert( result, string.sub( self, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( self, delimiter, from  )
	end
	table.insert( result, string.sub( self, from  ) )
	return result
end
function BloodQueen_GetWords(str,nr)
	local ret = {};
	local pos=0;
	while(true) do
		local word;
		_,pos,word=string.find(str, "^ *([^%s]+) *", pos+1);
		if(not word) then
			if (nr) then
				return ret[nr];
			else
				return ret;
			end
		end
		table.insert(ret, word);
	end
end
function BloodQueen_Cmd()
	if not InCombatLockdown() then
		BloodQueenOP:Show();
	end
end

function BQ_Panel()
	local panel = CreateFrame("Frame")
	panel.name = "BloodQueen";

	local button = CreateFrame('Button', nil, panel, 'UIPanelButtonTemplate')
	button:SetText("Configure BloodQueen")
	button:SetWidth(155)
	button:SetHeight(25)	
	button:SetPoint("TOPLEFT", 15, -15)
	button:SetScript("OnClick",function() 	
		InterfaceOptionsFrame.lastFrame = nil;
		HideUIPanel(InterfaceOptionsFrame);
		BloodQueen_Cmd();
		end)
	InterfaceOptions_AddCategory(panel)
	--Localization
	BQ_Title:SetText(BloodQueen_Local["BloodQueen"].." "..BloodQueen_Version);
	BQ_TitleMode:SetText(BloodQueen_Local["Mode selection:"]);
	BQ_EditTitle:SetText(BloodQueen_Local["Priority List:"]);
	BQ_EditTitleType1:SetText(BloodQueen_Local["Melee List:"]);
	BQ_EditTitleType2:SetText(BloodQueen_Local["Ranged List:"]);
	BloodQueenOP_B_RaidText:SetText(BloodQueen_Local["Retrieve List from Raid"]);
	BloodQueenOP_B_Revert:SetText(BloodQueen_Local["Revert to last save"]);
	BloodQueenOP_B_Test:SetText(BloodQueen_Local["Save List current raid prio"]);
	BloodQueenOP_B_Save:SetText(BloodQueen_Local["Save new Priority"]);
	BloodQueenOP_B_Guild:SetText(BloodQueen_Local["Retrieve List from Guild"]);
	
	BQ_ReportBoxT:SetTextColor(1,1,1);
	BQ_ReportBoxT:SetText(BloodQueen_Local["Report to"]);
	
	BQ_ProfileBoxT:SetTextColor(1,1,1);
	BQ_ProfileBoxT:SetText(BloodQueen_Local["Profile"]);
	BQ_ProfileBoxNew:SetText(BloodQueen_Local["New"]);
	
	
	BQ_IconsText:SetTextColor(1,1,1);
	BQ_IconsText:SetText(BloodQueen_Local["Set Raid Icons"]);
	BQ_IconsVampText:SetTextColor(1,1,1);
	BQ_IconsVampText:SetText(BloodQueen_Local["Vampire"]);
	BQ_WhispBiteText:SetTextColor(1,1,1);
	BQ_WhispBiteText:SetText(BloodQueen_Local["Whisper Assigns"]);
	BQ_ReportBiteText:SetTextColor(1,1,1);
	BQ_ReportBiteText:SetText(BloodQueen_Local["Report Vampires"]);
	BQ_ReportAssignText:SetTextColor(1,1,1);
	BQ_ReportAssignText:SetText(BloodQueen_Local["Report Assigns"]);
	BQ_ReportMCText:SetTextColor(1,1,1);
	BQ_ReportMCText:SetText(BloodQueen_Local["Report MCs"]);
	BQ_DualText:SetTextColor(1,1,1);
	BQ_DualText:SetText(BloodQueen_Local["Dual Prio"]);
	BQ_TradeText:SetTextColor(1,1,1);
	BQ_TradeText:SetText(BloodQueen_Local["Reverse first Bite"]);
	BQ_RecountText:SetTextColor(1,1,1);
	BQ_RecountText:SetText(BloodQueen_Local["Recount Prio"]);
	BQ_SkadaText:SetTextColor(1,1,1);
	BQ_SkadaText:SetText(BloodQueen_Local["Skada Prio"]);
	BQ_Author:SetText( "Mïnd <Corruption>\nwww.corruption-guild.org" ) ;
	BQ_Author:SetTextColor( 0,1,0 ) ;
end
function BloodQueen_OnEvent()
	if (event=="RAID_ROSTER_UPDATE" and BloodQueen_Run[1]) then --update raid ids if change during fight
		--BloodQueen_Print(BloodQueen_Local["Raid Roster changed, updating."],2);
		for x=1,BloodQueen_Size() do
			if (UnitName("raid"..BloodQueen_RaidList[x]["raidid"]) == BloodQueen_RaidList[x]["name"] or BloodQueen_RaidList[x]["name"]=="")then
				--good
			else
				local found;
				for y=1,GetNumRaidMembers() do
					local name = GetRaidRosterInfo(y);
					if name == BloodQueen_RaidList[x]["name"] then
						--print(BloodQueen_RaidList[x]["name"].." changed from "..BloodQueen_RaidList[x]["raidid"].." to "..y);
						BloodQueen_RaidList[x]["raidid"] = y; --fix raidid
						found = 1;
					end
				end
				if not found then
					--print(BloodQueen_RaidList[x]["name"].." left raid");
					BloodQueen_RaidList[x]["name"]="";
					BloodQueen_RaidList[x]["raidid"]=0;
					BloodQueen_RaidList[x]["bite"]=-1;
					BloodQueen_RaidList[x]["bitetimer"]=0;
					BloodQueen_RaidList[x]["warn"]=0;
					BloodQueen_RaidList[x]["warntimer"]=0;
					BloodQueen_RaidList[x]["from"] = 0
					BloodQueen_RaidList[x]["raidicon"] = false;
					BloodQueen_RaidList[x]["raidicontimer"] = 0;
					BloodQueen_RaidList[x]["mc"] = 1;
					
				end
			end
		
		end
	end
end
	

local BloodQueen_ScriptFrame = CreateFrame("Frame")
BloodQueen_ScriptFrame:SetScript("OnUpdate", BloodQueen_OnUpdate)
BloodQueen_ScriptFrame:SetScript("OnEvent", BloodQueen_OnEvent)
BloodQueen_ScriptFrame:RegisterEvent( "CHAT_MSG_WHISPER_INFORM");
BloodQueen_ScriptFrame:RegisterEvent( "RAID_ROSTER_UPDATE");
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", BloodQueenFilterWhisper)
SlashCmdList[ "BLOODQUEEN" ] = BloodQueen_Cmd;
SLASH_BLOODQUEEN1 = "/bq" ;
SLASH_BLOODQUEEN2 = "/bloodqueen" ;
DEFAULT_CHAT_FRAME:AddMessage(string.format(BloodQueen_Local["Load"],BloodQueen_Version),1,1,0)