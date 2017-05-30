local L = LibStub("AceLocale-3.0"):NewLocale("BossTactics", "enUS", true)
if not L then return end

-- Chat commands
L["BossTactics"] = "bosstactics"
L["bt"] = "bt"
L["menu options tab"] = "Show options tab"
L["menu main frame"] = "Show the Boss Frame"
L["menu info"] = "Show Info"
L["menu debug"] = "Enter debug mode"
L["menu minimap"] = "Show or hide minimap button"
L["menu SessionAbort"] = "Raidleaders can abort a running session"
L["menu main frame hide"] = "Colse the main frame"

--Button labels
L["healer"] = "healer"
L["melee"] = "melee"
L["ranged DPS"] = "ranged DPS"
L["tank"] = "tank"
L["boss"] = "boss"

--Gui
--common Gui
L["Ok"] = "Ok"
L["Cancel"] = "Cancel"
L["Close Menu"] = "Close Menu"
L["Yes"] = "yes"
L["No"] = "No"
L["SwitchStd"] = "Show Standard"
L["SwitchMy"] = "Show my notices"
L["Tactic"] = "Tactic"
L["Trash"] = "Trash"

--left panel
L["Instances"] = "Instances"
L["Bosses"] = "Bosses"
L["mode"] = true
L["Session"] = "Start Session"
L["EndSession"] = "End Session"
L["Info"] = "Info"
L["Options"] = "Options"
L["Sync"] = "Synchronize"
L["LeaderSync"] = "Synchronize Raid"
L["Recover Standard"] = "Recover Standard"
L["Recover Session"] = "Reset Session"
L["Save"] = "Save"
L["RaSend"] = "Send RA-Msg"
L["VerBtn"] = "Get Versions"
L["Title Inputframe"] = "Button Name"
L["No picture"] = "no picture available"

--Leader Gui
L["Title Raidmessage"] = "Short Bossoverview"
L["Title Addonlist"] = "Version Overview"
L["out of sync"] = "out of sync"
L["No addon found"] = "no BossTactics"
L["version incompatible"] = "incompatible"

--minimap
L["version"] = "Version %s"
L["tooltip1"] = "Easy explain Bosses"
L["tooltip2"] = "rightclick to drag"

--Main
L["Module disabled"] = "Module |cffdf6003%s|r is disabled"
L["Module missing"] = "Module |cffdf6003%s|r is missing"
L["Module currupt"] = "Module |cffdf6003%s|r is currupt"
L["Module interface version"] = "Module |cffdf6003%s|r is not compatible with this interface Version"
L["Module loaded"] ="Module |cffdf6003%s|r loaded"

L["title info"] = "BossTactics version %s"
L["info text"] = "Addon for easy explaining bosstactics for raid instances.\n\n |cff91069EProgrammed by|r Sorontur @MalygosEU\n|cff91069EGraphics by|r Vonswan @MalygosEU\n\n|cffC0C0C0[http://bosstactics.net]|r\n\nModuleinfo:\n\n"
L["update info text"] = "The current module has new tactical data.\nWould you like to load the new Version? Your own changes will be lost but it is highliy recommendet to load the new Version. Please reload your interface to get the changes work."
L["Close info text"] = "You have started a Session. If you want to close the window, the session will be closed"
L["Version info text"] = "Your Version is incompatible. Please visit our website www.bosstactics.net to get updates."
L["no save while session"] = "You cannot save while a session is going on.\nPlease wait until it is closed."
L["tactic question text"] = "You are in a group which is normally not in the instance. Would you like to follow the tactics anyway?"
L["mode not supported"] = "This mode is not supported by this instance."

--errors
L["Out of synch with raidleader"] = "Out of synch with raidleader"

--infos
L["defaults recovered"] = "defaults recovered"
L["minimap off"] = "Minimapbutton turned off"
L["minimap on"] = "Minimapbutton turned on"
L["session started"] = "Raidleader %s has started a session"
L["session ended"] = "Raidleader %s has ended the session"
L["SessAbortPermitted"] = "You are not allowed to kill sessions"

L["Outdoor"] = "Worldbosses"