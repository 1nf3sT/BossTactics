---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_Gruul = LibStub("AceAddon-3.0"):NewAddon("BT_Gruul","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_Gruul")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Gruul's Lair"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_Gruul", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"], --a short text you can add to the info frame, optional
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["High King Maulgar"],
                    ["ratext"] = L["ra Maulgar"], --lines seperated by \n
                    ["tactictext"] = L["tactic Maulgar"],
                    ["trash"] = L["trash Maulgar"],
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Gruul\\Img\\map_maulgar",
                            ["btnId"] = 25, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                            	{
                                    ["y"] = -266.7130126953125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 133.1774444580078,
                                }, -- [1]
                                {
                                    ["y"] = -300.3726196289063,
                                    ["type"] = "f",
                                    ["caption"] = L["Magertank"],
                                    ["x"] = 488.8371887207031,
                                }, -- [2]
                                {
                                    ["y"] = -362.2630615234375,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 23.39048767089844,
                                }, -- [3]
                                {
                                    ["y"] = -356.8343505859375,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 53.18934631347656,
                                }, -- [4]
                                {
                                    ["y"] = -328.6034851074219,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 434.787109375,
                                }, -- [5]
                                {
                                    ["y"] = -318.8311462402344,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 262.627197265625,
                                }, -- [6]
                                {
                                    ["y"] = -280.8282470703125,
                                    ["type"] = "z",
                                    ["caption"] = BabbleBoss["Blindeye the Seer"],
                                    ["x"] = 112.1834182739258,
                                }, -- [7]
                                {
                                    ["y"] = -197.2217559814453,
                                    ["type"] = "z",
                                    ["caption"] = BabbleBoss["Kiggler the Crazed"],
                                    ["x"] = 273.9674682617188,
                                }, -- [8]
                                {
                                    ["y"] = -269.9700927734375,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 92.88166809082031,
                                }, -- [9]
                                {
                                    ["y"] = -329.6892700195313,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 242.7218780517578,
                                }, -- [10]
                                {
                                    ["y"] = -261.2837829589844,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 457.2279663085938,
                                }, -- [11]
                                {
                                    ["y"] = -225.4525146484375,
                                    ["type"] = "f",
                                    ["caption"] = L["Huntertank"],
                                    ["x"] = 343.3403625488281,
                                }, -- [12]
                                {
                                    ["y"] = -272.1418762207031,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 440.9410705566406,
                                }, -- [13]
                                {
                                    ["y"] = -433.9259033203125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 26.16563606262207,
                                }, -- [14]
                                {
                                    ["y"] = -433.9259033203125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 54.39637756347656,
                                }, -- [15]
                                {
                                    ["y"] = -413.2956237792969,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 263.9556884765625,
                                }, -- [16]
                                {
                                    ["y"] = -413.2957763671875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 231.3816223144531,
                                }, -- [17]
                                {
                                    ["y"] = -341.633056640625,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 266.609375,
                                }, -- [18]
                                {
                                    ["y"] = -262.3698120117188,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 273.7279357910156,
                                }, -- [19]
                                {
                                    ["y"] = -288.4287719726563,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 137.5207977294922,
                                }, -- [20]
                                {
                                    ["y"] = -299.2867431640625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 123.4053115844727,
                                }, -- [21]
                                {
                                    ["y"] = -248.2541046142578,
                                    ["type"] = "f",
                                    ["caption"] = L["Huntertank"],
                                    ["x"] = 332.4823608398438,
                                }, -- [22]
                                {
                                    ["y"] = -256.9406127929688,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 39.31687927246094,
                                }, -- [23]
                                {
                                    ["y"] = -263.4553833007813,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 248.7543792724609,
                                }, -- [24]                              
                       		},
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                     [1] = {
                                        ["type"] = "h",
                                        ["caption"] = L_main["healer"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [2] = {
                                        ["type"] = "f",
                                        ["caption"] = L_main["ranged DPS"],
                                        ["r"] = 0,
                                        ["g"] = 0,
                                        ["b"] = 1,
                                    },
                                    [3] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [4] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [5] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["High King Maulgar"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["Krosh Firehand"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [7] = {
                                        ["type"] = "y",
                                        ["caption"] = BabbleBoss["Olm the Summoner"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                },
                            },
                        },
                    },
                },
                --second boss
                [2] = {
                    ["name"] = BabbleBoss["Gruul the Dragonkiller"],
                    ["tactictext"] =  L["tactic Gruul"],
                    ["ratext"] = L["ra Gruul"],
                    ["trash"] = L["trash Gruul"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Gruul\\Img\\map_gruul",
                            ["btnId"] = 27,
                            ["buttons"] = {
                            	{
                                    ["y"] = -258.0264282226563,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 305.81982421875,
                                }, -- [1]
                                {
                                    ["y"] = -141.8458251953125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 129.4377899169922,
                                }, -- [2]
                                {
                                    ["y"] = -172.24853515625,
                                    ["type"] = "h",
                                    ["caption"] = L["group 1"],
                                    ["x"] = 232.4676055908203,
                                }, -- [3]
                                {
                                    ["y"] = -335.1181030273438,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 272.0383911132813,
                                }, -- [4]
                                {
                                    ["y"] = -293.857666015625,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 266.0058898925781,
                                }, -- [5]
                                {
                                    ["y"] = -324.2602233886719,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 293.7544555664063,
                                }, -- [6]
                                {
                                    ["y"] = -246.08251953125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 240.671630859375,
                                }, -- [7]
                                {
                                    ["y"] = -297.1151733398438,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 218.9555969238281,
                                }, -- [8]
                                {
                                    ["y"] = -188.5352935791016,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 176.0058746337891,
                                }, -- [9]
                                {
                                    ["y"] = -266.7126770019531,
                                    ["type"] = "h",
                                    ["caption"] = L["group 5"],
                                    ["x"] = 105.4290008544922,
                                }, -- [10]
                                {
                                    ["y"] = -119.0442504882813,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 220.6448822021484,
                                }, -- [11]
                                {
                                    ["y"] = -205.9080200195313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 63.2041130065918,
                                }, -- [12]
                                {
                                    ["y"] = -367.692138671875,
                                    ["type"] = "h",
                                    ["caption"] = L["group 4"],
                                    ["x"] = 149.9467315673828,
                                }, -- [13]
                                {
                                    ["y"] = -429.5829162597656,
                                    ["type"] = "h",
                                    ["caption"] = L["group 3"],
                                    ["x"] = 270.4705200195313,
                                }, -- [14]
                                {
                                    ["y"] = -388.3222961425781,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 370.3639221191406,
                                }, -- [15]
                                {
                                    ["y"] = -279.7425537109375,
                                    ["type"] = "h",
                                    ["caption"] = L["group 2"],
                                    ["x"] = 390.9941101074219,
                                }, -- [16]
                                {
                                    ["y"] = -201.5650024414063,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 346.4764099121094,
                                }, -- [17]
                                {
                                    ["y"] = -288.4288940429688,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 46.91722106933594,
                                }, -- [18]
                                {
                                    ["y"] = -372.0352172851563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 57.77516174316406,
                                }, -- [19]
                                {
                                    ["y"] = -488.2158203125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 235.8460845947266,
                                }, -- [20]
                                {
                                    ["y"] = -474.1006469726563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 366.1420288085938,
                                }, -- [21]
                                {
                                    ["y"] = -420.8965759277344,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 455.1776428222656,
                                }, -- [22]
                                {
                                    ["y"] = -322.0886535644531,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 474.7218017578125,
                                }, -- [23]
                                {
                                    ["y"] = -227.6242065429688,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 426.947021484375,
                                }, -- [24]
                                {
                                    ["y"] = -155.9614105224609,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 341.168701171875,
                                }, -- [25]
                                {
                                    ["y"] = -446.95556640625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 127.2661285400391,
                                }, -- [26]
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                     [1] = {
                                        ["type"] = "h",
                                        ["caption"] = L_main["healer"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [2] = {
                                        ["type"] = "f",
                                        ["caption"] = L_main["ranged DPS"],
                                        ["r"] = 0,
                                        ["g"] = 0,
                                        ["b"] = 1,
                                    },
                                    [3] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [4] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [5] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Gruul the Dragonkiller"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
            },
		},
    },
}

function BT_Gruul:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_GruulDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_Gruul:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_Gruul:CheckUpdate()

	--the versions stored by the client musst be one more
	--because otherwise it woudnt been saved in the savedVariables
	if(not self.db.profile.initial)then
		if(defaults.profile.version+1 > self.db.profile.version)then
			if(defaults.profile.version >= 2)then
				BT_main:ShowUpdateInfoFrame()
			end
		end
	end
	self.db.profile.version = defaults.profile.version+1
	self.db.profile.initial = false
end;


----------------------------------------------------------------
--dont touch this functions!
----------------------------------------------------------------

function BT_Gruul:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_Gruul:OnEnable()
    -- Called when the addon is enabled
end

function BT_Gruul:OnDisable()
    -- Called when the addon is disabled
end