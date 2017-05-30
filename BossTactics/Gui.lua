

local L = LibStub("AceLocale-3.0"):GetLocale("BossTactics")
local dewdropInstances, dewdropBosses, dewdropAddon, dewdropModes


---------------------------------------------------------------
-- create the main frame
-- main frame komponents: MainWindow
-- MainWindow: LeftPane,RightPane
---------------------------------------------------------------

function BossTactics:CreateMainFrame()
	if(self:IsDebug()) then
		self:Print("CreateMainFrame aufgerufen")
	end

	local screenX = GetScreenWidth() -140
	local screenY = GetScreenHeight()-130

	local mainX = 1075
	local mainY = 830

	local scale = 1.0

	if(screenY < mainY)then
		scale = screenY/mainY
	elseif(screenX < mainX)then
		scale = screenX/mainX
	end


	--self:Print(mainX.." "..scale)

	self.MainWindow = CreateFrame("Frame", "BT_MainFrame",UIParent)
	--create the main frame-window
	local theFrame = self.MainWindow
	theFrame:ClearAllPoints()
	theFrame:SetPoint("CENTER",UIParent,"CENTER",0,40)
	theFrame:SetHeight(mainY)
	theFrame:SetFrameLevel(100)
	theFrame:SetToplevel(true)
	theFrame:SetWidth(mainX)
	theFrame:SetScale(scale)

	theFrame.TitleTexture = theFrame:CreateTexture("BT_TitleBG","BORDER")
    theFrame.TitleTexture:SetPoint("TOPLEFT",theFrame,"TOPLEFT",7,-5)
    theFrame.TitleTexture:SetWidth(theFrame:GetWidth()-15)
    theFrame.TitleTexture:SetHeight(25)
    theFrame.TitleTexture:SetTexture(16/255,24/255,177/255)

	theFrame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
		--edgeFile = "Interface\\Addons\\BossTactics\\Textures\\otravi-semi-full-border", edgeSize = 32,
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 32,
		insets = {left = 7, right = 7, top = 7, bottom = 7},
	})
	theFrame:SetBackdropBorderColor(0,0,1.0)
	theFrame:SetBackdropColor(24/255, 24/255, 24/255)
	theFrame:EnableMouse(true)
	theFrame:SetMovable(false)



	--handle drag and drop
	--theFrame:SetScript("OnMouseDown", function()
	--					if ( ( ( not this.isLocked ) or ( this.isLocked == 0 ) ) and ( arg1 == "LeftButton" ) ) then

	--					  this:StartMoving();
	--					  this.isMoving = true;
	--					 end
	--					end)
	--theFrame:SetScript("OnMouseUp", function()
	--					if ( this.isMoving ) then
	--					  this:StopMovingOrSizing();
	--					  this.isMoving = false;

--						  if this.SavePosition then
--							this:SavePosition()
--						  end
--						 end
--						end)
	theFrame.ShowFunc=ShowFunc -- noch zu implementieren
	theFrame:SetScript("OnShow", function()
							if this.ShowFunc then
							this:ShowFunc()
						end
						end)
	theFrame.HideFunc=HideFunc -- noch zu implementieren
	theFrame:SetScript("OnHide", function()
						if ( this.isMoving ) then
						  this:StopMovingOrSizing();
						  this.isMoving = false;
						 end
						 if this.HideFunc then
							this:HideFunc()
						 end
						end)
	theFrame.Title=theFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	theFrame.Title:SetPoint("TOPLEFT",theFrame,"TOPLEFT",12,-12)
	theFrame.Title:SetTextColor(1.0,1.0,1.0,1.0)
	theFrame.Title:SetText("BossTactics")

	theFrame.CloseButton=CreateFrame("Button","BT_closemainframe",theFrame)
	theFrame.CloseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
	theFrame.CloseButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
	theFrame.CloseButton:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
	theFrame.CloseButton:SetWidth(22)
	theFrame.CloseButton:SetHeight(22)
	theFrame.CloseButton:SetPoint("TOPRIGHT",theFrame,"TOPRIGHT",-9,-9)
	theFrame.CloseButton:SetScript("OnClick",function() self:HandleCloseMainWindow() end)

end;

--------------------------------------------------------
-- create the left panel for normal users
--------------------------------------------------------

