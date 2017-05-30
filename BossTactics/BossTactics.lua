--[[
BossTactics by Sorontur
Version 0.1
Homepage www.bosstactics.net
License: LGPL v2.1
]]

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132

BossTactics = LibStub("AceAddon-3.0"):NewAddon("BossTactics","AceConsole-3.0", "AceEvent-3.0","AceComm-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BossTactics")
local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();

-- menu functions
local options = {
    name = "BossTactics",
    handler = BossTactics,
    type = "group",
    args = {
        options = {
            type = "execute",
            name = "options Tab",
            desc = L["menu options tab"],
            func = "showOptions",
        },
        show = {
            type = "execute",
            name = "main frame",
            desc = L["menu main frame"],
            func = "openBossFrame",
        },
        hide = {
            type = "execute",
            name = "main frame",
            desc = L["menu main frame hide"],
            func = "HandleCloseMainWindow",
        },
        info = {
            type = "execute",
            name = "Info",
            desc = L["menu info"],
            func = "ShowInfoFrame",
        },
        minimap = {
            type = "toggle",
            name = "minimap",
            desc = L["menu minimap"],
            get = "IsMinimap",
            set = "ToggleMinimap"
        },
        debug = {
            type = "toggle",
            name = "debug",
            desc = L["menu debug"],
            get = "IsDebug",
            set = "ToggleDebug"
        },
        sessionAbort = {
            type = "execute",
            name = "sessionAbort",
            desc = L["menu SessionAbort"],
            func = function()  if(BossTactics:IsRaidLeader()) then
            	if(BossTactics:IsSessionLeader())then
            		BossTactics:EndSession()
            	else
            		BossTactics:EndUserSession()
            		BossTactics:BT_SendDataMessage("{LSEND}")
            	end
            	else BossTactics:Print(L["SessAbortPermitted"])
              end end,
        },
    },
}

--db profile defaults
local defaults = {
    profile = {
        settingsVersion = 1,
        anzMsgRLChat = 50,
        minimapShow = true,
        minimapX = -28,
        minimapY = -78,
    },
}


------------------------------------------------------
-- Addon events
------------------------------------------------------

function BossTactics:OnInitialize()

    -- Called when the addon is loaded

     --set variables
	self.settingsVersion = 1
	self.version = "1.0"
	self.versionChecked = false
	self.modules = {}
	self.debug = false
	self.player = UnitName("player")
	self.currAddon = "BC"
	self.buttonTypes = {
		["rangedDPS"] = {["name"] = "f",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-blue",
			["text"] = L["ranged DPS"],
			["x"] = 10,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			},
		["melee"] = {["name"] = "n",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-yellow",
			["text"] = L["melee"],
			["x"] = 55,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			 },
		["healer"] = {["name"] = "h",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-green",
			["text"] = L["healer"],
			["x"] = 100,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			},
		["tank"] = {["name"] = "t",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-white",
			["text"] = L["tank"],
			["x"] = 145,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32
			 },
		["boss"] = {["name"] = "b",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-red",
			["text"] = L["boss"],
			["x"] = 190,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			 },
		["boss2"] = {["name"] = "x",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-violet",
			["text"] = L["boss"],
			["x"] = 235,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			 },
		["boss3"] = {["name"] = "y",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-pink",
			["text"] = L["boss"],
			["x"] = 280,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			 },
		["boss4"] = {["name"] = "z",
			["button"] = "Interface\\AddOns\\BossTactics\\Textures\\player-orange",
			["text"] = L["boss"],
			["x"] = 325,
			["y"] = -650,
			["width"] = 32,
			["height"] = 32,
			 },
	}
	self.currInstanceId = "EMPTY"
	self.currImgId = -1
	self.currModuleId = -1
	self.currBossId = -1
	self.instanceTable = {}
	self.dewdropBosses =  AceLibrary("Dewdrop-2.0")
	self.dewdropInstances = AceLibrary("Dewdrop-2.0")
	self.dewdropAddon = AceLibrary("Dewdrop-2.0")
	self.dewdropModes = AceLibrary("Dewdrop-2.0")
	self.isSession = false
	self.currSessionBtnId = -1
	self.SESSIONID = 100
	self.currBtnId = -1
	self.dataChanged = false
	self.isSessionLeader = false
	self.isOUS = 0
	self.incopatible = false
	self.dataChangedArray = {}
	self.isNotWatching = false
	self.currInstanceMemberMax = -1
	self.currInstanceMode = "NONE"

    --initialize database
    self.db = LibStub("AceDB-3.0"):New("BossTacticsDB", defaults, "Default")

	--add chat commands
	LibStub("AceConfig-3.0"):RegisterOptionsTable("BossTactics", options, {L["bt"],L["BossTactics"]})
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("BossTactics", "BossTactics")

	--set up communication
	self:ConfigComm()

	--register instances
	self:RegisterInstances()
	if(self:IsMinimap())then
		self:CreateMinimapButton()
	end
	--self:Print(self.instanceTable[1].." "..self.instanceTable[2])
end

function BossTactics:OnEnable()
    -- Called when the addon is enabled
    self:RegisterEvent("RAID_INSTANCE_WELCOME")
	--self:RegisterEvent("PARTY_MEMBERS_CHANGED")
	--self:RegisterEvent("PARTY_LEADER_CHANGED")
	self:RegisterEvent("RAID_ROSTER_UPDATE")
end

function BossTactics:OnDisable()
    -- Called when the addon is disabled
end


------------------------------------------
-- EVENT handler
------------------------------------------

function BossTactics:RAID_INSTANCE_WELCOME()
	--event for future panning :)
	local zone = GetRealZoneText();
end

--function BossTactics:PARTY_MEMBERS_CHANGED()
--	self:Print("Partymemberschanged")
--end

---function BossTactics:PARTY_LEADER_CHANGED()
--	self:Print("leaderchange")
--	if(self:IsRaidLeader())then
--		self:BecomeRaidLeader()
---	else
--		self:LooseRaidLeader()
--	end
--end

function BossTactics:RAID_ROSTER_UPDATE()
	local anzMembers = GetNumRaidMembers()

	for i=1, anzMembers, 1 do
		local name, rank, subgroup, level, class,
				fileName,zone, online, isDead, role, isML = GetRaidRosterInfo(i)
		if(name and name == self.player and subgroup <= self.currInstanceMemberMax/5)then
			self.isNotWatching = false
			break;
		end
	end
	if(self:IsRaidLeader())then
		self:BecomeRaidLeader()
		self:CompareRaid()
	else
		self:LooseRaidLeader()
	end
	if(not self.versionChecked) then
		self:VersionCheck()
	end
end


