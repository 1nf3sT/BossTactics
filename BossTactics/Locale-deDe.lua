local L = LibStub("AceLocale-3.0"):NewLocale("BossTactics", "deDE")
if not L then return end

--Umlaute: ö:\195\182 ü:\195\188 ä:\195\164 Ö:\195\150 Ü:\195\156 Ä: \195\132 ß:\195\159

-- Chat commands
L["BossTactics"] = "bosstactics"
L["bt"] = "bt"
L["menu options tab"] = "Zeige Optionen Fenster"
L["menu main frame"] = "\195\150ffnet das Boss Fenster"
L["menu info"] = "Zeige Info"
L["menu debug"] = "Schaltet den debug Modus ein"
L["menu minimap"] = "Anzeigen oder Verstecken des Minimap-Buttons"
L["menu SessionAbort"] = "Raidleiter k\195\182nnen eine Session abbrechen"
L["menu main frame hide"] = "Schlie\195\159e das Hauptfenster"

--Button labels
L["healer"] = "Heiler"
L["melee"] = "Nahk\195\164mpfer"
L["ranged DPS"] = "Fernk\195\164mpfer"
L["tank"] = "Tank"
L["boss"] = "Boss"
L["SwitchStd"] = "Zeige Standard"
L["SwitchMy"] = "Zeige meine Notizen"
L["Tactic"] = "Taktik"
L["Trash"] = "Trash"

--Gui
--common elements
L["Ok"] = "Ok"
L["Cancel"] = "Abbrechen"
L["Close Menu"] = "Schlie\195\159e Men\195\188"
L["Yes"] = "Ja"
L["No"] = "Nein"

--left panel
L["Instances"] = "Instanzen"
L["Bosses"] = "Bosse"
L["mode"] = "Mode"
L["Session"] = "Starte Session"
L["EndSession"] = "Beende Session"
L["Info"] = "Info"
L["Options"] = "Optionen"
L["Sync"] = "Synchronisiere"
L["Save"] = "Speichern"
L["RaSend"] = "Sende RA-Msg"
L["LeaderSync"] = "Synchronisiere Raid"
L["VerBtn"] = "Hole Versionen"
L["Recover Standard"] = "Standard Wiederherstellen"
L["Recover Session"] = "Session zur\195\188setzen"
L["No picture"] = "Kein Bild vorhanden"

L["title info"] = "|cffdf6003BossTactics|r version %s"
L["info text"] = "Addon zur einfachen Erl\195\164uterung von Raidbossen.\n\n|cff91069EProgrammed by|r Sorontur @MalygosEU\n|cff91069EGraphics by|r Vonswan @MalygosEU\n\n|cffC0C0C0[http://bosstactics.net]|r\n\nModulinfo:\n\n"
L["Title Inputframe"] = "Button Bezeichnung"
L["update info text"] = "Das aktuelle Modul hat neue Taktikdaten.\nWillst du die neuen Daten laden? Deine eigenenen \195\132nderungen gehen verloren, trotzdem ist es empfohlen die neuen Daten zu laden. Damit die \195\132nderung wirksam wird muss das Interface neu geladen werden."
L["Close info text"] = "Du hast noch eine Session aktiv. Willst du das Fenster schlie\195\159en? Die Session wird beendet."
L["Version info text"] = "Deine Version ist inkompatibel. Schau bitte auf der Website www.bosstactics.net nach Updates."
L["no save while session"] = "W\195\164hrend einer Session kannst du nicht speichern.\nWarte bis die Session beendet wurde."
L["tactic question text"] = "Du bist in einer Gruppe, die normal nicht in der Instanz anwesend ist. M\195\182chtest du die Taktik trotzdem verfolgen?"
L["mode not supported"] = "Dieser Modus wird f\195\188r diese Instanz nicht unterst\195\188tzt."

--minimap
L["version"] = "Version %s"
L["tooltip1"] = "Bosse erkl\195\164ren leicht gemacht"
L["tooltip2"] = "Rechtssklick zum Bewegen"

--Leader Gui
L["Title Raidmessage"] = "Boss\195\188bersicht"
L["Title Addonlist"] = "Versions\195\188bersicht"
L["out of sync"] = "out of sync"
L["No addon found"] = "kein BossTactics"
L["version incompatible"] = "inkompatibel"

--Main
L["Module disabled"] = "Modul |cffdf6003%s|r ist ausgeschaltet"
L["Module missing"] = "Modul |cffdf6003%s|r ist nicht vorhanden"
L["Module currupt"] = "Modul |cffdf6003%s|r ist besch\195\164digt"
L["Module interface version"] = "Modul |cffdf6003%s|r ist inkompatibel zu dieser Interface Version"
L["Module loaded"] ="Modul |cffdf6003%s|r geladen"

--errors
L["Out of synch with raidleader"] = "Keine Synchronisation mit dem Raidleiter"

--infos
L["defaults recovered"] = "Standardwerte wiederhergestellt"
L["minimap off"] = "Minimapbutton ausgeschaltet"
L["minimap on"] = "Minimapbutton angeschaltet"
L["session started"] = "Raidleiter %s hat eine Session gestartet"
L["session ended"] = "Raidleiter %s hat die Session beendet"
L["SessAbortPermitted"] = "Du hast nicht die Befugniss Sessions abzubrechen"

--instances
L["Outdoor"] = "Weltbosse"