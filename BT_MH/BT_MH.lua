---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_MH = LibStub("AceAddon-3.0"):NewAddon("BT_MH","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_MH")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Hyjal Summit"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_MH", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"],
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Rage Winterchill"],
                    ["ratext"] = L["ra Winterchill"], --lines seperated by \n
                    ["tactictext"] = L["tactic Winterchill"],
                    ["trash"] = L["trash Winterchill"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_MH\\Img\\map_mh_allianz",
                            ["btnId"] = 16, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                {
                                    ["y"] = -287,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 348,
                                }, -- [1]
                                {
                                    ["y"] = -391,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 366,
                                }, -- [2]
                                {
                                    ["y"] = -247,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 326,
                                }, -- [3]
                                {
                                    ["y"] = -325,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 371,
                                }, -- [4]
                                {
                                    ["y"] = -313,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 350,
                                }, -- [5]
                                {
                                    ["y"] = -301,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 331,
                                }, -- [6]
                                {
                                    ["y"] = -325,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 326,
                                }, -- [7]
                                {
                                    ["y"] = -337,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 241,
                                }, -- [8]
                                {
                                    ["y"] = -394,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 324,
                                }, -- [9]
                                {
                                    ["y"] = -374,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 411,
                                }, -- [10]
                                {
                                    ["y"] = -325,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 411,
                                }, -- [11]
                                {
                                    ["y"] = -297,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 246,
                                }, -- [12]
                                {
                                    ["y"] = -254,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 280,
                                }, -- [13]
                                {
                                    ["y"] = -284,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 390,
                                }, -- [14]
                                {
                                    ["y"] = -381,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 285,
                                }, -- [15]
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
                                        ["caption"] = BabbleBoss["Rage Winterchill"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                --second boss
                [2] = {
                    ["name"] = BabbleBoss["Anetheron"],
                    ["tactictext"] =  L["tactic Anetheron"],
                    ["ratext"] = L["ra Anetheron"],
                    ["trash"] = L["trash Anetheron"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_MH\\Img\\map_mh_allianz",
                            ["btnId"] = 1,
                            ["buttons"] = {
                                {
                                    ["y"] = -307,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 353,
                                }, -- [1]
                                {
                                    ["y"] = -458,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 297,
                                }, -- [2]
                                {
                                    ["y"] = -529,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 374,
                                }, -- [3]
                                {
                                    ["y"] = -331,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 384,
                                }, -- [4]
                                {
                                    ["y"] = -324,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 363,
                                }, -- [5]
                                {
                                    ["y"] = -437,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 380,
                                }, -- [6]
                                {
                                    ["y"] = -478,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 313,
                                }, -- [7]
                                {
                                    ["y"] = -495,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 325,
                                }, -- [8]
                                {
                                    ["y"] = -528,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 358,
                                }, -- [9]
                                {
                                    ["y"] = -370,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 414,
                                }, -- [10]
                                {
                                    ["y"] = -438,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 286,
                                }, -- [11]
                                {
                                    ["y"] = -508,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 331,
                                }, -- [12]
                                {
                                    ["y"] = -358,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 292,
                                }, -- [13]
                                {
                                    ["y"] = -295,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 226,
                                }, -- [14]
                                {
                                    ["y"] = -245,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 289,
                                }, -- [15]
                                {
                                    ["y"] = -279,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 393,
                                }, -- [16]
                                {
                                    ["y"] = -332,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 262,
                                }, -- [17]
                                {
                                    ["y"] = -376,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 317,
                                }, -- [18]
                                {
                                    ["y"] = -316,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 241,
                                }, -- [19]
                                {
                                    ["y"] = -280,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 255,
                                }, -- [20]
                                {
                                    ["y"] = -325,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 342,
                                }, -- [21]
                                {
                                    ["y"] = -343,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 350,
                                }, -- [22]
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
                                        ["caption"] = BabbleBoss["Anetheron"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [3] = {
                    ["name"] = BabbleBoss["Kaz'rogal"],
                    ["tactictext"] =  L["tactic Kaz'rogal"],
                    ["ratext"] = L["ra Kaz'rogal"],
                    ["trash"] = L["trash Kaz'rogal"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_MH\\Img\\map_mh_horde",
                            ["btnId"] = 15,
                            ["buttons"] = {
                                {
                                    ["y"] = -266,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 317,
                                }, -- [1]
                                {
                                    ["y"] = -205,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 300,
                                }, -- [2]
                                {
                                    ["y"] = -288,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 398,
                                }, -- [3]
                                {
                                    ["y"] = -235,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 334,
                                }, -- [4]
                                {
                                    ["y"] = -255,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 335,
                                }, -- [5]
                                {
                                    ["y"] = -205,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 341,
                                }, -- [6]
                                {
                                    ["y"] = -252,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 250,
                                }, -- [7]
                                {
                                    ["y"] = -269,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 339,
                                }, -- [8]
                                {
                                    ["y"] = -223,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 271,
                                }, -- [9]
                                {
                                    ["y"] = -288,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 252,
                                }, -- [10]
                                {
                                    ["y"] = -320,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 311,
                                }, -- [11]
                                {
                                    ["y"] = -311,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 279,
                                }, -- [12]
                                {
                                    ["y"] = -317,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 346,
                                }, -- [13]
                                {
                                    ["y"] = -306,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 374,
                                }, -- [14]
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
                                        ["caption"] = BabbleBoss["Kaz'rogal"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [4] = {
                    ["name"] = BabbleBoss["Azgalor"],
                    ["tactictext"] =  L["tactic Azgalor"],
                    ["ratext"] = L["ra Azgalor"],
                    ["trash"] = L["trash Azgalor"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_MH\\Img\\map_mh_horde",
                            ["btnId"] = 19,
                            ["buttons"] = {
                                {
                                    ["y"] = -275,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 173,
                                }, -- [1]
                                {
                                    ["y"] = -206,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 286,
                                }, -- [2]
                                {
                                    ["y"] = -202,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 346,
                                }, -- [3]
                                {
                                    ["y"] = -231,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 313,
                                }, -- [4]
                                {
                                    ["y"] = -253,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 314,
                                }, -- [5]
                                {
                                    ["y"] = -248,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 155,
                                }, -- [6]
                                {
                                    ["y"] = -253,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 190,
                                }, -- [7]
                                {
                                    ["y"] = -227,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 190,
                                }, -- [8]
                                {
                                    ["y"] = -287,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 142,
                                }, -- [9]
                                {
                                    ["y"] = -297,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 329,
                                }, -- [10]
                                {
                                    ["y"] = -285,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 358,
                                }, -- [11]
                                {
                                    ["y"] = -304,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 294,
                                }, -- [12]
                                {
                                    ["y"] = -212,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 160,
                                }, -- [13]
                                {
                                    ["y"] = -243,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 247,
                                }, -- [14]
                                {
                                    ["y"] = -290,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 262,
                                }, -- [15]
                                {
                                    ["y"] = -269,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 247,
                                }, -- [16]
                                {
                                    ["y"] = -223,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 263,
                                }, -- [17]
                                {
                                    ["y"] = -200,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 316,
                                }, -- [18]
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
                                        ["caption"] = BabbleBoss["Azgalor"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [5] = {
                    ["name"] = BabbleBoss["Archimonde"],
                    ["tactictext"] =  L["tactic Archimonde"],
                    ["ratext"] = L["ra Archimonde"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_MH\\Img\\map_mh_archimonde",
                            ["btnId"] = 26,
                            ["buttons"] = {
                                {
                                    ["y"] = -276,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 82,
                                }, -- [1]
                                {
                                    ["y"] = -386,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 180,
                                }, -- [2]
                                {
                                    ["y"] = -246,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 56,
                                }, -- [3]
                                {
                                    ["y"] = -313,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 60,
                                }, -- [4]
                                {
                                    ["y"] = -309,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 84,
                                }, -- [5]
                                {
                                    ["y"] = -283,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 104,
                                }, -- [6]
                                {
                                    ["y"] = -300,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 116,
                                }, -- [7]
                                {
                                    ["y"] = -320,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 110,
                                }, -- [8]
                                {
                                    ["y"] = -334,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 97,
                                }, -- [9]
                                {
                                    ["y"] = -377,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 72,
                                }, -- [10]
                                {
                                    ["y"] = -372,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 108,
                                }, -- [11]
                                {
                                    ["y"] = -318,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 218,
                                }, -- [12]
                                {
                                    ["y"] = -253,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 175,
                                }, -- [13]
                                {
                                    ["y"] = -285,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 156,
                                }, -- [14]
                                {
                                    ["y"] = -236,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 89,
                                }, -- [15]
                                {
                                    ["y"] = -346,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 149,
                                }, -- [16]
                                {
                                    ["y"] = -258,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 205,
                                }, -- [17]
                                {
                                    ["y"] = -255,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 126,
                                }, -- [18]
                                {
                                    ["y"] = -212,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 128,
                                }, -- [19]
                                {
                                    ["y"] = -316,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 175,
                                }, -- [20]
                                {
                                    ["y"] = -351,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 192,
                                }, -- [21]
                                {
                                    ["y"] = -291,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 203,
                                }, -- [22]
                                {
                                    ["y"] = -223,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 159,
                                }, -- [23]
                                {
                                    ["y"] = -386,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 146,
                                }, -- [24]
                                {
                                    ["y"] = -206,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 95,
                                }, -- [25]
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
                                        ["caption"] = BabbleBoss["Archimonde"],
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

function BT_MH:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_MHDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_MH:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_MH:CheckUpdate()

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

function BT_MH:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_MH:OnEnable()
    -- Called when the addon is enabled
end

function BT_MH:OnDisable()
    -- Called when the addon is disabled
end