------------------------------------------------------
--compares the raid with the version list
------------------------------------------------------
function BossTactics:CompareRaid()
	if(self.MainWindow)then
		local anzMembers = GetNumRaidMembers()
		local i =0
		local versionframe = self.MainWindow.RightPane.versionlistFrame
		local textarray = versionframe.TextArray
		for i=1, anzMembers, 1 do
			local name, rank, subgroup, level, class,
				fileName,zone, online, isDead, role, isML = GetRaidRosterInfo(i)
			local found = false
			for index,v in ipairs(textarray) do
				local front = strsplit(":",v:GetText())
				if(front == name) then
					found = true
					break
				end
			end
			if(not found)then
				local lastElement = true
				local chatfontstring = versionframe:CreateFontString(nil, "OVERLAY","GameFontNormal")
				if(#textarray == 0)then
					textarray[1] = chatfontstring
				else
					for index,v in ipairs(textarray) do
						local sub = strsub(v:GetText(),1,strfind(v:GetText(),":")-1)
						if(sub >= name) then
							tinsert(textarray,index,chatfontstring)
							lastElement = false
							break
						end
					end
					if(lastElement)then
						textarray[#textarray+1] = chatfontstring
					end
				end
				chatfontstring:SetText(name..": |cff707400"..L["No addon found"].."|r")
				chatfontstring:SetWidth(versionframe:GetWidth()-20)
				chatfontstring:SetJustifyH("LEFT");
				chatfontstring:SetJustifyV("BOTTOM");
				chatfontstring:SetTextColor(1,1,1)
				self:ScrollString(versionframe,textarray,true)
			end
		end
		--if someone left the raid
		if(#textarray > anzMembers)then
			for index,v in ipairs(textarray) do
				local found = false
				for i=1, anzMembers, 1 do
					local name, rank, subgroup, level, class,
						fileName,zone, online, isDead, role, isML = GetRaidRosterInfo(i)
					if(strfind(v:GetText(),name,1)) then
						found = true
						break
					end
				end
				if(not found)then
					v:Hide()
					tremove(textarray,index)
					self:ScrollString(versionframe,textarray,true)
				end
			end
		end
	end
end;

------------------------------------------------------------------
--checks if somone in the raid has a new version
------------------------------------------------------------------

function BossTactics:VersionCheck()

	if(UnitInRaid(self.player))then
		self:BT_SendDataMessage("{VER:"..self.version.."}")
		self.versionChecked = true
	end

end;

----------------------------------------------------------------------
--checks in the global array if the current image was changed before
----------------------------------------------------------------------

function BossTactics:CheckImgDataChanged()

	for i,v in ipairs(self.dataChangedArray) do
		if(v.instId == self.currInstanceId and
            v.imgId == self.currImgId and v.bossId == self.currBossId) then
            return true
        end
    end
	return false
end;

---------------------------------------------------------
-- returns the text from a button type
-- parameter: buttonType: string of one char
---------------------------------------------------------
function BossTactics:GetTextFromButtonType(buttonType)

	if(buttonType == nil or strlen(buttonType) ~= 1)then
	 return ""
	end

	if(buttonType == self.buttonTypes.melee.name)then
		return self.buttonTypes.melee.text
	elseif(buttonType == self.buttonTypes.rangedDPS.name)then
		return self.buttonTypes.rangedDPS.text
	elseif(buttonType == self.buttonTypes.healer.name)then
		return self.buttonTypes.healer.text
	elseif(buttonType == self.buttonTypes.tank.name)then
		return self.buttonTypes.tank.text
	elseif(buttonType == self.buttonTypes.boss.name)then
		return self.buttonTypes.boss.text
	elseif(buttonType == self.buttonTypes.boss2.name)then
		return self.buttonTypes.boss2.text
	elseif(buttonType == self.buttonTypes.boss3.name)then
		return self.buttonTypes.boss3.text
	elseif(buttonType == self.buttonTypes.boss4.name)then
		return self.buttonTypes.boss4.text
	end
	return ""
end;

---------------------------------------------------------
-- returns the type-object from a button type

---------------------------------------------------------
function BossTactics:GetTypeFromButtonType(buttonType)

	if(buttonType == nil or strlen(buttonType) ~= 1)then
	 return nil
	end

	if(buttonType == self.buttonTypes.melee.name)then
		return self.buttonTypes.melee
	elseif(buttonType == self.buttonTypes.rangedDPS.name)then
		return self.buttonTypes.rangedDPS
	elseif(buttonType == self.buttonTypes.healer.name)then
		return self.buttonTypes.healer
	elseif(buttonType == self.buttonTypes.tank.name)then
		return self.buttonTypes.tank
	elseif(buttonType == self.buttonTypes.boss.name)then
		return self.buttonTypes.boss
	elseif(buttonType == self.buttonTypes.boss2.name)then
		return self.buttonTypes.boss2
	elseif(buttonType == self.buttonTypes.boss3.name)then
		return self.buttonTypes.boss3
	elseif(buttonType == self.buttonTypes.boss4.name)then
		return self.buttonTypes.boss4
	end
	return nil
end;



-----------------------------------------------------------
--- shows options tab
-----------------------------------------------------------

function BossTactics:showOptions()

InterfaceOptionsFrame_OpenToFrame(self.optionsFrame)

end;

---------------------------------------------------------------
--- open the main frame
---------------------------------------------------------------

function BossTactics:openBossFrame()
  if(self.MainWindow == nil) then
	self:CreateMainFrame()
	self:CreateLeftPanel()
	self:CreateRightPanel()
	if(self:IsRaidLeader())then
		self:BecomeRaidLeader()
		self:CompareRaid()
		self:BT_SendDataMessage("{RLVERCH}")
	end
  end
  if(self.isNotWatching)then
  	self:BT_SendDataMessage("{SYNCREQ}")
  	self.isNotWatching = false;
  end
  self.MainWindow:Show()
  self.MainWindow:Raise()
end;



----------------------------------------------------
--- config acecomm
----------------------------------------------------
function BossTactics:ConfigComm()
	BossTactics.VerTable={}
	BossTactics.VerNum={}

	BossTactics:RegisterComm("BOSSTACTICS", "OnCommReceive")
end;


-----------------------------------------------------------------
--- method for the communication
--------------------------------------------------------------
function BossTactics:OnCommReceive(prefix, Msgs, distribution, target)

	if(self.incompatible)then
		return
	end

	local regex_leaderchat = "{LCH}(.*)"
	local regex_leaderChInstance = "{RLI:(.*)}"
	local regex_leaderChBoss = "{RLB:([^:]-):([^}]-)}"
	local regex_leaderNextImg = "{RLNX:([^:]-):([^:]-):([^}]-)}"
	local regex_leaderPrevImg = "{RLPR:([^:]-):([^:]-):([^}]-)}"
	local regex_instinfo = "{INSTINFO:([^:]-):([^:]-):([^:]-):([^}]-)}"
	local regex_userVersion = "{UVER:([^:]-):([^}]-)}"
	local regex_versionCheck = "{VER:([^}]-)}"
	local regex_sessionStart = "{LSTART:([^}]-)}"

	if(Msgs == "{RLVERCH}")then
		self:BT_SendDataMessage("{UVER:"..self.version..":"..tostring(self.isOUS).."}")
		return
	elseif(Msgs == "{INC}" and not self.incompatible)then
		self.incompatible = true
		self:ShowVersionInfoFrame()
		return
	end


	if(self.isSession and strfind(Msgs,";") and not self.isSessionLeader)then
		if(self.isNotWatching) then
		    local tbl = { strsplit(";", Msgs) }
            for i,v in ipairs(tbl)do
                self:CommBtnData(v,target)
            end
            self.currSessionBtnId = self.SESSIONID
            return
		end
	end

	--versioncheck
	for sentversion in string.gmatch(Msgs,regex_versionCheck) do
		if(not self:CompareVersions(sentversion))then
			self:SendCommMessage("BOSSTACTICS","{INC}","WHISPER",target)
		end
	end

	--some events are only importent if you are raidleader
	if(self:IsRaidLeader() and self.MainWindow)then
		--version check
		for uver, isOUS in string.gmatch(Msgs,regex_userVersion) do
			self:VersionStrings(target,uver,isOUS)
		end

		--leadermsg
		for leadermsg in string.gmatch(Msgs,regex_leaderchat) do
			--local chatedit = self.MainWindow.RightPane.LeaderChatFrame.chatEdit
			local leaderframe = self.MainWindow.RightPane.LeaderChatFrame
			local chatfontstring = leaderframe:CreateFontString(nil, "OVERLAY","GameFontNormal")
			local textarray = leaderframe.TextArray
			--chatfontstring:SetPoint("BOTTOMLEFT",self.MainWindow.RightPane.LeaderChatFrame)
			if(#textarray > self.db.profile.anzMsgRLChat)then
				textarray[1]:Hide()
				table.remove(textarray,1)
			end
			textarray[#textarray+1] = chatfontstring
			chatfontstring:SetText(target..": "..leadermsg)
			chatfontstring:SetWidth(leaderframe:GetWidth()-20)
			chatfontstring:SetJustifyH("LEFT");
			chatfontstring:SetJustifyV("BOTTOM");
			chatfontstring:SetTextColor(1,1,1)
			self:ScrollString(leaderframe,textarray,true)
		end

		--user getting out of sync
		if(Msgs == "{UICH}")then
			self:VersionStrings(target,"1.0",1)
		elseif(Msgs == "{MAINCL}")then
			self:VersionStrings(target,"1.0",1)
		end

		--some events are only für sessionleaders
		if(self.isSessionLeader)then
			--syncrequest
			if(Msgs == "{SYNCREQ}")then
				self:BT_SendDataMessage("{LSTART:"..self.currInstanceMemberMax.."}")
				self:SyncRaid(false,target)
				BossTactics:BT_SendDataMessage("{RLVERCH}")
			end
		end
	end

	--some events must only be done if they are not from us
	if(target ~= self.player)then
		--call method for button handling
		self:CommBtnData(Msgs,target)
		--session started by a leader
		if(not self:IsSession())then
			for maxRaidNr in string.gmatch(Msgs,regex_sessionStart) do
				self.currInstanceMemberMax = tonumber(maxRaidNr)
				self:StartUserSession(target)
			end
		end
		if(Msgs == "{LSEND}")then
			if(not self.isNotWatching) then
				self:EndUserSession(target)
			end
		end

		--instinfo from syncronisation
		for instid, bossid, imgid, membermax in string.gmatch(Msgs,regex_instinfo) do
			if(not self.isNotWatching) then
				if(not (self.TacticQuestionFrame and self.TacticQuestionFrame:IsShown()))then
					self.currInstanceMemberMax = membermax
			        if(not self.MainWindow)then
                        self:StartUserSession(target)
                    end
                    self.isOUS = 0
                    self:HandleInstanceSwitch(instid)
                    self:ShowBossTactic(tonumber(bossid))
                    self:ShowBossImage(tonumber(imgid))
                    self:UserSessionImgSwitch()
                end
            end
		end

		--raidleader changed instance
		for instid in string.gmatch(Msgs,regex_leaderChInstance) do
			if(not self.isNotWatching) then
			    self:HandleInstanceSwitch(instid)
                self:UserSessionImgSwitch()
			end
		end
		--raidleader changed boss
		for instid, bossid in string.gmatch(Msgs,regex_leaderChBoss) do
			if(not self.isNotWatching) then
			    if(instid ~= self.currInstanceId)then
                    if(self.isOUS == 0)then
                    self:Print(L["Out of synch with raidleader"])
                    self.isOUS = 1
                    self:BT_SendDataMessage("{UICH}")
                end
                else
                    self:ShowBossTactic(tonumber(bossid))
                    self:UserSessionImgSwitch()
                end
            end
		end
		--raidleader next image
		for instid, bossid, imgid in string.gmatch(Msgs,regex_leaderNextImg) do
			if(not self.isNotWatching) then
			    if(instid ~= self.currInstanceId or tonumber(bossid) ~= self.currBossId)then
                    if(self.isOUS == 0)then
                    self:Print(L["Out of synch with raidleader"])
                    self.isOUS = 1
                    self:BT_SendDataMessage("{UICH}")
                end
                else
                    self:ShowBossImage(tonumber(imgid))
                    self:UserSessionImgSwitch()
                end
			end
		end
		--raidleader prev image
		for instid, bossid, imgid in string.gmatch(Msgs,regex_leaderPrevImg) do
			if(not self.isNotWatching) then
			    if(instid ~= self.currInstanceId or tonumber(bossid) ~= self.currBossId)then
                    if(self.isOUS == 0)then
                    self:Print(L["Out of synch with raidleader"])
                    self.isOUS = 1
                    self:BT_SendDataMessage("{UICH}")
                end
                else
                    self:ShowBossImage(tonumber(imgid))
                    self:UserSessionImgSwitch()
                end
            end
		end
	end

	if(self.debug)then
		if(self:IsRaidLeader())then
			self:Print(Msgs.." distr: "..distribution.." player: "..target)
		else
			if(not strfind(Msgs,"{LCH")) then
				self:Print(Msgs.." distr: "..distribution.." player: "..target)
			end
		end
	end

end;

function BossTactics:CommBtnData(Msgs,target)

	if(not self.MainWindow) then return end

	if(self.isNotWatching) then return end

	local regex_leaderRemBtn = "{BTRM:([^:]-):([^:]-):([^:]-):([^}]-)}"
	local regex_leaderChText = "{BTCT:([^:]-):([^:]-):([^:]-):([^:]-):([^}]-)}"
	local regex_leaderNewBtn = "{BTN:([^:]-):([^:]-):([^:]-):([^:]-):([^:]-):([^:]-):([^}]-)}"
	local regex_movedbtn = "{BTMV:([^:]-):([^:]-):([^:]-):([^:]-):([^:]-):([^}]-)}"

	--button drag event
	for btnid, imgid, bossid, instid,x, y in string.gmatch(Msgs,regex_movedbtn) do
		if(instid ~= self.currInstanceId or bossid ~= tostring(self.currBossId)
			or imgid ~= tostring(self.currImgId)) then
			if(self.isOUS == 0)then
			    self:Print(L["Out of synch with raidleader"])
                self.isOUS = 1
                self:BT_SendDataMessage("{UICH}")
			end
		else
			for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
				if(v.instId == self.currInstanceId and
					v.imgId == self.currImgId and v.bossId == self.currBossId and v.id == tonumber(btnid)) then
					v:ClearAllPoints()
					v:SetPoint("TOPLEFT",self.MainWindow.LeftPane,"TOPLEFT",x,y)
					break
				end
			end
		end
	end
	--button new event
	for btnid, imgid, bossid, instid,x, y,typename in string.gmatch(Msgs,regex_leaderNewBtn) do
		if(instid ~= self.currInstanceId or bossid ~= tostring(self.currBossId)
			or imgid ~= tostring(self.currImgId)) then
			if(self.isOUS == 0)then
			    self:Print(L["Out of synch with raidleader"])
                self.isOUS = 1
                self:BT_SendDataMessage("{UICH}")
			end
		else
			self:CreateNewMapButton(self:GetTypeFromButtonType(typename),false,self:GetTextFromButtonType(typename),x,y,btnid)
			self.currSessionBtnId = tonumber(btnid)+1
		end
	end
	--raidleader change button text
	for btnid, instid, bossid, imgid, newtext in string.gmatch(Msgs,regex_leaderChText) do
		if(instid ~= self.currInstanceId or bossid ~= tostring(self.currBossId)
			or imgid ~= tostring(self.currImgId))then
			if(self.isOUS == 0)then
			    self:Print(L["Out of synch with raidleader"])
                self.isOUS = 1
                self:BT_SendDataMessage("{UICH}")
			end
		else
			for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
				if(v.id == tonumber(btnid) and v.instId == instid and
					 v.bossId == tonumber(bossid) and v.imgId == tonumber(imgid))then
					 v.text:SetText(newtext)
					break
				end
			end
		end
	end
	--raidleader deletes button
	for btnid, instid, bossid, imgid in string.gmatch(Msgs,regex_leaderRemBtn) do
		if(instid ~= self.currInstanceId or bossid ~= tostring(self.currBossId)
			or imgid ~= tostring(self.currImgId))then
			if(self.isOUS)then
			    self:Print(L["Out of synch with raidleader"])
                self.isOUS = 1
                self:BT_SendDataMessage("{UICH}")
			end
		else
			for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
				if(v.id == tonumber(btnid) and v.instId == instid and
					 v.bossId == tonumber(bossid) and v.imgId == tonumber(imgid))then
					v:Hide()
					tremove(self.MainWindow.LeftPane.buttons,i)
					break
				end
			end
		end
	end
end;

-----------------------------------------------------------
--handels updates to the VersionStrings
--target the player, uver version of the player
--isOus 1=true false otherwise
-----------------------------------------------------------

function BossTactics:VersionStrings(target,uver,isOUS)
	if(self.MainWindow)then
		local versionframe = self.MainWindow.RightPane.versionlistFrame
		local textarray = versionframe.TextArray
		local incompatible = self:CompareVersions(uver)
		local inctext = ""
		if(not incompatible)then
			self:SendCommMessage("BOSSTACTICS","{INC}","WHISPER",target)
			inctext = " "..L["version incompatible"]
		end
		for i,v in ipairs(textarray) do
			if(strfind(v:GetText(),target,1)) then
				if(tonumber(isOUS) == 1)then
					v:SetText(target..": |cffdf6003"..uver.."|r".." |cffff0000"..L["out of sync"].."|r")
				else
					v:SetText(target..": |cffdf6003"..uver.."|r".." |cffff0000"..inctext.."|r")
				end
				break
			end
		end
	end
end;

---------------------------------------------------------------
--compares versions
--uver the version of a player to compare with mine
--returns true if the version is compatible, falso otherwise
---------------------------------------------------------------

function BossTactics:CompareVersions(uver)

	minor, second = strsplit(".",uver)

	myminor, mysecond = strsplit(".",self.version)

	if(tonumber(minor) < tonumber(myminor))then
		return false
	end
	if(tonumber(second) < tonumber(mysecond))then
		return false
	end
	return true

end;


--------------------------------------------------------
--wrapper for easy use of sending messages
--------------------------------------------------------
function BossTactics:BT_SendDataMessage(msg)
	--BossTactics:SendCommMessage("BOSSTACTICS",msg,"WHISPER",self.player)
	self:SendCommMessage("BOSSTACTICS",msg,"RAID")
end;


--------------------------------------------------------------------
--- options functions
--------------------------------------------------------------------
function BossTactics:IsDebug(info)
    return self.debug
end

function BossTactics:ToggleDebug(info, value)
    self.debug = value
    if(self.debug)then
    	self:Print("Debug enabled")
    else
    	self:Print("Debug disabled")
    end
end

function BossTactics:IsMinimap(info)
    return self.db.profile.minimapShow
end

function BossTactics:ToggleMinimap(info, value)
    self.db.profile.minimapShow = value
    if(self.db.profile.minimapShow)then
    	self:CreateMinimapButton()
    	self:Print(L["minimap on"])
    else
    	self.MinimapBtnFrame:Hide()
    	self:Print(L["minimap off"])
    end
end

------------------------------------------------------------
---tests if player is raidleader
-- returns if a player is leader or assistant
------------------------------------------------------------

function BossTactics:IsRaidLeader()
	--return true;
	return  UnitInRaid(self.player) and (IsRaidLeader(self.player) or IsRaidOfficer(self.player))
end;

------------------------------------------------------------
---tests if we are in session mode
-- returns if a player is leader or assistant
------------------------------------------------------------

function BossTactics:IsSession()
	return self.isSession;
end;

function BossTactics:IsSessionLeader()
	return self.isSessionLeader
end;

------------------------------------------------------------
--start or end the leader session
------------------------------------------------------------

function BossTactics:StartSession()

	if(not self.MainWindow) then return end

	self.isSession = true;
	self.isSessionLeader = true
	if(self:IsRaidLeader())then
		self:BT_SendDataMessage("{LSTART:"..self.currInstanceMemberMax.."}")
	end
	self.currSessionBtnId = self.SESSIONID
	self.MainWindow.LeftPane.SyncBtn:SetWidth(150)
	self.MainWindow.LeftPane.SyncBtn:SetHeight(20)
	self.MainWindow.LeftPane.SyncBtn:SetText(L["LeaderSync"])
	self:SyncRaid(true)
	self.MainWindow.LeftPane.StdBtn:Disable()
	--self.MainWindow.LeftPane.SyncBtn:Enable()
	self.isOUS = 0
end;

function BossTactics:EndSession()

	if(not self.MainWindow) then return end

	self.isSession = false;
	self.isSessionLeader = false;
	self:ResetSessionIds()
	if(self:IsRaidLeader())then
		self:BT_SendDataMessage("{LSEND}")
	end
	self.MainWindow.LeftPane.SyncBtn:SetWidth(120)
	self.MainWindow.LeftPane.SyncBtn:SetHeight(20)
	self.MainWindow.LeftPane.SyncBtn:SetText(L["Sync"])
	self.MainWindow.LeftPane.SessBtn:SetText(L["Session"])
	--self.MainWindow.LeftPane.SyncBtn:Disable()
	self.MainWindow.LeftPane.StdBtn:Enable()
	self.MainWindow.LeftPane.SessResetBtn:Enable()
end;

-----------------------------------------------------
--sends the raidmessages
-----------------------------------------------------

function BossTactics:SendRaMessages()

	local tbl = { strsplit("\n", self.MainWindow.RightPane.ScrollRaidMsgFrame:GetScrollChild():GetText()) }
	for i,v in ipairs(tbl)do
		SendChatMessage(v,"RAID")
	end
end;

-----------------------------------------------------
--synchronize the raid
--mode: boolean true --> normal sync; false --> syncrequest to target
-----------------------------------------------------

function BossTactics:SyncRaid(mode,target)

	if(not self.MainWindow) then return end

	if(self.currInstanceId == "EMPTY")then
		if(mode)then
			self:BT_SendDataMessage("{NOINSTNCE}")
		else
			self:SendCommMessage("BOSSTACTICS","{NOINSTNCE}","WHISPER",target)
		end
	else
		if(mode) then
			self:BT_SendDataMessage("{INSTINFO:"..self.currInstanceId..":"..self.currBossId..":"..self.currImgId..":"..self.currInstanceMemberMax.."}")
		else
			self:SendCommMessage("BOSSTACTICS","{INSTINFO:"..self.currInstanceId..":"..self.currBossId..":"..self.currImgId..":"..self.currInstanceMemberMax.."}","WHISPER",target)
		end
		local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
		local defaultDB = module:GetDefaults()
		local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]
		local msg = ""

		--inform about new or changed buttons, which are not in defaults
		for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(v:IsShown() and v.dragged) then
				local btn = defaultBoss.imgdata[self.currImgId].buttons[v.id]
				local point, relativeTo, relativePoint, xOfs, yOfs = v:GetPoint(1)
				if(btn == nil)then
					msg = msg..";".."{BTN:"..v.id..":"..v.imgId..":"..v.bossId..":"..v.instId..":"..floor(xOfs)..":"..floor(yOfs)..":"..v.typename.."}"
					if(v.text:GetText() ~= self:GetTypeFromButtonType(v.typename).text)then
						msg = msg..";".."{BTCT:"..v.id..":"..v.instId..":"..v.bossId..":"..v.imgId..":"..v.text:GetText().."}"
					end
				else
					if(btn.x ~= floor(xOfs) or btn.y ~= floor(yOfs))then
						msg = msg..";".."{BTMV:"..v.id..":"..v.imgId..":"..v.bossId..":"..v.instId..":"..floor(xOfs)..":"..floor(yOfs).."}"
					end
					if(v.text:GetText() ~= btn.caption)then
						msg = msg..";".."{BTCT:"..v.id..":"..v.instId..":"..v.bossId..":"..v.imgId..":"..v.text:GetText().."}"
					end
				end
			end
		end

		--inform about deleted buttons
		for i, v in ipairs(defaultBoss.imgdata[self.currImgId].buttons) do
			local found = false
			for index,value in ipairs(self.MainWindow.LeftPane.buttons) do
				if(value.id == i and value.instId == self.currInstanceId and value.imgId == self.currImgId
					and value.bossId == self.currBossId)then
					found = true
					break
				end
			end
			if(not found)then
				msg = msg..";".."{BTRM:"..i..":"..self.currInstanceId..":"..self.currBossId..":"..self.currImgId.."}"
			end
		end
		if(strlen(msg)>0)then
			if(mode)then
				self:BT_SendDataMessage(strsub(msg,2))
			else
				self:SendCommMessage("BOSSTACTICS",strsub(msg,2),"WHISPER",target)
			end
		end
	end
	self:CompareRaid()
	self:BT_SendDataMessage("{RLVERCH}")
end;

-------------------------------------------------------------
--user session handling
-------------------------------------------------------------

function BossTactics:StartUserSession(target, showAnyway)

	local anzMembers = GetNumRaidMembers()
	for i=1, anzMembers, 1 do
		local name, rank, subgroup, level, class,
				fileName,zone, online, isDead, role, isML = GetRaidRosterInfo(i)
		if(name and self.currInstanceMemberMax ~= -1 and name == self.player and subgroup > self.currInstanceMemberMax/5 and not showAnyway)then
			self:ShowTacticQuestionFrame(target)
			return
		end
	end

	self.currSessionBtnId = self.SESSIONID
	if(target)then
		self:Print(string.format(L["session started"],target))
	end
	self.isSession = true;
	self.currSessionBtnId = self.SESSIONID
	self:openBossFrame()
	self:UserSessionImgSwitch()
	if(self.MainWindow.LeftPane.SessBtn ~= nil)then
		self.MainWindow.LeftPane.SessBtn:Disable()
		self.MainWindow.LeftPane.StdBtn:Disable()
	end
	--self.MainWindow.LeftPane.SyncBtn:Enable()
	self.MainWindow.LeftPane.SessResetBtn:Disable()
end;

------------------------------------------------------
--helps to switch a user image when there is a session
------------------------------------------------------

function BossTactics:UserSessionImgSwitch()
	if(not self.MainWindow) then return end

	if(self.modules[self.currModuleId] ~= nil)then
		local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
		local defaultDB = module:GetDefaults()
		local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]

		local btnsToRemove = {}
		--remove added buttons or change to old texts
		for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(v:IsShown() and v.dragged) then
				local btn = defaultBoss.imgdata[self.currImgId].buttons[v.id]
				if(btn == nil)then
					tinsert(btnsToRemove,v)
				else
					v:ClearAllPoints()
					v:SetPoint("TOPLEFT",self.MainWindow.LeftPane,"TOPLEFT",btn.x,btn.y)
					if(btn.caption == nil)then
						v.text:SetText(self:GetTypeFromButtonType(btn.type).text)
					else
						v.text:SetText(btn.caption)
					end
				end
			end
		end

		for i,v in ipairs(btnsToRemove) do
			for index,value in ipairs(self.MainWindow.LeftPane.buttons)do
				if(v.id==value.id and v.instId == value.instId and v.bossId == value.bossId
					and v.imgId == value.imgId)then
					v:Hide()
					tinsert(self.MainWindow.LeftPane.buttonPool,tremove(self.MainWindow.LeftPane.buttons,index))
					break
				end
			end
		end

		--recover deleted buttons
		for i, v in ipairs(defaultBoss.imgdata[self.currImgId].buttons) do
			local found = false
			for index,value in ipairs(self.MainWindow.LeftPane.buttons) do
				if(value.id == i and value.instId == self.currInstanceId
					and value.bossId == self.currBossId and value.imgId == self.currImgId)then
					found = true
					value:Show()
					break
				end
			end
			if(not found)then
				if(v.caption == nil)then
					self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,self:GetTextFromButtonType(v.type),v.x,v.y,i)
				else
					self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,v.caption,v.x,v.y,i)
				end
			end
		end
	end
end;

----------------------------------------------------
--handles the end of a session
----------------------------------------------------

function BossTactics:EndUserSession(target)

	if(not self.MainWindow) then return end

	self.isSession = false;
	self:ResetSessionIds()
	if(self.MainWindow.LeftPane.SessBtn)then
		self.MainWindow.LeftPane.SessBtn:Enable()
		self.MainWindow.LeftPane.StdBtn:Enable()
	end
	--self.MainWindow.LeftPane.SyncBtn:Disable()
	self.MainWindow.LeftPane.SaveBtn:Enable()
	self.MainWindow.LeftPane.SessResetBtn:Enable()
	if(target)then
		self:Print(string.format(L["session ended"],target))
	end
end;


-------------------------------------------------
--resets the session ids to normal ids
-------------------------------------------------

function BossTactics:ResetSessionIds()

	if(not self.MainWindow) then return end

	for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
		if(v.dragged)then
		    local btnId = self.currBtnId--self.modules[v.moduleId].bosses[v.bossId].imgdata[v.imgId].btnId
            if(v.id > btnId)then
                v.id = btnId
                self.currBtnId = btnId + 1
            end
		end
	end

end;

---------------------------------------------------------
--resets the session data if the user likes to
---------------------------------------------------------

function BossTactics:ResetSessionData()

	--local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
	--local defaultDB = module:GetDefaults()
	--local defaultBoss = defaultDB.profile.bosses[self.currBossId]
	if(not self.MainWindow) then return end

	self.isSession = false;
	while(self:ButtonsDragged(self.MainWindow.LeftPane.buttons))do
		for i, v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(v.dragged)then
				v:Hide()
				tinsert(self.MainWindow.LeftPane.buttonPool,tremove(self.MainWindow.LeftPane.buttons,i))
				break
			end
		end
	end
	self:ShowBossImage(self.currImgId)
	self.MainWindow.LeftPane.SessResetBtn:Disable()
end;

--helps to delete all dragged buttons
function BossTactics:ButtonsDragged(tableVar)

	for i, v in ipairs(tableVar) do
		if(v.dragged)then
			return true
		end
	end
	return false
end;

------------------------------------------------------------
-- handels a switch in the addon menu
--instance: the name of the instance module
------------------------------------------------------------

function BossTactics:HandleAddonSwitch(newAddon)

	if(not self.MainWindow) then return end

	local leftpane = self.MainWindow.LeftPane
	local rightpane = self.MainWindow.RightPane

	self.currAddon = newAddon
	self.currInstanceId = "EMPTY"
	self.currImgId = -1
	self.currModuleId = -1
	self.currBossId = -1

	self:CreateDropdown(self.dewdropInstances, self.MainWindow.LeftPane.InstanzBtn,
			BT_InstanceDewdropClick, self.instanceTable[self.currAddon])

	leftpane.BossBtn:Disable()
	leftpane.AddonBtn:SetText(newAddon)
	rightpane.ScrollRight:GetScrollChild():SetText("")
	rightpane.TrashBtn:Disable()
	leftpane.PrevImgBtn:Disable()
	leftpane.NextImgBtn:Disable()
	leftpane.ImgPane:SetBackdrop({
			bgFile = nil, tile = false,
		})
	leftpane.ImgPane.fontstrings = {}
	leftpane.ImgPane.LegendPane:Hide()

	while(self:ButtonsDragged(self.MainWindow.LeftPane.buttons))do
		for i, v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(v.dragged)then
				v:Hide()
				tinsert(self.MainWindow.LeftPane.buttonPool,tremove(self.MainWindow.LeftPane.buttons,i))
				break
			end
		end
	end

	if(self:IsRaidLeader())then
		rightpane.ScrollRaidMsgFrame:GetScrollChild():SetText("")
	end

end;

------------------------------------------------------------
--
------------------------------------------------------------
function BossTactics:SetInstanceMode(mode)

	if(not self.modules[self.currModuleId].bosses[mode]) then
		self:ShowInfoMessage(L["mode not supported"]);
		return
	end
	self.currInstanceMode = mode
	self.currInstanceMemberMax = tonumber(strsub(mode,5))
	self.MainWindow.LeftPane.ModeBtn:SetText(L["mode"].." "..self.currInstanceMemberMax)
	self:ShowBossTactic(1)
end;

------------------------------------------------------------
-- handels a switch in the menu
--instance: the name of the instance module
------------------------------------------------------------

function BossTactics:HandleInstanceSwitch(instanceModule)

	if(not self.MainWindow) then return end

	if(instanceModule == nil) then return end

	if(not IsAddOnLoaded(instanceModule)) then
		self:LoadInstanceModule(instanceModule)
	end

	local bosstable = {}
	local found = false

	for i,v in ipairs(self.modules) do
		if(v.id == instanceModule) then
			--set the instance id
			self.currModuleId = i
			self.currInstanceId = instanceModule
			--defining the mode
			local counter = false
			table.foreach(v.bosses, function (i,v)
				if (counter) then  return;
				else self:SetInstanceMode(i); counter = true; end
			 end)
			--copy bossnames for menue
			for index,Boss in ipairs(v.bosses[self.currInstanceMode]) do
				table.insert(bosstable,{ Boss.name, index, "Menuitem" })
			end
			found = true
			break
		end
	end
	if(found) then
		--self.dewdropBossses:Unregister(self.MainWindow.LeftPane.BossBtn)
		self:CreateDropdown(self.dewdropBosses, self.MainWindow.LeftPane.BossBtn,
				BT_BossDewdropClick, bosstable)
		self.MainWindow.LeftPane.BossBtn:Enable()
		self.MainWindow.LeftPane.ModeBtn:Enable()
		if(self:IsRaidLeader())then
			self.MainWindow.LeftPane.RasendBtn:Enable()
		end
		self:ShowBossTactic(1)
	end

end;

-----------------------------------------------------------
-- Shows the tactics from a boss
-- id: bossid of the current instance
-----------------------------------------------------------

function BossTactics:ShowBossTactic(id)

	if(not self.MainWindow) then return end

	local boss = self.modules[self.currModuleId].bosses[self.currInstanceMode][id]
	local leftpane = self.MainWindow.LeftPane
	local rightpane = self.MainWindow.RightPane
	local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
	local defaultDB = module:GetDefaults()
	local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][id]

	leftpane.titleLeftPane:SetText(self.modules[self.currModuleId].instance.." - "..boss.name)
	if(self:IsRaidLeader())then
		rightpane.ScrollRaidMsgFrame:GetScrollChild():SetText(boss.ratext)
	end
	if(boss.trash)then
		rightpane.TrashBtn:Enable()
		rightpane.TrashBtn:SetText(L["Trash"])
		rightpane.TrashBtn.stdTactic = true
	else
		rightpane.TrashBtn:Disable()
	end
	rightpane.ScrollRight:GetScrollChild():SetText(boss.tactictext)
	rightpane.ScrollRight:GetScrollChild():SetCursorPosition(1)
	rightpane.SaveBtn:Disable()
	self.currImgId = 1
	self.currBossId = id
	self:CheckUserWrittenText("tactic")
	self.MainWindow.RightPane.Patchlvl:SetText(self.modules[self.currModuleId].patchlevel)
	self:ShowBossImage(1)