function BossTactics:CreateLeftPanel()
	if(self.MainWindow ~= nil) then
		local theFrame = self.MainWindow;
		theFrame.LeftPane = CreateFrame("Frame","BT_LeftPane",theFrame)
		theFrame.LeftPane:ClearAllPoints()
		theFrame.LeftPane:SetPoint("TOPLEFT",theFrame,"TOPLEFT",0,-30)
		theFrame.LeftPane:SetHeight(theFrame:GetHeight()-30)
		theFrame.LeftPane:SetWidth(theFrame:GetWidth()/2)
		--theFrame.LeftPane:SetBackdrop({
		--	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
		--	--edgeFile = "Interface\\Addons\\BossTactics\\Textures\\otravi-semi-full-border", edgeSize = 32,
		--	insets = {left = 1, right = 1, top = 1, bottom = 1},
		--})

		--theFrame.LeftPane:SetBackdropBorderColor(0,0,1.0)
		--theFrame.LeftPane:SetBackdropColor(0, 0, 200/255)

		theFrame.LeftPane.AddonBtn = CreateFrame("Button","BT_AddonBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.AddonBtn:SetWidth(70)
		theFrame.LeftPane.AddonBtn:SetHeight(20)
		theFrame.LeftPane.AddonBtn:SetText(self.currAddon)
		theFrame.LeftPane.AddonBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",30,-10)
		theFrame.LeftPane.AddonBtn:SetScript("OnClick",function()
						if dewdropAddon:IsOpen() then
							dewdropAddon:Close();
						else
							dewdropAddon:Open(this);
						end
						  end)
		theFrame.LeftPane.InstanzBtn = CreateFrame("Button","BT_InstBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.InstanzBtn:SetWidth(100)
		theFrame.LeftPane.InstanzBtn:SetHeight(20)
		theFrame.LeftPane.InstanzBtn:SetText(L["Instances"])
		theFrame.LeftPane.InstanzBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",110,-10)
		theFrame.LeftPane.InstanzBtn:SetScript("OnClick",function()
						if dewdropInstances:IsOpen() then
							dewdropInstances:Close();
						else
							dewdropInstances:Open(this);
						end
						  end)
		theFrame.LeftPane.BossBtn = CreateFrame("Button","BT_BossBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.BossBtn:SetWidth(100)
		theFrame.LeftPane.BossBtn:SetHeight(20)
		theFrame.LeftPane.BossBtn:SetText(L["Bosses"])
		theFrame.LeftPane.BossBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",220,-10)
		theFrame.LeftPane.BossBtn:Disable()
		theFrame.LeftPane.BossBtn:SetScript("OnClick",function()
						if(not dewdropBosses) then dewdropBosses = self.dewdropBosses end
						if dewdropBosses:IsOpen() then
							dewdropBosses:Close();
						else
							dewdropBosses:Open(this);
						end
						  end)
		theFrame.LeftPane.ModeBtn = CreateFrame("Button","BT_modeBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.ModeBtn:SetWidth(100)
		theFrame.LeftPane.ModeBtn:SetHeight(20)
		theFrame.LeftPane.ModeBtn:SetText(L["mode"])
		theFrame.LeftPane.ModeBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",330,-10)
		theFrame.LeftPane.ModeBtn:Disable()
		theFrame.LeftPane.ModeBtn:SetScript("OnClick",function()
						if(not dewdropModes) then dewdropModes = self.dewdropModes end
						if dewdropModes:IsOpen() then
							dewdropModes:Close();
						else
							dewdropModes:Open(this);
						end
						  end)
		theFrame.LeftPane.SyncBtn = CreateFrame("Button","BT_SyncBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.SyncBtn:SetWidth(120)
		theFrame.LeftPane.SyncBtn:SetHeight(20)
		theFrame.LeftPane.SyncBtn:SetText(L["Sync"])
		theFrame.LeftPane.SyncBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",240,-730)
		theFrame.LeftPane.SyncBtn:SetScript("OnClick",function()
						if(self:IsSession() and self.isSessionLeader) then
							self:SyncRaid(true)
						else
							self:BT_SendDataMessage("{SYNCREQ}")
						end
						  end)

		theFrame.LeftPane.PrevImgBtn = CreateFrame("Button","BT_PrevImgBtn",theFrame.LeftPane)
		theFrame.LeftPane.PrevImgBtn:SetWidth(32)
		theFrame.LeftPane.PrevImgBtn:SetHeight(32)
		theFrame.LeftPane.PrevImgBtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up.blp")
		theFrame.LeftPane.PrevImgBtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down.blp")
		theFrame.LeftPane.PrevImgBtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled.blp")
		theFrame.LeftPane.PrevImgBtn:Disable()
		theFrame.LeftPane.PrevImgBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",20,-50)
		theFrame.LeftPane.PrevImgBtn:SetScript("OnClick",function()
							self:ShowBossImage(self.currImgId-1)
							if(self:IsRaidLeader() and self:IsSession())then
								self:BT_SendDataMessage("{RLPR:"..self.currInstanceId..":"..self.currBossId..":"..self.currImgId.."}")
								self:SyncRaid(true)
							elseif(self:IsSession())then
								BossTactics:BT_SendDataMessage("{UICH}")
							end
						  end)
		theFrame.LeftPane.NextImgBtn = CreateFrame("Button","BT_NextImgBtn",theFrame.LeftPane)
		theFrame.LeftPane.NextImgBtn:SetWidth(32)
		theFrame.LeftPane.NextImgBtn:SetHeight(32)
		theFrame.LeftPane.NextImgBtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up.blp")
		theFrame.LeftPane.NextImgBtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down.blp")
		theFrame.LeftPane.NextImgBtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled.blp")
		theFrame.LeftPane.NextImgBtn:Disable()
		theFrame.LeftPane.NextImgBtn:SetPoint("TOPRIGHT",theFrame.LeftPane,"TOPRIGHT",-20,-50)
		theFrame.LeftPane.NextImgBtn:SetScript("OnClick",function()
						self:ShowBossImage(self.currImgId+1)
						if(self:IsRaidLeader() and self:IsSession())then
							self:BT_SendDataMessage("{RLNX:"..self.currInstanceId..":"..self.currBossId..":"..self.currImgId.."}")
							self:SyncRaid(true)
						elseif(self:IsSession())then
								BossTactics:BT_SendDataMessage("{UICH}")
						end
						  end)

		theFrame.LeftPane.titleLeftPane = theFrame.LeftPane:CreateFontString(nil,"OVERLAY","MailTextFontNormal")
		theFrame.LeftPane.titleLeftPane:SetTextColor(226/255,186/255,0)
		theFrame.LeftPane.titleLeftPane:SetText("BossTactics")
		theFrame.LeftPane.titleLeftPane:SetPoint("TOP",theFrame.LeftPane,"Top",0,-55)

		theFrame.LeftPane.InfoBtn = CreateFrame("Button","BT_InfoBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.InfoBtn:SetWidth(70)
		theFrame.LeftPane.InfoBtn:SetHeight(20)
		theFrame.LeftPane.InfoBtn:SetText(L["Info"])
		theFrame.LeftPane.InfoBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",40,-700)
		theFrame.LeftPane.InfoBtn:SetScript("OnClick",function()
							BossTactics:ShowInfoFrame()
							  end)
		theFrame.LeftPane.SaveBtn = CreateFrame("Button","BT_SaveBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.SaveBtn:SetWidth(100)
		theFrame.LeftPane.SaveBtn:SetHeight(20)
		theFrame.LeftPane.SaveBtn:SetText(L["Save"])
		theFrame.LeftPane.SaveBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",120,-700)
		theFrame.LeftPane.SaveBtn:Disable()
		theFrame.LeftPane.SaveBtn:SetScript("OnClick",function()
							self:SaveValues()
							  end)
		theFrame.LeftPane.StdBtn = CreateFrame("Button","BT_StdBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.StdBtn:SetWidth(190)
		theFrame.LeftPane.StdBtn:SetHeight(20)
		theFrame.LeftPane.StdBtn:SetText(L["Recover Standard"])
		theFrame.LeftPane.StdBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",230,-700)
		theFrame.LeftPane.StdBtn:SetScript("OnClick",function()
							self:RestoreDefaults()
							  end)
		theFrame.LeftPane.SessResetBtn = CreateFrame("Button","BT_SessResetBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
		theFrame.LeftPane.SessResetBtn:SetWidth(190)
		theFrame.LeftPane.SessResetBtn:SetHeight(20)
		theFrame.LeftPane.SessResetBtn:SetText(L["Recover Session"])
		theFrame.LeftPane.SessResetBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",40,-730)
		theFrame.LeftPane.SessResetBtn:Disable()
		theFrame.LeftPane.SessResetBtn:SetScript("OnClick",function()
							self:ResetSessionData()
							  end)

		theFrame.LeftPane.NoneFont = theFrame.LeftPane:CreateFontString(nil,"OVERLAY","GameFontNormalLarge")
		theFrame.LeftPane.NoneFont:ClearAllPoints()
		theFrame.LeftPane.NoneFont:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",15,-290)
		theFrame.LeftPane.NoneFont:SetWidth(512)
		theFrame.LeftPane.NoneFont:SetText(L["No picture"])
		theFrame.LeftPane.NoneFont:SetTextColor(1,1,1)

		theFrame.LeftPane.ImgPane = CreateFrame("Frame","BT_imgPane",theFrame.LeftPane)
		theFrame.LeftPane.ImgPane:ClearAllPoints()
		theFrame.LeftPane.ImgPane:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",15,-90)
		theFrame.LeftPane.ImgPane:SetHeight(550)
		theFrame.LeftPane.ImgPane:SetWidth(512)
		theFrame.LeftPane.ImgPane.fontstrings = {}
		theFrame.LeftPane.ImgPane.LegendPane = CreateFrame("Frame","BT_legendPane",theFrame.LeftPane.ImgPane)
		--theFrame.LeftPane.ImgPane.LegendPane:SetBackdrop({
		--	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
		--	--edgeFile = "Interface\\Addons\\BossTactics\\Textures\\otravi-semi-full-border", edgeSize = 32,
		--	insets = {left = 1, right = 1, top = 1, bottom = 1},
		--})
		--theFrame.LeftPane.ImgPane.LegendPane:SetBackdropColor(100/255, 100/255, 100/255)
		--theFrame.LeftPane.ImgPane.LegendPane:SetAlpha(0.8)
		theFrame.LeftPane.ImgPane.LegendPane:ClearAllPoints()
		theFrame.LeftPane.ImgPane.LegendPane:SetPoint("BOTTOMLEFT",self.MainWindow.LeftPane.ImgPane,"BOTTOMLEFT",0,5)
		theFrame.LeftPane.ImgPane.LegendPane:SetWidth(500)
		theFrame.LeftPane.ImgPane.LegendPane:SetHeight(70)
		theFrame.LeftPane.ImgPane.LegendPane.buttons = {}
		theFrame.LeftPane.ImgPane.LegendPane.buttonPool = {}
		theFrame.LeftPane.ImgPane.LegendPane.fontstrings = {}


		theFrame.LeftPane.buttons = {}
		theFrame.LeftPane.buttonPool = {}
		dewdropInstances = self.dewdropInstances
		self:CreateDropdown(dewdropInstances, self.MainWindow.LeftPane.InstanzBtn,
			BT_InstanceDewdropClick, self.instanceTable[self.currAddon])

		local addonTable = {}
		table.foreach(self.instanceTable, function (i,v) tinsert(addonTable,{ i, i, "Menuitem" }) end)

		dewdropAddon = self.dewdropAddon
		self:CreateDropdown(dewdropAddon, self.MainWindow.LeftPane.AddonBtn,
			BT_AddonDewdropClick, addonTable)

		dewdropModes = self.dewdropModes
		self:CreateDropdown(dewdropModes, self.MainWindow.LeftPane.ModeBtn,
			BT_ModeDewdropClick, {{"25","mode25","Menuitem"},{"10","mode10","Menuitem"},{"40","mode40","Menuitem"}})

	elseif(self:IsDebug()) then
		self:Print("CreateLeftPanel: MainWindow is nil")
	end
end;

---------------------------------------------------------
--- create the right panel for normal users
---------------------------------------------------------
function BossTactics:CreateRightPanel()
	local theFrame = self.MainWindow
	if(self.MainWindow ~= nil ) then
		theFrame.RightPane = CreateFrame("Frame","BT_rightpane",theFrame)
		theFrame.RightPane:ClearAllPoints()
		theFrame.RightPane:SetPoint("TOPRIGHT",theFrame,"TOPRIGHT",-7,-30)
		theFrame.RightPane:SetHeight(theFrame:GetHeight()-35)
		theFrame.RightPane:SetWidth((theFrame:GetWidth()/2))
		theFrame.RightPane:SetBackdrop({
			bgFile = "Interface\\TabardFrame\\TabardFrameBackground", tile = false,
			--edgeFile = "Interface\\Addons\\BossTactics\\Textures\\otravi-semi-full-border", edgeSize = 32,
			insets = {left = 1, right = 1, top = 1, bottom = 1},
		})
		theFrame.RightPane:SetAlpha(0.90)
		theFrame.RightPane:SetBackdropColor(100/255, 100/255, 100/255)

		if(self.debug) then
			if(UnitInRaid(self.player))then
				self:Print("Raid:"..UnitInRaid(self.player).." Party"..UnitInParty(self.player))
			end
			if(UnitInParty(self.player))then
				self:Print(" Party"..UnitInParty(self.player))
			end
		end

		theFrame.RightPane.ScrollRight = CreateFrame("ScrollFrame","BT_MainScrollRight",theFrame.RightPane,"UIPanelScrollFrameTemplate")
		theFrame.RightPane.ScrollRight:ClearAllPoints();
		theFrame.RightPane.ScrollRight:SetPoint("TOPLEFT",theFrame.RightPane, "TOPLEFT",0,-20)
		theFrame.RightPane.ScrollRight:SetWidth(theFrame.RightPane:GetWidth()-30);
		local right_edit = CreateFrame("EditBox","BT_rightedit",theFrame.RightPane.ScrollRight)
		right_edit:ClearAllPoints();
		right_edit:SetWidth(theFrame.RightPane:GetWidth()-25)
		right_edit:SetPoint("TOPLEFT",theFrame.RightPane.ScrollRight,"TOPLEFT",0,-25)
		theFrame.RightPane.ScrollRight:SetScrollChild(right_edit)
		right_edit:SetScript("OnTextChanged", function()
				 ScrollingEdit_OnTextChanged(this:GetParent())
				end)
		right_edit:SetScript("OnCursorChanged", function()
				 ScrollingEdit_OnCursorChanged(arg1, arg2-10, arg3, arg4) end)
		right_edit:SetScript("OnUpdate", function()
				 ScrollingEdit_OnUpdate(this:GetParent()) end)
		right_edit:SetScript("OnEscapePressed", function()
					this:ClearFocus()
					end)
		right_edit:SetScript("OnChar", function()
						self:InputDataChanged()
						end)
		right_edit:SetAutoFocus(false)
		right_edit:SetMultiLine(true)
		right_edit:EnableMouse(true)
		right_edit:SetFontObject("GameFontNormal")
		right_edit:SetTextColor(1,1,1)
		right_edit:SetTextInsets(10,10,10,10)

		theFrame.RightPane.Patchlvl = theFrame.RightPane:CreateFontString(nil,"OVERLAY","GameFontNormal")
		theFrame.RightPane.Patchlvl:SetPoint("TOPLEFT",theFrame.RightPane,"TOPLEFT",10,-2)
		theFrame.RightPane.Patchlvl:SetTextColor(1,1,1)

		theFrame.RightPane.SwitchStdBtn = CreateFrame("Button","BT_SwitchStdBtn",theFrame.RightPane,"UIPanelButtonTemplate")
		theFrame.RightPane.SwitchStdBtn:SetWidth(150)
		theFrame.RightPane.SwitchStdBtn:SetHeight(20)
		theFrame.RightPane.SwitchStdBtn:SetText(L["SwitchStd"])
		theFrame.RightPane.SwitchStdBtn:SetPoint("TOPRight",theFrame.RightPane,"TOPRight",-15,0)
		theFrame.RightPane.SwitchStdBtn:Disable()
		theFrame.RightPane.SwitchStdBtn:SetFrameLevel(theFrame.RightPane.ScrollRight:GetFrameLevel()+5)
		--true:caption=show std tactic, false=show own notices
		theFrame.RightPane.SwitchStdBtn.stdTactic = true
		theFrame.RightPane.SwitchStdBtn:SetScript("OnClick",function()
							if(this.stdTactic)then
								local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
								local defaultDB = module:GetDefaults()
								local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]
								if(this:GetParent().TrashBtn.stdTactic)then
									this:GetParent().ScrollRight:GetScrollChild():SetText(defaultBoss.tactictext)
								else
									this:GetParent().ScrollRight:GetScrollChild():SetText(defaultBoss.trash)
								end
								this:GetParent().ScrollRight:GetScrollChild():SetCursorPosition(1)
								this.stdTactic = false
								this:SetText(L["SwitchMy"])
							else
								local bossDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
								if(this:GetParent().TrashBtn.stdTactic)then
									this:GetParent().ScrollRight:GetScrollChild():SetText(bossDB.tactictext)
								else
									this:GetParent().ScrollRight:GetScrollChild():SetText(bossDB.trash)
								end
								this:GetParent().ScrollRight:GetScrollChild():SetCursorPosition(1)
								this:SetText(L["SwitchStd"])
								this.stdTactic = true
							end
							  end)
		theFrame.RightPane.TrashBtn = CreateFrame("Button","BT_TrashBtn",theFrame.RightPane,"UIPanelButtonTemplate")
		theFrame.RightPane.TrashBtn:SetWidth(100)
		theFrame.RightPane.TrashBtn:SetHeight(20)
		theFrame.RightPane.TrashBtn:SetText(L["Trash"])
		theFrame.RightPane.TrashBtn:SetPoint("TOPRIGHT",theFrame.RightPane,"TOPRIGHT",-165,0)
		theFrame.RightPane.TrashBtn:Disable()
		theFrame.RightPane.TrashBtn:SetFrameLevel(theFrame.RightPane.ScrollRight:GetFrameLevel()+5)
		theFrame.RightPane.TrashBtn.stdTactic = true
		theFrame.RightPane.TrashBtn:SetScript("OnClick",function()
							local bossDB = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
							if(this.stdTactic)then
								this:GetParent().ScrollRight:GetScrollChild():SetText(bossDB.trash)
								this:GetParent().ScrollRight:GetScrollChild():SetCursorPosition(1)
								this.stdTactic = false
								self:CheckUserWrittenText("trash")
								this:GetParent().SaveBtn:Disable()
								this:SetText(L["Tactic"])
							else
								this:GetParent().ScrollRight:GetScrollChild():SetText(bossDB.tactictext)
								this:GetParent().ScrollRight:GetScrollChild():SetCursorPosition(1)
								this:SetText(L["Trash"])
								self:CheckUserWrittenText("tactic")
								this:GetParent().SaveBtn:Disable()
								this.stdTactic = true
							end
							  end)
		theFrame.RightPane.SaveBtn = CreateFrame("Button","BT_SaveBtn",theFrame.RightPane,"UIPanelButtonTemplate")
		theFrame.RightPane.SaveBtn:SetWidth(100)
		theFrame.RightPane.SaveBtn:SetHeight(20)
		theFrame.RightPane.SaveBtn:SetText(L["Save"])
		theFrame.RightPane.SaveBtn:SetPoint("TOPRIGHT",theFrame.RightPane,"TOPRIGHT",-270,0)
		theFrame.RightPane.SaveBtn:Disable()
		theFrame.RightPane.SaveBtn:SetFrameLevel(theFrame.RightPane.ScrollRight:GetFrameLevel()+5)
		theFrame.RightPane.SaveBtn:SetScript("OnClick",function()
							self:SaveText()
							  end)


		--put the view elements for "normal" users
		--if(not(self:IsRaidLeader())) then
			theFrame.RightPane.ScrollRight:SetHeight(theFrame.RightPane:GetHeight()-30);
			right_edit:SetHeight(theFrame.RightPane:GetHeight())
		--put additional view elements for raidleaders and assistants
		--else

		--end
	elseif(self:IsDebug()) then
		self:Print("CreateLeftPanel: MainWindow is nil")
	end
end;

----------------------------------------------------------------
--checks if we have user written texts
--type: string: which value shall be checked
----------------------------------------------------------------

function BossTactics:CheckUserWrittenText(type)

	local boss = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
	local module = LibStub("AceAddon-3.0"):GetAddon( self.modules[self.currModuleId].id )
	local defaultDB = module:GetDefaults()
	local defaultBoss = defaultDB.profile.bosses[self.currInstanceMode][self.currBossId]
	local rightpane = self.MainWindow.RightPane

	if(type == "tactic")then
		if(defaultBoss.tactictext ~= boss.tactictext)then
			rightpane.SwitchStdBtn:Enable()
			rightpane.SwitchStdBtn:SetText(L["SwitchStd"])
			rightpane.SwitchStdBtn.stdTactic = true
		else
			rightpane.SwitchStdBtn:Disable()
		end
	elseif(type == "trash")then
		if(defaultBoss.trash ~= boss.trash)then
			rightpane.SwitchStdBtn:Enable()
			rightpane.SwitchStdBtn:SetText(L["SwitchStd"])
			rightpane.SwitchStdBtn.stdTactic = true
		else
			rightpane.SwitchStdBtn:Disable()
		end
	end

end;

----------------------------------------------------------------
--handels if you become raidleader
----------------------------------------------------------------

function BossTactics:BecomeRaidLeader()

	local theFrame = self.MainWindow
	if(theFrame ~= nil)then
		--change the left panel
		if(theFrame.LeftPane.SessBtn == nil)then
			theFrame.LeftPane.SessBtn = CreateFrame("Button","BT_SessBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
			theFrame.LeftPane.SessBtn:SetWidth(150)
			theFrame.LeftPane.SessBtn:SetHeight(20)
			theFrame.LeftPane.SessBtn:SetText(L["Session"])
			theFrame.LeftPane.SessBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",40,-730)
			theFrame.LeftPane.SessBtn:SetScript("OnClick",function()
							if(not self:IsSession())then
								this:SetText(L["EndSession"])
								self:StartSession()
							else
								this:SetText(L["Session"])
								self:EndSession()
							end
							  end)
		else
			theFrame.LeftPane.SessBtn:Show()
		end

		if(self:IsSession() and not self.isSessionLeader)then
			theFrame.LeftPane.SessBtn:Disable()
		end

		theFrame.LeftPane.SessResetBtn:ClearAllPoints()
		theFrame.LeftPane.SessResetBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",200,-730)

		theFrame.LeftPane.SyncBtn:ClearAllPoints()
		theFrame.LeftPane.SyncBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",340,-760)

		if(theFrame.LeftPane.VerBtn == nil)then
			theFrame.LeftPane.VerBtn = CreateFrame("Button","BT_Sess2Btn",theFrame.LeftPane,"UIPanelButtonTemplate")
			theFrame.LeftPane.VerBtn:SetWidth(150)
			theFrame.LeftPane.VerBtn:SetHeight(20)
			theFrame.LeftPane.VerBtn:SetText(L["VerBtn"])
			theFrame.LeftPane.VerBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",180,-760)
			theFrame.LeftPane.VerBtn:SetScript("OnClick",function()
							self:CompareRaid()
							self:BT_SendDataMessage("{RLVERCH}")
							  end)
		else
			theFrame.LeftPane.VerBtn:Show()
		end

		if(theFrame.LeftPane.RasendBtn == nil)then
			theFrame.LeftPane.RasendBtn = CreateFrame("Button","BT_RasendBtn",theFrame.LeftPane,"UIPanelButtonTemplate")
			theFrame.LeftPane.RasendBtn:SetWidth(130)
			theFrame.LeftPane.RasendBtn:SetHeight(20)
			theFrame.LeftPane.RasendBtn:SetText(L["RaSend"])
			theFrame.LeftPane.RasendBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",40,-760)
			theFrame.LeftPane.RasendBtn:SetScript("OnClick",function()
							self:SendRaMessages()
							  end)
			if(self.currInstanceId == "EMPTY")then
				theFrame.LeftPane.RasendBtn:Disable()
			end
		else
			theFrame.LeftPane.RasendBtn:Show()
		end


		--right pane elements
		theFrame.RightPane.ScrollRight:SetHeight(theFrame.RightPane:GetHeight()-225);
		theFrame.RightPane.ScrollRight:GetScrollChild():SetHeight(theFrame.RightPane:GetHeight()-200)

		--scroll pane for the version list of the raidmembers
		--theFrame.RightPane.ScrollAddonlist = CreateFrame("ScrollFrame","ScrollAddonlist",theFrame.RightPane,"UIPanelScrollFrameTemplate")
		--theFrame.RightPane.ScrollAddonlist:ClearAllPoints();
		--theFrame.RightPane.ScrollAddonlist:SetPoint("BOTTOMLEFT",theFrame.RightPane, "BOTTOMLEFT", 0,100)
		--theFrame.RightPane.ScrollAddonlist:SetWidth((theFrame.RightPane:GetWidth()/2)-25);
		--theFrame.RightPane.ScrollAddonlist:SetHeight(90);

		--scrollpane for leader chat
		--theFrame.RightPane.ScrollLeaderChat = CreateFrame("ScrollFrame","ScrollLeaderChat",theFrame.RightPane,"UIPanelScrollFrameTemplate")
		--theFrame.RightPane.ScrollLeaderChat:ClearAllPoints();
		--theFrame.RightPane.ScrollLeaderChat:SetPoint("BOTTOMRIGHT",theFrame.RightPane, "BOTTOMRIGHT", -26,25)
		--theFrame.RightPane.ScrollLeaderChat:SetWidth((theFrame.RightPane:GetWidth()/2)-25);
		--theFrame.RightPane.ScrollLeaderChat:SetHeight(175);

		--scrollpane for the /ra massages
		if(theFrame.RightPane.ScrollRaidMsgFrame == nil)then
			theFrame.RightPane.ScrollRaidMsgFrame = CreateFrame("ScrollFrame","BT_ScrollRaidMsgFrame",theFrame.RightPane,"UIPanelScrollFrameTemplate")
			theFrame.RightPane.ScrollRaidMsgFrame:ClearAllPoints();
			theFrame.RightPane.ScrollRaidMsgFrame:SetPoint("BOTTOMLEFT",theFrame.RightPane, "BOTTOMLEFT", 0,10)
			theFrame.RightPane.ScrollRaidMsgFrame:SetWidth((theFrame.RightPane:GetWidth()/2)-35);
			theFrame.RightPane.ScrollRaidMsgFrame:SetHeight(75);
		else
			theFrame.RightPane.ScrollRaidMsgFrame:Show()
		end

		--personalize the scrollpane for addonlist
		if(theFrame.RightPane.versionlistFrame == nil)then
			local addonlist_frame = CreateFrame("Frame","BT_addonlistframe",theFrame.RightPane)
			theFrame.RightPane.versionlistFrame = addonlist_frame
			addonlist_frame:ClearAllPoints();
			addonlist_frame:SetPoint("BOTTOMLEFT",theFrame.RightPane, "BOTTOMLEFT", 0,100)
			addonlist_frame:SetWidth(theFrame.RightPane:GetWidth()/2);
			addonlist_frame:SetHeight(90);
			addonlist_frame:SetBackdrop({
			--bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
			--edgeFile = "Interface\\TutorialFrame\\TutorialFrameBorder",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			--insets = {left = 1, right = 1, top = 1, bottom = 1},
			})
			addonlist_frame:SetBackdropBorderColor(16/255,24/255,177/255)
			addonlist_frame:SetBackdropColor(24/255, 24/255, 24/255)
			theFrame.RightPane.titleAddonlistScroll = theFrame.RightPane:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
		    theFrame.RightPane.titleAddonlistScroll:SetTextColor(1,1,1)
			theFrame.RightPane.titleAddonlistScroll:SetText(L["Title Addonlist"])
			theFrame.RightPane.titleAddonlistScroll:SetPoint("BOTTOMLEFT",theFrame.RightPane,"BOTTOMLEFT",5,192)
			addonlist_frame.offset = 1
			addonlist_frame.scrollUp = false
			addonlist_frame.TextArray = {}

			addonlist_frame.scrollDownBtn=CreateFrame("Button","BT_scrolldown_addonlist",addonlist_frame)
			addonlist_frame.scrollDownBtn:SetNormalTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up.blp")
			addonlist_frame.scrollDownBtn:SetPushedTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Down.blp")
			addonlist_frame.scrollDownBtn:SetHighlightTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Highlight.blp")
			addonlist_frame.scrollDownBtn:SetWidth(20)
			addonlist_frame.scrollDownBtn:SetHeight(20)
			addonlist_frame.scrollDownBtn:SetPoint("BOTTOMRIGHT",addonlist_frame,"BOTTOMRIGHT",-5,7)
			addonlist_frame.scrollDownBtn:SetScript("OnClick",function()
					if(this:GetParent().offset< #(this:GetParent().TextArray))then
						this:GetParent().offset = this:GetParent().offset+1
						BossTactics:ScrollString(this:GetParent(),this:GetParent().TextArray,false)
					end
					 end)

			addonlist_frame.scrollUpBtn=CreateFrame("Button","BT_scrollup_addonlist",addonlist_frame)
			addonlist_frame.scrollUpBtn:SetNormalTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Up.blp")
			addonlist_frame.scrollUpBtn:SetPushedTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Down.blp")
			addonlist_frame.scrollUpBtn:SetHighlightTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Highlight.blp")
			addonlist_frame.scrollUpBtn:SetWidth(20)
			addonlist_frame.scrollUpBtn:SetHeight(20)
			addonlist_frame.scrollUpBtn:SetPoint("TOPRIGHT",addonlist_frame,"TOPRIGHT",-5,-7)
			addonlist_frame.scrollUpBtn:SetScript("OnClick",function()
					if(this:GetParent().offset > 1)then
						this:GetParent().scrollUp = true;
						this:GetParent().offset = this:GetParent().offset-1
						BossTactics:ScrollString(this:GetParent(),this:GetParent().TextArray,false)
					end
					 end)
		else
			theFrame.RightPane.versionlistFrame:Show()
		end

		--personalize the scrollpane for raidmessages
		if(theFrame.RightPane.ScrollRaidMsgFrame:GetScrollChild() == nil)then
			local raidmsg_edit = CreateFrame("EditBox","BT_raidmsgedit",theFrame.RightPane.ScrollRaidMsgFrame)
			theFrame.RightPane.FrameOfRaidMsg = CreateFrame("Frame","BT_addonlistframe_border",theFrame.RightPane)
			theFrame.RightPane.FrameOfRaidMsg:SetBackdrop({
			--bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
			--edgeFile = "Interface\\TutorialFrame\\TutorialFrameBorder",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			--insets = {left = 1, right = 1, top = 10, bottom = 1},
			})
			theFrame.RightPane.FrameOfRaidMsg:SetBackdropBorderColor(16/255,24/255,177/255)
			theFrame.RightPane.FrameOfRaidMsg:SetHeight(95)
			theFrame.RightPane.FrameOfRaidMsg:SetWidth(theFrame.RightPane:GetWidth()/2)
			theFrame.RightPane.FrameOfRaidMsg:ClearAllPoints()
			theFrame.RightPane.FrameOfRaidMsg:SetPoint("BOTTOMLEFT",theFrame.RightPane,"BOTTOMLEFT",0,0)

			raidmsg_edit:ClearAllPoints();
			raidmsg_edit:SetWidth(theFrame.RightPane:GetWidth()/2-30)
			raidmsg_edit:SetHeight(65)
			raidmsg_edit:SetPoint("TOPLEFT")
			theFrame.RightPane.ScrollRaidMsgFrame:SetScrollChild(raidmsg_edit)
			theFrame.RightPane.ScrollRaidMsgFrame:SetBackdropColor(24/255, 24/255, 24/255)
			theFrame.RightPane.titleRaidmsgScroll = theFrame.RightPane:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
		    theFrame.RightPane.titleRaidmsgScroll:SetTextColor(1,1,1)
			theFrame.RightPane.titleRaidmsgScroll:SetText(L["Title Raidmessage"])
			theFrame.RightPane.titleRaidmsgScroll:SetPoint("BOTTOMLEFT",theFrame.RightPane,"BOTTOMLEFT",5,92)
			--raidmsg_edit:EnableKeyboard()
			raidmsg_edit:SetScript("OnTextChanged", function()
					 ScrollingEdit_OnTextChanged(this:GetParent())
					  end)
			raidmsg_edit:SetScript("OnCursorChanged", function()
					 ScrollingEdit_OnCursorChanged(arg1, arg2-10, arg3, arg4) end)
			raidmsg_edit:SetScript("OnUpdate", function()
					 ScrollingEdit_OnUpdate(this:GetParent()) end)
			raidmsg_edit:SetScript("OnEscapePressed", function()
						this:ClearFocus()
						end)
			raidmsg_edit:SetScript("OnChar", function()
						self:DataChanged()
						end)
			raidmsg_edit:SetAutoFocus(false)
			raidmsg_edit:SetMultiLine(true)
			raidmsg_edit:EnableMouse(true)
			raidmsg_edit:SetFontObject("GameFontNormal")
			raidmsg_edit:SetTextColor(223/255,96/255,3/255)
			raidmsg_edit:SetTextInsets(10,10,10,10)
		end
		if(self.currInstanceId ~= "EMPTY")then
			local boss = self.modules[self.currModuleId].bosses[self.currInstanceMode][self.currBossId]
			theFrame.RightPane.ScrollRaidMsgFrame:GetScrollChild():SetText(boss.ratext)
		end

		--personalize the scrollpane for leaderchat
		if(theFrame.RightPane.LeaderChatFrame == nil)then
			local leaderchat_frame = CreateFrame("Frame","BT_leaderchatframe",theFrame.RightPane)
			theFrame.RightPane.LeaderChatFrame = leaderchat_frame
			leaderchat_frame:ClearAllPoints();
			leaderchat_frame:SetPoint("BOTTOMRIGHT",theFrame.RightPane, "BOTTOMRIGHT", 0,25)
			leaderchat_frame:SetWidth(theFrame.RightPane:GetWidth()/2);
			leaderchat_frame:SetHeight(175);
			leaderchat_frame.offset = 1
			leaderchat_frame.scrollUp = false

			leaderchat_frame.scrollDownBtn=CreateFrame("Button","BT_scrolldown_leaderchat",leaderchat_frame)
			leaderchat_frame.scrollDownBtn:SetNormalTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up.blp")
			leaderchat_frame.scrollDownBtn:SetPushedTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Down.blp")
			leaderchat_frame.scrollDownBtn:SetHighlightTexture("Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Highlight.blp")
			leaderchat_frame.scrollDownBtn:SetWidth(20)
			leaderchat_frame.scrollDownBtn:SetHeight(20)
			leaderchat_frame.scrollDownBtn:SetPoint("BOTTOMRIGHT",leaderchat_frame,"BOTTOMRIGHT",-5,7)
			leaderchat_frame.scrollDownBtn:SetScript("OnClick",function()
					if(this:GetParent().offset< #(this:GetParent().TextArray))then
						this:GetParent().offset = this:GetParent().offset+1
						BossTactics:ScrollString(this:GetParent(),this:GetParent().TextArray,false)
					end
					 end)

			leaderchat_frame.scrollUpBtn=CreateFrame("Button","BT_scrollup_leaderchat",leaderchat_frame)
			leaderchat_frame.scrollUpBtn:SetNormalTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Up.blp")
			leaderchat_frame.scrollUpBtn:SetPushedTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Down.blp")
			leaderchat_frame.scrollUpBtn:SetHighlightTexture("Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Highlight.blp")
			leaderchat_frame.scrollUpBtn:SetWidth(20)
			leaderchat_frame.scrollUpBtn:SetHeight(20)
			leaderchat_frame.scrollUpBtn:SetPoint("TOPRIGHT",leaderchat_frame,"TOPRIGHT",-5,-7)
			leaderchat_frame.scrollUpBtn:SetScript("OnClick",function()
					if(this:GetParent().offset > 1)then
						this:GetParent().scrollUp = true;
						this:GetParent().offset = this:GetParent().offset-1
						BossTactics:ScrollString(this:GetParent(),this:GetParent().TextArray,false)
					end
					 end)

			leaderchat_frame:SetBackdrop({
			--bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 12,
			--edgeFile = "Interface\\TutorialFrame\\TutorialFrameBorder",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			insets = {left = 1, right = 1, top = 1, bottom = 1},
			})
			leaderchat_frame:SetBackdropBorderColor(16/255,24/255,177/255)
			leaderchat_frame:SetBackdropColor(24/255, 24/255, 24/255)
			leaderchat_frame.TextArray = {}
			theFrame.RightPane.LeaderChatInput = CreateFrame("EditBox","BT_leaderchat_edit",theFrame.RightPane, "InputBoxTemplate")
			theFrame.RightPane.LeaderChatInput:SetMaxLetters(200)
			theFrame.RightPane.LeaderChatInput:SetPoint("BOTTOMRIGHT",theFrame.RightPane, "BOTTOMRIGHT", 0,5)
			theFrame.RightPane.LeaderChatInput:SetWidth((theFrame.RightPane:GetWidth()/2)-10);
			theFrame.RightPane.LeaderChatInput:SetHeight(20);
			theFrame.RightPane.LeaderChatInput:SetAutoFocus(false)
			theFrame.RightPane.LeaderChatInput:SetScript("OnEnterPressed", function()
						if(this:GetText() ~= nil and strlen(this:GetText())>0) then
							BossTactics:BT_SendDataMessage("{LCH}"..this:GetText())
						end
						this:SetText("")
						end)
			theFrame.RightPane.LeaderChatInput:SetScript("OnEscapePressed", function()
						this:ClearFocus()
						end)
			else
				theFrame.RightPane.LeaderChatFrame:Show()
				theFrame.RightPane.LeaderChatInput:Show()
				theFrame.RightPane.titleAddonlistScroll:Show()
				theFrame.RightPane.titleRaidmsgScroll:Show()
				theFrame.RightPane.FrameOfRaidMsg:Show()
		end

		--draggable buttons generate if needet
		local found = false

		for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(not v.dragged) then
				found = true
			else
				self.MainWindow.LeftPane.buttons[i].delBtn:Show()
				self.MainWindow.LeftPane.buttons[i].editBtn:Show()
			end
		end

		if(not found) then
			BossTactics:CreateNewMapButton(self.buttonTypes.melee, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.rangedDPS, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.healer, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.tank, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.boss, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.boss2, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.boss3, true)
			BossTactics:CreateNewMapButton(self.buttonTypes.boss4, true)
		end
	end
end;

----------------------------------------------------------------
--handels if you become raidleader
----------------------------------------------------------------

function BossTactics:LooseRaidLeader()

	local theFrame = self.MainWindow
	if(self.MainWindow ~= nil)then
		theFrame.RightPane.ScrollRight:SetHeight(theFrame.RightPane:GetHeight()-30);
		theFrame.RightPane.ScrollRight:GetScrollChild():SetHeight(theFrame.RightPane:GetHeight())

		theFrame.LeftPane.SessResetBtn:ClearAllPoints()
		theFrame.LeftPane.SessResetBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",40,-730)

		theFrame.LeftPane.SyncBtn:ClearAllPoints()
		theFrame.LeftPane.SyncBtn:SetPoint("TOPLEFT",theFrame.LeftPane,"TOPLEFT",240,-730)

		--if the session button was there, the rest is also there
		if(theFrame.LeftPane.SessBtn ~= nil) then
			theFrame.LeftPane.SessBtn:Hide()
			theFrame.LeftPane.VerBtn:Hide()
			theFrame.LeftPane.RasendBtn:Hide()
			theFrame.RightPane.ScrollRaidMsgFrame:Hide()
			theFrame.RightPane.LeaderChatFrame:Hide()
			theFrame.RightPane.LeaderChatInput:Hide()
			theFrame.RightPane.versionlistFrame:Hide()
			theFrame.RightPane.titleAddonlistScroll:Hide()
			theFrame.RightPane.titleRaidmsgScroll:Hide()
			theFrame.RightPane.FrameOfRaidMsg:Hide()
		end
		for i,v in ipairs(self.MainWindow.LeftPane.buttons) do
			if(not v.dragged) then
				v:Hide()
			else
				self.MainWindow.LeftPane.buttons[i].delBtn:Hide()
				self.MainWindow.LeftPane.buttons[i].editBtn:Hide()
			end
		end
	end
end;

------------------------------------------------------
---create a new button
--type object of a button type;
--pool bool: true, if this is a new poolbutton
-- Optional: caption, x, y
------------------------------------------------------
function BossTactics:CreateNewMapButton(type, pool, caption, x, y, id)

	if(type == nil)then return end

	if(not self.MainWindow) then return end

	local xpos, ypos
	if(x ~= nil) then
		xpos = x
	else
		xpos = type.x
	end
	if(y ~= nil) then
		ypos = y
	else
		ypos = type.y
	end
	if(id == nil) then
		id = 0
	end

	local theFrame = self.MainWindow.LeftPane
	local i = #(theFrame.buttons)+1
	if(#theFrame.buttonPool > 0)then
		theFrame.buttons[i] = tremove(theFrame.buttonPool)
		if(self.debug)then
			self:Print("taken from buttonpool")
		end
	else
		theFrame.buttons[i]=CreateFrame("Button","BT_button_"..i,theFrame)
	end
	theFrame.buttons[i]:SetWidth(type.width)
	theFrame.buttons[i]:SetHeight(type.height)
	theFrame.buttons[i]:ClearAllPoints()
	theFrame.buttons[i]:SetPoint("TOPLEFT",theFrame,"TOPLEFT",xpos,ypos)
	theFrame.buttons[i]:SetMovable(true)
	theFrame.buttons[i]:SetClampedToScreen( true )
	theFrame.buttons[i].oldX = xpos
	theFrame.buttons[i].oldY = ypos
	theFrame.buttons[i].typename = type.name
	if(theFrame.buttons[i].text == nil)then
		theFrame.buttons[i].text = theFrame.buttons[i]:CreateFontString(nil,"OVERLAY","GameFontNormal")
		theFrame.buttons[i].text:SetPoint("Bottom",theFrame.buttons[i],"Bottom",0,-7)
		theFrame.buttons[i].text:SetTextColor(1.0,1.0,1.0,1.0)
	else
		theFrame.buttons[i].text:SetText("")
	end
	if(theFrame.buttons[i].editBtn == nil)then
		theFrame.buttons[i].editBtn = CreateFrame("Button","BT_button_"..i.."edit",theFrame.buttons[i],"UIPanelButtonTemplate")
		theFrame.buttons[i].editBtn:SetWidth(10)
		theFrame.buttons[i].editBtn:SetHeight(15)
		theFrame.buttons[i].editBtn:SetText("E")
		theFrame.buttons[i].editBtn:SetPoint("BOTTOMRIGHT",theFrame.buttons[i],"BOTTOMRIGHT",5,5)
		theFrame.buttons[i].editBtn:SetScript("OnClick",function()
				 if(this:GetParent().text:GetText() == nil or this:GetParent().text:GetText() == "") then
				 	BossTactics:ShowButtonInputFrame(this:GetParent().text,this:GetParent(),BossTactics:GetTextFromButtonType(this:GetParent().typename))
				 else
				 	BossTactics:ShowButtonInputFrame(this:GetParent().text,this:GetParent())
				 end
		 	end)
		theFrame.buttons[i].delBtn = CreateFrame("Button","BT_button_"..i.."delete",theFrame.buttons[i],"UIPanelButtonTemplate")
		theFrame.buttons[i].delBtn:SetWidth(10)
		theFrame.buttons[i].delBtn:SetHeight(10)
		theFrame.buttons[i].delBtn:SetText("x")
		theFrame.buttons[i].delBtn:SetPoint("BOTTOMRIGHT",theFrame.buttons[i],"BOTTOMRIGHT",5,20)
		theFrame.buttons[i].delBtn:SetScript("OnClick",function()  BossTactics:RemoveButton(this:GetParent().id,this:GetParent().instId,this:GetParent().bossId,this:GetParent().imgId)  end)
	end

	--unique id of a button to an instance
	theFrame.buttons[i].id = tonumber(id)
	theFrame.buttons[i].instId = self.currInstanceId
	theFrame.buttons[i].imgId = self.currImgId
	theFrame.buttons[i].bossId = self.currBossId
	theFrame.buttons[i].moduleId = self.currModuleId

	theFrame.buttons[i]:SetScript("OnMouseDown", function()
					if ( ( ( not this.isLocked ) or ( this.isLocked == 0 ) )
							and  arg1 == "LeftButton"  and self.currModuleId ~= -1 and self:IsRaidLeader()) then
					  this:StartMoving();
					  this.isMoving = true;
					 end
					end)
	theFrame.buttons[i]:SetScript("OnMouseUp", function()
					if ( this.isMoving ) then
					  this:StopMovingOrSizing();
					  this.isMoving = false;
					  BossTactics:DragFrame(this,BossTactics.MainWindow.LeftPane)
					 end
					end)

	theFrame.buttons[i]:SetNormalTexture(type.button)
	theFrame.buttons[i]:SetAlpha(1.0)

	--if pool -> not dragged, else dragged
	theFrame.buttons[i].dragged = not pool;

	if(caption ~= nil) then
		theFrame.buttons[i].text:SetText(caption)
	else
		theFrame.buttons[i].text:SetText("")
	end
	if(pool or not self:IsRaidLeader()) then
		theFrame.buttons[i].delBtn:Hide()
		theFrame.buttons[i].editBtn:Hide()
	end
	theFrame.buttons[i]:Show()
	if(self.debug)then
		self:Print("Debug: Button with ID: "..theFrame.buttons[i].id.." created")
	end
end;

--------------------------------------------------------------
--creates a fontstring on the map
--text:string,x:double,y:double,font: the font
--r,g,b color values
--------------------------------------------------------------

function BossTactics:CreateMapFontstring(text,x,y,font,r,g,b)

	local theFrame = self.MainWindow.LeftPane.ImgPane
	if(font == nil)then
		font = "MailTextFontNormal"
	end
	if(r == nil) then
		r = 1
	end
	if(g == nil) then
		g = 1
	end
	if(b == nil) then
		b = 1
	end

	local fontstr = theFrame:CreateFontString(nil,"OVERLAY",font)
	fontstr:SetTextColor(r,g,b)
	fontstr:SetText(text)
	fontstr:SetPoint("TOPLEFT",theFrame,"TOPLEFT",x,y)
	tinsert(theFrame.fontstrings,fontstr)

end;

------------------------------------------------------------
---called whenever there are changes in data
------------------------------------------------------------

function BossTactics:DataChanged()

	if(not self.dataChanged and self.currInstanceId ~= "EMPTY")then
		self.MainWindow.LeftPane.SaveBtn:Enable()
		self.dataChanged = true
		local imgdata = {}
		imgdata.instId = self.currInstanceId
		imgdata.imgId = self.currImgId
		imgdata.bossId = self.currBossId
		tinsert(self.dataChangedArray,imgdata)
	end

end;

------------------------------------------------------------
---called whenever there are changes in text data
------------------------------------------------------------

function BossTactics:InputDataChanged()

	if(self.currInstanceId ~= "EMPTY")then
		self.MainWindow.RightPane.SaveBtn:Enable()
	end

end;

------------------------------------------------------------
--remove a button from the leftpanel
--id: id of the button
------------------------------------------------------------

function BossTactics:RemoveButton(id, instId, bossId, imgId)

	if(id == nil) then return end
	for i,val in ipairs(self.MainWindow.LeftPane.buttons)do
		if(val.id == id and val.instId == instId and val.bossId == bossId
			and val.imgId == imgId)then
			val:Hide()
			tinsert(self.MainWindow.LeftPane.buttonPool, table.remove(self.MainWindow.LeftPane.buttons,i))
			if(self:IsSession())then
				BossTactics:BT_SendDataMessage("{BTRM:"..id..":"..instId..":"..bossId..":"..imgId.."}")
			end
		end
	end
	self:DataChanged()
end;


------------------------------------------------------------
--show input dialog
--fontstring: fontstring object which should be updated
-- suggestion: string
------------------------------------------------------------

function BossTactics:ShowButtonInputFrame(fontstring, btn, suggestion)
	local theFrame = self.MainWindow
	if(theFrame.ButtonInputFrame == nil)then
		theFrame.ButtonInputFrame = CreateFrame("Frame","BT_Buttoninputframe",theFrame)
		theFrame.ButtonInputFrame:ClearAllPoints()
		theFrame.ButtonInputFrame:SetPoint("CENTER",theFrame)
		theFrame.ButtonInputFrame:SetHeight(100)
		theFrame.ButtonInputFrame:SetWidth(220)
		theFrame.ButtonInputFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		theFrame.ButtonInputFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--theFrame.ButtonInputFrame:SetBackdropBorderColor(1.0,0,0.0)

		theFrame.ButtonInputFrame:SetFrameLevel(theFrame:GetFrameLevel()+20)

		theFrame.ButtonInputFrame.OkBtn = CreateFrame("Button","BT_buttoninputframe_ok",theFrame.ButtonInputFrame,"UIPanelButtonTemplate")
		theFrame.ButtonInputFrame.OkBtn:SetWidth(100)
		theFrame.ButtonInputFrame.OkBtn:SetHeight(20)
		theFrame.ButtonInputFrame.OkBtn:SetText(L["Ok"])
		theFrame.ButtonInputFrame.OkBtn:SetPoint("BOTTOMRIGHT",theFrame.ButtonInputFrame,"BOTTOMRIGHT",-10,15)
		theFrame.ButtonInputFrame.OkBtn:SetScript("OnClick",function()
						local tmptxt = " "
						if(this:GetParent().input:GetText() ~= nil and strlen(this:GetParent().input:GetText())>0)then
							tmptxt = this:GetParent().input:GetText()
						end
						this:GetParent().currFontstring:SetText(tmptxt)
						self:DataChanged()
						if(self:IsSession())then
							BossTactics:BT_SendDataMessage("{BTCT:"..this:GetParent().currBtn.id..":"..this:GetParent().currBtn.instId..":"..this:GetParent().currBtn.bossId..":"..this:GetParent().currBtn.imgId..":"..tmptxt.."}")
						end
						this:GetParent().input:SetText("")
						this:GetParent():Hide()
						  end)

		theFrame.ButtonInputFrame.CBtn = CreateFrame("Button","BT_buttoninputframe_c",theFrame.ButtonInputFrame,"UIPanelButtonTemplate")
		theFrame.ButtonInputFrame.CBtn:SetWidth(100)
		theFrame.ButtonInputFrame.CBtn:SetHeight(20)
		theFrame.ButtonInputFrame.CBtn:SetText(L["Cancel"])
		theFrame.ButtonInputFrame.CBtn:SetPoint("BOTTOMRIGHT",theFrame.ButtonInputFrame,"BOTTOMRIGHT",-110,15)
		theFrame.ButtonInputFrame.CBtn:SetScript("OnClick",function()
						this:GetParent().input:SetText("")
						this:GetParent():Hide()
											 end)
		theFrame.ButtonInputFrame.title = theFrame.ButtonInputFrame:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
	    theFrame.ButtonInputFrame.title:SetTextColor(1,1,1)
		theFrame.ButtonInputFrame.title:SetText(L["Title Inputframe"])
		theFrame.ButtonInputFrame.title:SetPoint("TOP",theFrame.ButtonInputFrame,"TOP",0,-15)

		theFrame.ButtonInputFrame.input = CreateFrame("EditBox","BT_buttonInputFrameBox",theFrame.ButtonInputFrame, "InputBoxTemplate")
		theFrame.ButtonInputFrame.input:SetMaxLetters(20)
		theFrame.ButtonInputFrame.input:SetPoint("CENTER",theFrame.ButtonInputFrame, "CENTER", 0,5)
		theFrame.ButtonInputFrame.input:SetWidth(150);
		theFrame.ButtonInputFrame.input:SetHeight(20);
		theFrame.ButtonInputFrame.input:SetScript("OnEnterPressed", function()
					local tmptxt = " "
					if(this:GetText() ~= nil and strlen(this:GetText())>0) then
						tmptxt = this:GetParent().input:GetText()
					end
					this:GetParent().currFontstring:SetText(tmptxt)
					self:DataChanged()
					if(self:IsSession())then
						BossTactics:BT_SendDataMessage("{BTCT:"..this:GetParent().currBtn.id..":"..this:GetParent().currBtn.instId..":"..this:GetParent().currBtn.bossId..":"..this:GetParent().currBtn.imgId..":"..tmptxt.."}")
					end
					this:SetText("")
					this:GetParent():Hide()
					end)
		theFrame.ButtonInputFrame.input:SetScript("OnEscapePressed", function()
					this:ClearFocus()
					this:SetText("")
					this:GetParent():Hide()
					end)
	end
	theFrame.ButtonInputFrame.currFontstring = fontstring
	theFrame.ButtonInputFrame.currBtn = btn
	if(suggestion ~= nil)then
		theFrame.ButtonInputFrame.input:SetText(suggestion)
	else
		theFrame.ButtonInputFrame.input:SetText(fontstring:GetText())
	end
	theFrame.ButtonInputFrame.input:SetFocus()
	theFrame.ButtonInputFrame:Show()
end;

----------------------------------------------------------------------
---functions to create a dragable minimap button
----------------------------------------------------------------------

function BossTactics:CreateMinimapButton()

	if(self.MinimapBtnFrame == nil) then
	self.MinimapBtnFrame = CreateFrame("Frame","BT_Minimapbtnframe",Minimap)
	local minimapBtn = CreateFrame("Button","BT_Minimapbtn",self.MinimapBtnFrame)
	self.MinimapBtnFrame.button = minimapBtn
	self.MinimapBtnFrame:EnableMouse(true)
	self.MinimapBtnFrame:SetFrameStrata("MEDIUM")

	minimapBtn:SetWidth(32)
	minimapBtn:SetHeight(32)
	minimapBtn:SetPoint("TOPLEFT","Minimap","TOPLEFT",self.db.profile.minimapX,self.db.profile.minimapY)
	minimapBtn:SetMovable(true)
	minimapBtn:SetNormalTexture("Interface\\AddOns\\BossTactics\\Textures\\bt_minimap")
	minimapBtn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
	minimapBtn.frame = minimapBtn:CreateTexture("Interface\\Minimap\\Minimap-TrackingBorder","OVERLAY",minimapBtn)
	minimapBtn.frame:SetPoint("TOPLEFT")
	minimapBtn.frame:SetWidth(52)
	minimapBtn.frame:SetHeight(52)
	minimapBtn.frame:SetTexture("Interface\\Minimap\\Minimap-TrackingBorder")


	minimapBtn:SetScript("OnLoad", function()
					this:SetFrameLevel(5);
					this:RegisterForClicks("LeftButtonUp", "RightButtonDown", "RightButtonUp");
					this.dragged = false;
					end)
	minimapBtn:SetScript("OnDragStart", function()
					this.dragged = true;
					end)
	minimapBtn:SetScript("OnDragStop", function()
					this.dragged = false;
						if (MobileMinimapButtons_Coords) then
							MobileMinimapButtons_Coords["BT_Minimapbtn"] = nil; -- fix for 'MobileMinimapButtons' doing damn *censored*!
						end
					end)
	minimapBtn:SetScript("OnUpdate", function()
					if(this.dragged == true) then
							BossTactics:MinimapBtnBeingDragged()
					end
						-- auto updater:
						if (this.BT_auto_tooltip and GetTime() - this.BT_auto_tooltip > 1) then
							this.BT_auto_tooltip = false;
							BossTactics:MinimapBtnOnEnter(true);
						elseif (not this.BT_auto_tooltip) then
							this.BT_auto_tooltip = GetTime();
						end
					end)
	minimapBtn:SetScript("OnClick", function()
					if(arg1 == "LeftButton")then
						BossTactics:openBossFrame()
					end
						BossTactics:MinimapBtnOnEnter(true);
					end)
	minimapBtn:SetScript("OnEnter", function()
					this:RegisterForDrag("RightButton"); -- moved here to fix 'MobileMinimapButtons' and possible other AddOns doing damn *censored*!
					BossTactics:MinimapBtnOnEnter();
					end)
	minimapBtn:SetScript("OnLeave", function()
					GameTooltip:Hide();
					end)
	end
	self.MinimapBtnFrame:Show()
end;

function BossTactics:MinimapBtnBeingDragged()
	local xpos,ypos = GetCursorPosition();
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom();
	local minimapBtn = self.MinimapBtnFrame.button;

	xpos = -xpos/UIParent:GetScale()+70+xmin
	ypos = ypos/UIParent:GetScale()-70-ymin

	local miniradius = (xpos^2 + ypos^2)^0.5;
	if (miniradius < 100 and miniradius > 60 and not IsAltKeyDown()) then
		miniradius = 80;
	end
	--self:Print(xpos.." "..ypos.." "..miniradius);

	local bpoint = (math.deg(math.atan2(ypos,xpos)));

	if(bpoint < 0) then
		bpoint = bpoint + 360;
	end

	self.bMiniMapPos = bpoint;
	self.bMiniMapRadius = miniradius;
	minimapBtn:SetPoint("TOPLEFT", "Minimap", "TOPLEFT", 52 - (miniradius * cos(bpoint)), (miniradius * sin(bpoint)) - 52);
	minimapBtn:SetUserPlaced(false);
	local point, relativeTo, relativePoint, xOfs, yOfs = minimapBtn:GetPoint(1)
	self.db.profile.minimapX = xOfs
	self.db.profile.minimapY = yOfs
end;

function BossTactics:MinimapBtnOnEnter(update)

	if (update and (not GameTooltip:IsVisible() or not string.match(GameTooltipTextLeft1:GetText(), "BossTactics")) ) then
		return;
	end

	GameTooltip:SetOwner(this, "ANCHOR_LEFT");
	GameTooltip:SetText("|cffdf6003BossTactics|r");
	GameTooltip:AddLine("")
	GameTooltip:AddLine(L["tooltip1"]);
	GameTooltip:AddLine(L["tooltip2"]);
	GameTooltip:AddLine(string.format(L["version"],self.version));
	GameTooltip:Show();
end;

---------------------------------------------------------------------
--- creates the dropdown menus for 3 levels
--- dewdrop: reference to a dewdrop object
--- owner: owner frame
--- callto: link to a method which is called by a click
--- table: table which contains data for the menus
---------------------------------------------------------------------

function BossTactics:CreateDropdown(dewdrop,owner,callto,table)
	dewdrop:Register(owner,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if level == 1 then
				if table then
                    for k,v in ipairs(table) do
                        --If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            local checked = false;
                            if v[1][3] == "Submenu" then
                                dewdrop:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', callto,
                                    'arg1', v[1][2],
                                    'arg2', v[1][1],
                                    'arg3', v[1][3],
                                    'notCheckable', true
                                )
                            end
                        --if this is linked point
                     	elseif(type(v[3]) == "string" and v[3] == "Menuitem") then
                     		dewdrop:AddLine(
                                    'text', v[1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', callto,
                                    'arg1', v[2],
                                    'arg2', v[1],
                                    'arg3', v[3],
                                   'notCheckable', true
                                )
                        else
                            local lock=0;
                            --If an entry linked to a subtable
                            for i,j in pairs(v) do
                                if lock==0 then
                                    dewdrop:AddLine(
                                        'text', i,
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'hasArrow', true,
                                        'value', j,
                                        'notCheckable', true
                                    )
                                    lock=1;
                                end
                            end
                        end
                    end
                end
                --Close button
				dewdrop:AddLine(
					'text', L["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() dewdrop:Close() end,
					'notCheckable', true
				)
			elseif level == 2 then
				if value then
                    for k,v in ipairs(value) do
                        if type(v) == "table" then
                            if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                                local checked = false;
                                --If an entry to show a submenu
                                if v[1][3] == "Submenu" then
                               dewdrop:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', callto,
                                    'arg1', v[1][2],
                                    'arg2', v[1][1],
                                    'arg3', v[1][3],
                                    'notCheckable', true
                                )
                                --An entry to show a specific loot page
                                else
                                    dewdrop:AddLine(
                                        'text', v[1][1],
                                        'func', callto,
                                        'arg1', v[1][2],
                                        'arg2', v[1][1],
                                        'arg3', v[1][3],
                                        'notCheckable', true
                                    )
                                end
                            else
                                local lock=0;
                                --Entry to link to a sub table
                                for i,j in pairs(v) do
                                    if lock==0 then
                                        dewdrop:AddLine(
                                            'text', i,
                                            'textR', 1,
                                            'textG', 0.82,
                                            'textB', 0,
                                            'hasArrow', true,
                                            'value', j,
                                            'notCheckable', true
                                        )
                                        lock=1;
                                    end
                                end
                            end
                        end
                    end
                end
                dewdrop:AddLine(
					'text', L["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() dewdrop:Close() end,
					'notCheckable', true
				)
            elseif level == 3 then
                --Essentially the same as level == 2
                if value then
                    for k,v in pairs(value) do
                        if type(v[1]) == "string" then
                            local checked = false;
                            if v[3] == "Submenu" then
                                dewdrop:AddLine(
                                    'text', v[1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', callto,
                                    'arg1', v[2],
                                    'arg2', v[1],
                                    'arg3', v[3],
                                    'notCheckable', true
                                )
                            else
                                dewdrop:AddLine(
                                    'text', v[1],
                                    'func', callto,
                                    'arg1', v[2],
                                    'arg2', v[1],
                                    'arg3', v[3],
                                    'notCheckable', true
                                )
                            end
                        elseif type(v) == "table" then
                            dewdrop:AddLine(
                                'text', k,
                                'textR', 1,
                                'textG', 0.82,
                                'textB', 0,
                                'hasArrow', true,
                                'value', v,
                                'notCheckable', true
                            )
                        end
                    end
                end
                dewdrop:AddLine(
					'text', L["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() dewdrop:Close() end,
					'notCheckable', true
				)
			end
		end,
		'dontHook', true
	)
end;

---------------------------------------------------------
---handels a click on the instance dropdown menu
--------------------------------------------------------

function BT_InstanceDewdropClick(instId, instLabel, type)

	--BossTactics:Print("geklickt "..instId.." "..instLabel.." "..type)
	BossTactics:HandleInstanceSwitch(instId)

	if(BossTactics:IsRaidLeader() and BossTactics:IsSession())then
		BossTactics:BT_SendDataMessage("{RLI:"..instId.."}")
		BossTactics:SyncRaid(true)
	elseif(BossTactics:IsSession())then
		BossTactics:BT_SendDataMessage("{UICH}")
	end
	dewdropInstances:Close()

end;

---------------------------------------------------------
---handels a click on the instance dropdown menu
--------------------------------------------------------

function BT_AddonDewdropClick(addonName, nothing, type)

	--BossTactics:Print("geklickt "..instId.." "..instLabel.." "..type)
	BossTactics:HandleAddonSwitch(addonName)

	dewdropAddon:Close()

end;

---------------------------------------------------------
---handels a click on the instance dropdown menu
--------------------------------------------------------

function BT_ModeDewdropClick(mode, modeNr, type)

	--BossTactics:Print("geklickt "..instId.." "..instLabel.." "..type)
	BossTactics:SetInstanceMode(mode)

	dewdropModes:Close()

end;

---------------------------------------------------------
---handels a click on the boss dropdown menu
--------------------------------------------------------

function BT_BossDewdropClick(bossId, bossLabel, type)

	--BossTactics:Print("bossgeklickt "..instId.." "..instLabel.." "..type)
	BossTactics:ShowBossTactic(bossId)
	if(BossTactics:IsRaidLeader() and BossTactics:IsSession())then
		BossTactics:BT_SendDataMessage("{RLB:"..BossTactics:GetCurrInstId()..":"..bossId.."}")
		BossTactics:SyncRaid(true)
	elseif(BossTactics:IsSession())then
		BossTactics:BT_SendDataMessage("{UICH}")
	end
	dewdropBosses:Close()

end;

---------------------------------------------------------
--- opens dialog if data musst be updated panel
---------------------------------------------------------

function BossTactics:ShowUpdateInfoFrame()
	if(self.UpdateFrame == nil)then
		self.UpdateFrame = CreateFrame("Frame","BT_UpdateFrame",UIParent)
		self.UpdateFrame:ClearAllPoints()
		self.UpdateFrame:SetPoint("CENTER",UIParent)
		self.UpdateFrame:SetHeight(150)
		self.UpdateFrame:SetWidth(350)
		self.UpdateFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.UpdateFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.UpdateFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.UpdateFrame.YesBtn = CreateFrame("Button","BT_updateframe_ok",self.UpdateFrame,"UIPanelButtonTemplate")
		self.UpdateFrame.YesBtn:SetWidth(60)
		self.UpdateFrame.YesBtn:SetHeight(20)
		self.UpdateFrame.YesBtn:SetText(L["Yes"])
		self.UpdateFrame.YesBtn:SetPoint("BOTTOMLEFT",self.UpdateFrame,"BOTTOMLEFT",15,15)
		self.UpdateFrame.YesBtn:SetScript("OnClick",function()
			local currModule = LibStub("AceAddon-3.0"):GetAddon( self.currInstanceId )
			currModule:ResetData()
			self:RestoreDefaults()
		this:GetParent():Hide() end)
		self.UpdateFrame.YesBtn:SetFrameLevel(self.UpdateFrame:GetFrameLevel()+1)

		self.UpdateFrame.NoBtn = CreateFrame("Button","BT_updateframe_c",self.UpdateFrame,"UIPanelButtonTemplate")
		self.UpdateFrame.NoBtn:SetWidth(100)
		self.UpdateFrame.NoBtn:SetHeight(20)
		self.UpdateFrame.NoBtn:SetText(L["No"])
		self.UpdateFrame.NoBtn:SetPoint("BOTTOMLEFT",self.UpdateFrame,"BOTTOMLEFT",120,15)
		self.UpdateFrame.NoBtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.UpdateFrame.NoBtn:SetFrameLevel(self.UpdateFrame:GetFrameLevel()+1)

		self.UpdateFrame.infotext = self.UpdateFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.UpdateFrame.infotext:SetTextColor(1,1,1)
	    self.UpdateFrame.infotext:SetWidth(330)
		self.UpdateFrame.infotext:SetText(L["update info text"])
		self.UpdateFrame.infotext:SetPoint("TOP",self.UpdateFrame,"TOP",10,-25)
		self.UpdateFrame.infotext:SetJustifyH("LEFT")

		self.UpdateFrame.closebtn=CreateFrame("Button","BT_uinfoclose",self.UpdateFrame)
		self.UpdateFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.UpdateFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.UpdateFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.UpdateFrame.closebtn:SetWidth(20)
		self.UpdateFrame.closebtn:SetHeight(20)
		self.UpdateFrame.closebtn:SetPoint("TOPRIGHT",self.UpdateFrame,"TOPRIGHT",-5,-5)
		self.UpdateFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.UpdateFrame.closebtn:SetFrameLevel(self.UpdateFrame:GetFrameLevel()+1)
	end
	self.UpdateFrame:Show()
	self.UpdateFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+20)

end;

---------------------------------------------------------
--- opens dialog if a user in group > self.currInstanceMemberMax
---------------------------------------------------------

function BossTactics:ShowTacticQuestionFrame(target)
	if(self.TacticQuestionFrame == nil)then
		self.TacticQuestionFrame = CreateFrame("Frame","BT_TacticQuestionFrame",UIParent)
		self.TacticQuestionFrame:ClearAllPoints()
		self.TacticQuestionFrame:SetPoint("CENTER",UIParent)
		self.TacticQuestionFrame:SetHeight(120)
		self.TacticQuestionFrame:SetWidth(350)
		self.TacticQuestionFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.TacticQuestionFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.TacticQuestionFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.TacticQuestionFrame.YesBtn = CreateFrame("Button","BT_TacticQuestionFrame_ok",self.TacticQuestionFrame,"UIPanelButtonTemplate")
		self.TacticQuestionFrame.YesBtn:SetWidth(60)
		self.TacticQuestionFrame.YesBtn:SetHeight(20)
		self.TacticQuestionFrame.YesBtn:SetText(L["Yes"])
		self.TacticQuestionFrame.YesBtn:SetPoint("BOTTOMLEFT",self.TacticQuestionFrame,"BOTTOMLEFT",15,15)
		self.TacticQuestionFrame.YesBtn:SetScript("OnClick",function()
			self.isNotWatching = false;
			self:StartUserSession(target, true)
			self:BT_SendDataMessage("{SYNCREQ}")
            this:GetParent():Hide()
		this:GetParent():Hide() end)
		self.TacticQuestionFrame.YesBtn:SetFrameLevel(self.TacticQuestionFrame:GetFrameLevel()+1)

		self.TacticQuestionFrame.NoBtn = CreateFrame("Button","BT_TacticQuestionFrame_c",self.TacticQuestionFrame,"UIPanelButtonTemplate")
		self.TacticQuestionFrame.NoBtn:SetWidth(60)
		self.TacticQuestionFrame.NoBtn:SetHeight(20)
		self.TacticQuestionFrame.NoBtn:SetText(L["No"])
		self.TacticQuestionFrame.NoBtn:SetPoint("BOTTOMLEFT",self.TacticQuestionFrame,"BOTTOMLEFT",120,15)
		self.TacticQuestionFrame.NoBtn:SetScript("OnClick",function()
					self.isNotWatching = true;
					this:GetParent():Hide()
			 end)
		self.TacticQuestionFrame.NoBtn:SetFrameLevel(self.TacticQuestionFrame:GetFrameLevel()+1)

		self.TacticQuestionFrame.infotext = self.TacticQuestionFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.TacticQuestionFrame.infotext:SetTextColor(1,1,1)
	    self.TacticQuestionFrame.infotext:SetWidth(270)
		self.TacticQuestionFrame.infotext:SetText(L["tactic question text"])
		self.TacticQuestionFrame.infotext:SetPoint("TOP",self.TacticQuestionFrame,"TOP",10,-25)
		self.TacticQuestionFrame.infotext:SetJustifyH("CENTER")

		self.TacticQuestionFrame.closebtn=CreateFrame("Button","BT_uinfoclose",self.TacticQuestionFrame)
		self.TacticQuestionFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.TacticQuestionFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.TacticQuestionFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.TacticQuestionFrame.closebtn:SetWidth(20)
		self.TacticQuestionFrame.closebtn:SetHeight(20)
		self.TacticQuestionFrame.closebtn:SetPoint("TOPRIGHT",self.TacticQuestionFrame,"TOPRIGHT",-5,-5)
		self.TacticQuestionFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.TacticQuestionFrame.closebtn:SetFrameLevel(self.TacticQuestionFrame:GetFrameLevel()+1)
	end
	self.TacticQuestionFrame:Show()
	if(self.MainWindow)then
		self.TacticQuestionFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+20)
	end

end;

---------------------------------------------------------
--- opens Info panel
---------------------------------------------------------

function BossTactics:ShowInfoFrame()
	if(self.InfoFrame == nil)then
		self.InfoFrame = CreateFrame("Frame","BT_infoframe",UIParent)
		self.InfoFrame:ClearAllPoints()
		self.InfoFrame:SetPoint("CENTER",UIParent)
		self.InfoFrame:SetHeight(270)
		self.InfoFrame:SetWidth(350)
		self.InfoFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.InfoFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.InfoFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.InfoFrame.OkBtn = CreateFrame("Button","BT_infoframe_ok",self.InfoFrame,"UIPanelButtonTemplate")
		self.InfoFrame.OkBtn:SetWidth(100)
		self.InfoFrame.OkBtn:SetHeight(20)
		self.InfoFrame.OkBtn:SetText(L["Ok"])
		self.InfoFrame.OkBtn:SetPoint("BOTTOM",self.InfoFrame,"BOTTOM",0,15)
		self.InfoFrame.OkBtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.InfoFrame.OkBtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)

		self.InfoFrame.title = self.InfoFrame:CreateFontString(nil,"OVERLAY","MailTextFontNormal")
	    self.InfoFrame.title:SetTextColor(1,1,1)
		self.InfoFrame.title:SetText(string.format(L["title info"],self.version))
		self.InfoFrame.title:SetPoint("TOP",self.InfoFrame,"TOP",0,-15)

		self.InfoFrame.infotext = self.InfoFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.InfoFrame.infotext:SetTextColor(1,1,1)
	    self.InfoFrame.infotext:SetWidth(330)
	    self.InfoFrame.infotext:SetHeight(200)
		self.InfoFrame.infotext:SetText(L["info text"])
		self.InfoFrame.infotext:SetPoint("TOP",self.InfoFrame,"TOP",10,-30)
		self.InfoFrame.infotext:SetJustifyH("LEFT")

		self.InfoFrame.closebtn=CreateFrame("Button","BT_infoclose",self.InfoFrame)
		self.InfoFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.InfoFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.InfoFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.InfoFrame.closebtn:SetWidth(20)
		self.InfoFrame.closebtn:SetHeight(20)
		self.InfoFrame.closebtn:SetPoint("TOPRIGHT",self.InfoFrame,"TOPRIGHT",-5,-5)
		self.InfoFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.InfoFrame.closebtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)
	end
	self.InfoFrame:Show()
	self.InfoFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+20)
	if(self.currInstanceId ~= "EMPTY" and self.modules[self.currModuleId].info)then
		self.InfoFrame.infotext:SetText(L["info text"]..self.modules[self.currModuleId].info)
	else
		self.InfoFrame.infotext:SetText(L["info text"])
	end

end;

---------------------------------------------------------
--- opens Info message
---------------------------------------------------------

function BossTactics:ShowInfoMessage(message)
	if (not message)then return end

	if(self.InfoMessageFrame == nil)then
		self.InfoMessageFrame = CreateFrame("Frame","BT_messageframe",UIParent)
		self.InfoMessageFrame:ClearAllPoints()
		self.InfoMessageFrame:SetPoint("CENTER",UIParent)
		self.InfoMessageFrame:SetHeight(150)
		self.InfoMessageFrame:SetWidth(300)
		self.InfoMessageFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.InfoMessageFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.InfoMessageFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.InfoMessageFrame.OkBtn = CreateFrame("Button","BT_infomessage_ok",self.InfoMessageFrame,"UIPanelButtonTemplate")
		self.InfoMessageFrame.OkBtn:SetWidth(100)
		self.InfoMessageFrame.OkBtn:SetHeight(20)
		self.InfoMessageFrame.OkBtn:SetText(L["Ok"])
		self.InfoMessageFrame.OkBtn:SetPoint("BOTTOM",self.InfoMessageFrame,"BOTTOM",0,15)
		self.InfoMessageFrame.OkBtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.InfoMessageFrame.OkBtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)

		self.InfoMessageFrame.infotext = self.InfoMessageFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.InfoMessageFrame.infotext:SetTextColor(1,1,1)
	    self.InfoMessageFrame.infotext:SetWidth(280)
		self.InfoMessageFrame.infotext:SetText(message)
		self.InfoMessageFrame.infotext:SetPoint("TOP",self.InfoMessageFrame,"TOP",10,-40)
		self.InfoMessageFrame.infotext:SetJustifyH("LEFT")

		self.InfoMessageFrame.closebtn=CreateFrame("Button","BT_infomessage_close",self.InfoMessageFrame)
		self.InfoMessageFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.InfoMessageFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.InfoMessageFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.InfoMessageFrame.closebtn:SetWidth(20)
		self.InfoMessageFrame.closebtn:SetHeight(20)
		self.InfoMessageFrame.closebtn:SetPoint("TOPRIGHT",self.InfoMessageFrame,"TOPRIGHT",-5,-5)
		self.InfoMessageFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.InfoMessageFrame.closebtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)
	end
	self.InfoMessageFrame:Show()
	self.InfoMessageFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+20)

end;

---------------------------------------------------------
--- opens Info that version incompatible
---------------------------------------------------------

function BossTactics:ShowVersionInfoFrame()
	if(self.VersionFrame == nil)then
		self.VersionFrame = CreateFrame("Frame","BT_Versionframe",UIParent)
		self.VersionFrame:ClearAllPoints()
		self.VersionFrame:SetPoint("CENTER",UIParent)
		self.VersionFrame:SetHeight(130)
		self.VersionFrame:SetWidth(320)
		self.VersionFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.VersionFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.VersionFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.VersionFrame.OkBtn = CreateFrame("Button","BT_version_ok",self.VersionFrame,"UIPanelButtonTemplate")
		self.VersionFrame.OkBtn:SetWidth(100)
		self.VersionFrame.OkBtn:SetHeight(20)
		self.VersionFrame.OkBtn:SetText(L["Ok"])
		self.VersionFrame.OkBtn:SetPoint("BOTTOM",self.VersionFrame,"BOTTOM",0,15)
		self.VersionFrame.OkBtn:SetScript("OnClick",function() this:GetParent():Hide() end)

		self.VersionFrame.Versiontext = self.VersionFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.VersionFrame.Versiontext:SetTextColor(1,1,1)
	    self.VersionFrame.Versiontext:SetWidth(270)
	    self.VersionFrame.Versiontext:SetHeight(80)
		self.VersionFrame.Versiontext:SetText(L["Version info text"])
		self.VersionFrame.Versiontext:SetPoint("TOP",self.VersionFrame,"TOP",10,-10)
		self.VersionFrame.Versiontext:SetJustifyH("LEFT")

		self.VersionFrame.closebtn=CreateFrame("Button","BT_Versionclose",self.VersionFrame)
		self.VersionFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.VersionFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.VersionFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.VersionFrame.closebtn:SetWidth(20)
		self.VersionFrame.closebtn:SetHeight(20)
		self.VersionFrame.closebtn:SetPoint("TOPRIGHT",self.VersionFrame,"TOPRIGHT",-5,-5)
		self.VersionFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		
	end
	self.VersionFrame:Show()
	if(self.MainWindow) then
		self.VersionFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+20)
		self.VersionFrame.OkBtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)
		self.VersionFrame.closebtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)
	end

end;

-------------------------------------------------------------------
---manages textcroll
--frame: the parent frame
--textarray: a array of fontstrings to scroll
--add: bool if we add a string true, false if we scroll
--point: String, BOTTOMLEFT or TOPLEFT
-------------------------------------------------------------------

function BossTactics:ScrollString(frame,textarray,add)
	local frameheight = frame:GetHeight()-10
	local linespace = textarray[1]:GetSpacing()
	local tmpheight = 15;

	if(add) then
		if(frame.scrollUp)then
			frame.offset = #textarray
			frame.scrollUp= false
		end
		frame.offset = #textarray;
	end

	for index,value in pairs(textarray) do
		value:Hide()
	end
	for index=#textarray,1,-1 do
		if(index <= frame.offset)then
			local currfontstring = textarray[index]
			local fontstrHeight = currfontstring:GetStringHeight()
			if(tmpheight+(linespace+fontstrHeight) < frameheight)then
				currfontstring:ClearAllPoints()
				currfontstring:SetPoint("BOTTOMLEFT",frame, "BOTTOMLEFT",10,tmpheight)
				currfontstring:Show()
				tmpheight = tmpheight+linespace+fontstrHeight
			else
				break
			end
		end
	end
end;


---------------------------------------------------------------
--- helper methods
---------------------------------------------------------------

--helps to transform the coordinates of a button which has been dragged
--frame: the dragged frame, placeFrame: the frame in which it should be placed
function BossTactics:DragFrame(frame, placeFrame)

  if(frame == nil or placeFrame == nil)then
  	if(self.debug)then
  		self:Print("Debug: BossTactics:DragFrame is called by nil value")
  	end
  	return
  end
 -- local s_width = GetScreenWidth()/2
 -- local s_height = GetScreenHeight()/2
  local mainWinScale = self.MainWindow:GetScale()
  --be carefull mainwindow is relative to center!!
 -- local point2, relativeTo2, relativePoint2, xOfs2, yOfs2 = placeFrame:GetPoint(1)
--  local point3, relativeTo3, relativePoint3, xOfs3, yOfs3 = frame:GetPoint(1)
  local leftpaneX = self.MainWindow.LeftPane:GetLeft()
  local leftpaneY = math.abs(GetScreenHeight()-self.MainWindow.LeftPane:GetTop())
  local myy = frame.oldY
  local myx = frame.oldX

  --handle the x cooddinate first
  myx = frame:GetLeft()-leftpaneX
  --check if the button is within the x coodinate of the placeframe
  if(myx < 0 or myx > placeFrame:GetWidth()-frame:GetWidth())then
  	--it is not in so reset the position
  	myx = frame.oldX
  else
	--it is in the x coodrinate, so check the y one
	myy = frame:GetBottom()-placeFrame:GetBottom()-(placeFrame:GetTop()-placeFrame:GetBottom())+frame:GetTop()-frame:GetBottom()
	--check if the y coordinate is within the placeframe
	if(myy > 2 or myy < -placeFrame:GetHeight()+frame:GetHeight()) then
	  	myy = frame.oldY
	  	myx = frame.oldX
	else
	   if(frame.oldY ~= myy and frame.oldX ~= myx)then
	   	  self:DataChanged()
	   	--if it is a new button from the pool
	      if(not frame.dragged)then
	      	--set ids
	      	  frame.instId = self.currInstanceId
	      	  frame.imgId = self.currImgId
	      	  frame.bossId = self.currBossId
	      	  frame.moduleId = self.currModuleId
	      	  --sessions must be handled
	      	  if(self:IsSession()) then
	      	     frame.id = self.currSessionBtnId
		     	 self.currSessionBtnId = self.currSessionBtnId + 1
		     	 BossTactics:BT_SendDataMessage("{BTN:"..frame.id..":"..frame.imgId..":"..frame.bossId..":"..frame.instId..":"..floor(myx)..":"..floor(myy)..":"..frame.typename.."}")
		      else
		      	frame.id = self.currBtnId
			  	self.currBtnId = self.currBtnId +1
		      end

		      if(frame.text:GetText() == nil or frame.text:GetText() == "") then
		      	BossTactics:ShowButtonInputFrame(frame.text,frame,BossTactics:GetTextFromButtonType(frame.typename))
			  end
		  	  frame.dragged = true
		  	  --show the edit buttons if raidleader
		  	  if(self:IsRaidLeader())then
		  	  	frame.editBtn:Show()
		  	  	frame.delBtn:Show()
		  	  end
		  	  --create a new button in the pool
		  	  BossTactics:CreateNewMapButton(BossTactics:GetTypeFromButtonType(frame.typename), true)
		  else
		  	if(self:IsSession())then
		  	  BossTactics:BT_SendDataMessage("{BTMV:"..frame.id..":"..frame.imgId..":"..frame.bossId..":"..frame.instId..":"..floor(myx)..":"..floor(myy).."}")
		  	end
		  end
	   end
	   frame.oldY = myy
	   frame.oldX = myx
	end
  end

  --setup the new position, because of rounding the butten could jump a pixel
  frame:ClearAllPoints()
  frame:SetPoint("TOPLEFT",frame:GetParent(),"TOPLEFT",myx,myy)

end;


------------------------------------------------------------------
--if session leader closes window, pls ask to end session before
------------------------------------------------------------------

function BossTactics:AskForClose()

	if(self.CloseFrame == nil)then
		self.CloseFrame = CreateFrame("Frame","BT_CloseFrame",UIParent)
		self.CloseFrame:ClearAllPoints()
		self.CloseFrame:SetPoint("CENTER",UIParent)
		self.CloseFrame:SetHeight(100)
		self.CloseFrame:SetWidth(350)
		self.CloseFrame:SetBackdrop({
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = false,
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", edgeSize = 32,
			insets = {left = 5, right = 5, top = 0, bottom = 5},
		})
		self.CloseFrame:SetBackdropColor(1/255, 1/255, 1/255)
		--self.CloseFrame:SetBackdropBorderColor(1.0,0,0.0)

		self.CloseFrame.YesBtn = CreateFrame("Button","BT_closeframe_yes",self.CloseFrame,"UIPanelButtonTemplate")
		self.CloseFrame.YesBtn:SetWidth(100)
		self.CloseFrame.YesBtn:SetHeight(20)
		self.CloseFrame.YesBtn:SetText(L["Yes"])
		self.CloseFrame.YesBtn:SetPoint("BOTTOMLEFT",self.CloseFrame,"BOTTOMLEFT",15,15)
		self.CloseFrame.YesBtn:SetScript("OnClick",function()
				self:EndSession()
				self.MainWindow:Hide()
				this:GetParent():Hide()
			 end)
		self.CloseFrame.YesBtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)

		self.CloseFrame.NoBtn = CreateFrame("Button","BT_closeframe_no",self.CloseFrame,"UIPanelButtonTemplate")
		self.CloseFrame.NoBtn:SetWidth(100)
		self.CloseFrame.NoBtn:SetHeight(20)
		self.CloseFrame.NoBtn:SetText(L["No"])
		self.CloseFrame.NoBtn:SetPoint("BOTTOMLEFT",self.CloseFrame,"BOTTOMLEFT",120,15)
		self.CloseFrame.NoBtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.CloseFrame.NoBtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)

		self.CloseFrame.infotext = self.CloseFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
	    self.CloseFrame.infotext:SetTextColor(1,1,1)
	    self.CloseFrame.infotext:SetWidth(330)
		self.CloseFrame.infotext:SetText(L["Close info text"])
		self.CloseFrame.infotext:SetPoint("TOP",self.CloseFrame,"TOP",10,-25)
		self.CloseFrame.infotext:SetJustifyH("LEFT")

		self.CloseFrame.closebtn=CreateFrame("Button","BT_cinfoclose",self.CloseFrame)
		self.CloseFrame.closebtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up.blp")
		self.CloseFrame.closebtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down.blp")
		self.CloseFrame.closebtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight.blp")
		self.CloseFrame.closebtn:SetWidth(20)
		self.CloseFrame.closebtn:SetHeight(20)
		self.CloseFrame.closebtn:SetPoint("TOPRIGHT",self.CloseFrame,"TOPRIGHT",-5,-5)
		self.CloseFrame.closebtn:SetScript("OnClick",function() this:GetParent():Hide() end)
		self.CloseFrame.closebtn:SetFrameLevel(self.MainWindow:GetFrameLevel()+22)
	end
	self.CloseFrame:Show()
	self.CloseFrame:SetFrameLevel(self.MainWindow:GetFrameLevel()+21)

end;


--------------------------------------------------------------------
--event handlers
---------------------------------------------------------------------

function BossTactics:HandleCloseMainWindow()

	if(self:IsSession())then
		if(self.isSessionLeader)then
			self:AskForClose()
		else
			self:BT_SendDataMessage("{MAINCL}")
			self.MainWindow:Hide()
		end
	else
		self.MainWindow:Hide()
	end
end;