end;

-----------------------------------------------------------
-- Shows a image from a boss
-- id: imgid of the current boss
-----------------------------------------------------------

function BossTactics:ShowBossImage(id)

	if(not self.MainWindow) then return end

	local boss = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]

	if(id == 1) then
		self.MainWindow.LeftPane.PrevImgBtn:Disable()
	else
		self.MainWindow.LeftPane.PrevImgBtn:Enable()
	end
	if(id < #(boss.imgdata)) then
		self.MainWindow.LeftPane.NextImgBtn:Enable()
	else
		self.MainWindow.LeftPane.NextImgBtn:Disable()
	end

	self.MainWindow.LeftPane.ImgPane:SetBackdrop({
			bgFile = boss.imgdata[id].source, tile = false,
		})
	self.currImgId = id
	self.currBtnId = boss.imgdata[self.currImgId].btnId
	local found = false

	for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
		if(v.instId == self.currInstanceId and
			v.imgId == self.currImgId and v.bossId == self.currBossId and v.dragged) then
			found = true
			v:Show()
		--show the pool buttons
		elseif(not v.dragged)then
			v:Show()
		else
			v:Hide()
		end
	end

	local btnDB = boss.imgdata[self.currImgId].buttons
	if(not found and btnDB) then
		for i,v in ipairs(btnDB) do
			if(v.caption == "")then v.caption = " " end
			if(not v.deleted)then
				if(v.caption == nil)then
					self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,self:GetTypeFromButtonType(v.type).text,v.x,v.y,i)
				else
					self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,v.caption,v.x,v.y,i)
				end
			end
		end
	end

	for i,v in ipairs(self.MainWindow.LeftPane.ImgPane.fontstrings) do
		v:Hide()
	end
	self.MainWindow.LeftPane.ImgPane.fontstrings = {}

	local fontstrDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId].imgdata[self.currImgId].fontstrings
	if(fontstrDB) then
		for i,v in ipairs(fontstrDB) do
			self:CreateMapFontstring(v.text,v.x,v.y,v.font,v.r,v.g,v.b)
		end
	end


	local legendDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId].imgdata[self.currImgId].legend
	if(legendDB)then
		--clear the old legend pane
		for i,v in ipairs(self.MainWindow.LeftPane.ImgPane.LegendPane.fontstrings) do
			v:Hide()
		end
		self.MainWindow.LeftPane.ImgPane.LegendPane.fontstrings = {}

		local btnsToRemove = {}
		--copy all buttons into the pool
		for i,v in ipairs(self.MainWindow.LeftPane.ImgPane.LegendPane.buttons) do
			tinsert(btnsToRemove,v)
		end

		for i,v in ipairs(btnsToRemove) do
			for index,value in ipairs(self.MainWindow.LeftPane.ImgPane.LegendPane.buttons)do
				if(v.id==value.id)then
					v:Hide()
					tinsert(self.MainWindow.LeftPane.ImgPane.LegendPane.buttonPool,tremove(self.MainWindow.LeftPane.ImgPane.LegendPane.buttons,index))
					break
				end
			end
		end

		self.MainWindow.LeftPane.ImgPane.LegendPane:Show()

		local anz = 0
		for i,v in ipairs(legendDB.entries) do
			local btn
			if(#self.MainWindow.LeftPane.ImgPane.LegendPane.buttonPool > 0)then
				btn = tremove(self.MainWindow.LeftPane.ImgPane.LegendPane.buttonPool)
			else
				btn = CreateFrame("Button",nil,self.MainWindow.LeftPane.ImgPane.LegendPane)
			end
			local type = self:GetTypeFromButtonType(v.type)
			btn:SetFrameLevel(self.MainWindow.LeftPane.ImgPane.LegendPane:GetFrameLevel()+2)
			if(type ~= nil)then
				btn:SetWidth(20)
				btn:SetHeight(20)
				btn:ClearAllPoints()
				btn:SetPoint("TOPLEFT",self.MainWindow.LeftPane.ImgPane.LegendPane,"TOPLEFT",(math.floor((i-1)/3)*120)+5, -(2+((i-1)%3)*20))       --,2+((i-1)%2)*90,-((math.floor((i-1)/2)*20)+2))
				btn:SetMovable(false)
				btn:SetNormalTexture(type.button)
				btn:SetAlpha(1.0)
				btn.id = i
				btn:Show()
				tinsert(self.MainWindow.LeftPane.ImgPane.LegendPane.buttons,btn)

				local fontstr = self.MainWindow.LeftPane.ImgPane.LegendPane:CreateFontString(nil,"OVERLAY","GameFontNormal")
				fontstr:SetTextColor(v.r,v.g,v.b)
				fontstr:SetText(v.caption)
				fontstr:SetPoint("TOPLEFT",self.MainWindow.LeftPane.ImgPane.LegendPane,"TOPLEFT",(math.floor((i-1)/3)*120)+25, -(2+((i-1)%3)*20+4))                 --32+((i-1)%2)*90,-((math.floor((i-1)/2)*20)+4))
				tinsert(self.MainWindow.LeftPane.ImgPane.LegendPane.fontstrings,fontstr)
			else
				self:Print("Buttontype "..v.type.." does not exist")
			end
			anz = anz+1
		end

	else
		self.MainWindow.LeftPane.ImgPane.LegendPane:Hide()
	end

	if(self:CheckImgDataChanged())then
		self.dataChanged = true
		self.MainWindow.LeftPane.SaveBtn:Enable()
	else
		self.dataChanged = false
		self.MainWindow.LeftPane.SaveBtn:Disable()
	end

end;

------------------------------------------------------------
--loads a Instanze Module
--module: string module
------------------------------------------------------------

function BossTactics:LoadInstanceModule(module)

	local loaded, reason = LoadAddOn(module)

	if not loaded then
	  if reason == "DISABLED" then
	    self:Print(string.format(L["Module disabled"],module))
	  elseif reason == "MISSING" then
	    self:Print(string.format(L["Module missing"],module))
	  elseif reason == "CORRUPT" then
	    self:Print(string.format(L["Module corrupt"],module))
	  elseif reason == "INTERFACE_VERSION" then
	    self:Print(string.format(L["Module interface version"],module))
	  end
	else
	  self:Print(string.format(L["Module loaded"],module))
	end

end;

----------------------------------------------------
--saves the current text
----------------------------------------------------

function BossTactics:SaveText()

	local bossDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
	if(self.MainWindow.RightPane.TrashBtn.stdTactic)then
		bossDB.tactictext = self.MainWindow.RightPane.ScrollRight:GetScrollChild():GetText()
		self:CheckUserWrittenText("tactic")
	else
		bossDB.trash = self.MainWindow.RightPane.ScrollRight:GetScrollChild():GetText()
		self:CheckUserWrittenText("trash")
	end

	self.MainWindow.RightPane.SaveBtn:Disable()
end;

----------------------------------------------------
--saves current shown values
----------------------------------------------------

function BossTactics:SaveValues()

	if(self:IsSession())then
		self:ShowInfoMessage(L["no save while session"])
		return
	end
	local bossDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
	local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
	local defaultDB = module:GetDefaults()
	local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]

	if(self:IsRaidLeader())then
		bossDB.ratext = self.MainWindow.RightPane.ScrollRaidMsgFrame:GetScrollChild():GetText()
	end

	--bossDB.imgdata[self.currImgId].buttons = {}
	local anz = 0
	for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
		if(v:IsShown() and v.dragged) then
			local point, relativeTo, relativePoint, xOfs, yOfs = v:GetPoint(1)
			if(bossDB.imgdata[self.currImgId].buttons[v.id] ~= nil and not bossDB.imgdata[self.currImgId].buttons[v.id].new)then
				bossDB.imgdata[self.currImgId].buttons[v.id].x = xOfs
				bossDB.imgdata[self.currImgId].buttons[v.id].y= yOfs
				bossDB.imgdata[self.currImgId].buttons[v.id].caption = v.text:GetText()
				bossDB.imgdata[self.currImgId].buttons[v.id].found = true
			else
				local btn = {}
				btn.x = xOfs
				btn.y = yOfs
				btn.type = v.typename
				btn.caption = v.text:GetText()
				btn.new = true
				btn.found = true
				tinsert(bossDB.imgdata[self.currImgId].buttons, btn)
			end
			anz = anz+1
		end
	end
	local btnsToRemove = {}
	for i,v in ipairs(bossDB.imgdata[self.currImgId].buttons) do
		if(i >= defaultBoss.imgdata[self.currImgId].btnId and not v.found)then
			tinsert(btnsToRemove,bossDB.imgdata[self.currImgId].buttons[i])
		end
	end
	for i,v in ipairs(btnsToRemove) do
		for index,value in ipairs(bossDB.imgdata[self.currImgId].buttons) do
			if(v.x == value.x and v.y == value.y)then
				tremove(bossDB.imgdata[self.currImgId].buttons,index)
			end
		end
	end
	for i,v in ipairs(bossDB.imgdata[self.currImgId].buttons) do
		v.new = nil
		v.found = nil
	end
	--mark deleted standard buttons
	for i,v in ipairs(defaultBoss.imgdata[self.currImgId].buttons)do
		local found = false
		for index,value in ipairs(self.MainWindow.LeftPane.buttons)do
			if(value:IsShown() and value.dragged) then
				if(value.id == i)then
					found = true
					break
				end
			end
		end
		if(not found)then
			bossDB.imgdata[self.currImgId].buttons[i].deleted = true
			anz = anz+1
		end
	end

	bossDB.imgdata[self.currImgId].btnId = anz+1
	self.MainWindow.LeftPane.SaveBtn:Disable()

	--manage the dataChanged array
	self.dataChanged = false
	for i,v in ipairs(self.dataChangedArray) do
		if(v.instId == self.currInstanceId and
            v.imgId == self.currImgId and v.bossId == self.currBossId) then
            tremove(self.dataChangedArray,i)
            break
        end
    end

	--just make sure that the btnids are the same as set in database
	btnsToRemove = {}
    for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
		if(v:IsShown() and v.dragged) then
        	tinsert(btnsToRemove,v)
        end
    end

    for i,v in ipairs(btnsToRemove) do
        for index,value in ipairs(self.MainWindow.LeftPane.buttons)do
            if(v.id==value.id and v.instId == value.instId and v.bossId == value.bossId
                and v.imgId == value.imgId)then
                v:Hide()
                tinsert(self.MainWindow.LeftPane.buttonPool,tremove(self.MainWindow.LeftPane.buttons,index))
                break
            end
        end
    end

	self:ShowBossImage(self.currImgId)
end;

----------------------------------------------------
--restores default values to a tactic
----------------------------------------------------

function BossTactics:RestoreDefaults()

	local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
	local defaultDB = module:GetDefaults()
	local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]
	local bossDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]

	bossDB.ratext = defaultBoss.ratext
	bossDB.imgdata[self.currImgId].btnId = defaultBoss.imgdata[self.currImgId].btnId

	bossDB.imgdata[self.currImgId].buttons = {}

	--copy the default values
	for i,v in ipairs(defaultBoss.imgdata[self.currImgId].buttons)do
		local btn = {}
		btn.x = v.x
		btn.y = v.y
		btn.type = v.type
		btn.caption = v.caption
		tinsert(bossDB.imgdata[self.currImgId].buttons, btn)
	end

	--remove added buttons or change to old texts
	local btnsToRemove = {}
	for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
		if(v:IsShown() and v.dragged and v.instId == self.currInstanceId
			and v.bossId == self.currBossId and v.imgId == self.currImgId) then
			local btn = bossDB.imgdata[self.currImgId].buttons[v.id]
			if(btn == nil)then
				v:Hide()
				tinsert(btnsToRemove,v)
			else
				v:ClearAllPoints()
				v:SetPoint("TOPLEFT",self.MainWindow.LeftPane,"TOPLEFT",btn.x,btn.y)
				if(btn.caption == nil)then
					v.text:SetText(self:GetTypeFromButtonType(btn.type).text)
				else
					v.text:SetText(btn.caption)
				end
			end
		end
	end

	for i,v in ipairs(btnsToRemove) do
		for index,value in ipairs(self.MainWindow.LeftPane.buttons)do
			if(v.id==value.id and v.instId == value.instId and v.bossId == value.bossId
				and v.imgId == value.imgId)then
				v:Hide()
				tinsert(self.MainWindow.LeftPane.buttonPool,tremove(self.MainWindow.LeftPane.buttons,index))
				break
			end
		end
	end

	--recover deleted buttons
	for i, v in ipairs(bossDB.imgdata[self.currImgId].buttons) do
		local found = false
		for index,value in ipairs(self.MainWindow.LeftPane.buttons) do
			if(value.id == i)then
				found = true
				break
			end
		end
		if(not found)then
			if(v.caption == nil)then
				self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,self:GetTypeFromButtonType(v.type).text,v.x,v.y,i)
			else
				self:CreateNewMapButton(self:GetTypeFromButtonType(v.type),false,v.caption,v.x,v.y,i)
			end
		end
	end

	if(self.MainWindow.RightPane.ScrollRaidMsgFrame)then
		self.MainWindow.RightPane.ScrollRaidMsgFrame:GetScrollChild():SetText(bossDB.ratext)
	end
	self.MainWindow.RightPane.ScrollRight:GetScrollChild():SetText(bossDB.tactictext)
	self.MainWindow.RightPane.ScrollRight:GetScrollChild():SetCursorPosition(1)
	self:Print(L["defaults recovered"])

end;

--------------------------------------------------
--get methods
--------------------------------------------------
function BossTactics:GetCurrInstId()
	return self.currInstanceId
end;