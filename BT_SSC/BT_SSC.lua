---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_SSC = LibStub("AceAddon-3.0"):NewAddon("BT_SSC","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_SSC")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Serpentshrine Cavern"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_SSC", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"],
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Hydross the Unstable"],
                    ["ratext"] = L["ra Hydross"], --lines seperated by \n
                    ["tactictext"] = L["tactic Hydross"],
                    ["trash"] = L["trash Hydross"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_hydross",
                            ["btnId"] = 26, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                {
                                    ["y"] = -207,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 236,
                                }, -- [1]
                                {
                                    ["y"] = -400,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 143,
                                }, -- [2]
                                {
                                    ["y"] = -479,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 129,
                                }, -- [3]
                                {
                                    ["y"] = -186,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 252,
                                }, -- [5]
                                {
                                    ["y"] = -161,
                                    ["type"] = "t",
                                    ["caption"] = L["Frostresi Tank"],
                                    ["x"] = 254,
                                }, -- [7]
                                {
                                    ["y"] = -381,
                                    ["type"] = "t",
                                    ["caption"] = L["Add Tank"],
                                    ["x"] = 240,
                                }, -- [8]
                                {
                                    ["y"] = -453,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 480,
                                }, -- [9]
                                {
                                    ["y"] = -340,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 87,
                                }, -- [10]
                                {
                                    ["y"] = -416,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 69,
                                }, -- [11]
                                {
                                    ["y"] = -459,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 417,
                                }, -- [12]
                                {
                                    ["y"] = -412,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 435,
                                }, -- [13]
                                {
                                    ["y"] = -364,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 432,
                                }, -- [14]
                                {
                                    ["y"] = -299,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 436,
                                }, -- [15]
                                {
                                    ["y"] = -447,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 355,
                                }, -- [16]
                                {
                                    ["y"] = -212,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 267,
                                }, -- [17]
                                {
                                    ["y"] = -192,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 274,
                                }, -- [18]
                                {
                                    ["y"] = -384,
                                    ["type"] = "t",
                                    ["caption"] = L["Add Tank"],
                                    ["x"] = 314,
                                }, -- [19]
                                {
                                    ["y"] = -332,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 147,
                                }, -- [20]
                                {
                                    ["y"] = -329,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 379,
                                }, -- [21]
                                {
                                    ["y"] = -439,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 212,
                                }, -- [22]
                                {
                                    ["y"] = -296,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 133,
                                }, -- [23]
                                {
                                    ["y"] = -381,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 389,
                                }, -- [24]
                                {
                                    ["y"] = -286,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 389,
                                }, -- [25]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 1"],
                                },
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
                                        ["caption"] = L["Hydross frost form"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_hydross",
                            ["btnId"] = 26, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                {
                                    ["y"] = -487,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 236,
                                }, -- [1]
                                {
                                    ["y"] = -400,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 143,
                                }, -- [2]
                                {
                                    ["y"] = -479,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 129,
                                }, -- [3]
                                {
                                    ["y"] = -526,
                                    ["type"] = "t",
                                    ["caption"] = L["Natureresi Tank"],
                                    ["x"] = 228,
                                }, -- [4]
                                {
                                    ["y"] = -508,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 248,
                                }, -- [6]
                                {
                                    ["y"] = -381,
                                    ["type"] = "t",
                                    ["caption"] = L["Add Tank"],
                                    ["x"] = 240,
                                }, -- [8]
                                {
                                    ["y"] = -453,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 480,
                                }, -- [9]
                                {
                                    ["y"] = -340,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 87,
                                }, -- [10]
                                {
                                    ["y"] = -416,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 69,
                                }, -- [11]
                                {
                                    ["y"] = -459,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 417,
                                }, -- [12]
                                {
                                    ["y"] = -412,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 435,
                                }, -- [13]
                                {
                                    ["y"] = -364,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 432,
                                }, -- [14]
                                {
                                    ["y"] = -299,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 436,
                                }, -- [15]
                                {
                                    ["y"] = -447,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 355,
                                }, -- [16]
                                {
                                    ["y"] = -492,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 267,
                                }, -- [17]
                                {
                                    ["y"] = -522,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 274,
                                }, -- [18]
                                {
                                    ["y"] = -384,
                                    ["type"] = "t",
                                    ["caption"] = L["Add Tank"],
                                    ["x"] = 314,
                                }, -- [19]
                                {
                                    ["y"] = -332,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 147,
                                }, -- [20]
                                {
                                    ["y"] = -329,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 379,
                                }, -- [21]
                                {
                                    ["y"] = -439,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 212,
                                }, -- [22]
                                {
                                    ["y"] = -296,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 133,
                                }, -- [23]
                                {
                                    ["y"] = -381,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 389,
                                }, -- [24]
                                {
                                    ["y"] = -286,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 389,
                                }, -- [25]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 2"],
                                },
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
                                        ["caption"] = L["Hydross nature form"],
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
                    ["name"] = BabbleBoss["The Lurker Below"],
                    ["ratext"] = L["ra Lurker"],
                    ["tactictext"] = L["tactic Lurker"],
                    ["trash"] = L["trash Lurker"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_lurker",
                            ["btnId"] = 25,
                            ["buttons"] = {
                                {
                                        ["y"] = -304,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 298,
                                    }, -- [1]
                                    {
                                        ["y"] = -317,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 463,
                                    }, -- [2]
                                    {
                                        ["y"] = -384,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 158,
                                    }, -- [3]
                                    {
                                        ["y"] = -409,
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["x"] = 258,
                                    }, -- [4]
                                    {
                                        ["y"] = -231,
                                        ["type"] = "t",
                                        ["caption"] = L["Add Tank"],
                                        ["x"] = 246,
                                    }, -- [5]
                                    {
                                        ["y"] = -323,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 145,
                                    }, -- [6]
                                    {
                                        ["y"] = -293,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 152,
                                    }, -- [7]
                                    {
                                        ["y"] = -241,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 184,
                                    }, -- [8]
                                    {
                                        ["y"] = -223,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 300,
                                    }, -- [9]
                                    {
                                        ["y"] = -241,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 321,
                                    }, -- [10]
                                    {
                                        ["y"] = -317,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 330,
                                    }, -- [11]
                                    {
                                        ["y"] = -345,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 480,
                                    }, -- [12]
                                    {
                                        ["y"] = -347,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 454,
                                    }, -- [13]
                                    {
                                        ["y"] = -269,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 44,
                                    }, -- [14]
                                    {
                                        ["y"] = -290,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 17,
                                    }, -- [15]
                                    {
                                        ["y"] = -326,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 24,
                                    }, -- [16]
                                    {
                                        ["y"] = -123,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 355,
                                    }, -- [17]
                                    {
                                        ["y"] = -137,
                                        ["type"] = "f",
                                        ["caption"] = "",
                                        ["x"] = 328,
                                    }, -- [18]
                                    {
                                        ["y"] = -154,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 363,
                                    }, -- [19]
                                    {
                                        ["y"] = -318,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 60,
                                    }, -- [20]
                                    {
                                        ["y"] = -259,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 277,
                                    }, -- [21]
                                    {
                                        ["y"] = -354,
                                        ["type"] = "t",
                                        ["caption"] = L["Add Tank"],
                                        ["x"] = 156,
                                    }, -- [22]
                                    {
                                        ["y"] = -299,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 188,
                                    }, -- [23]
                                    {
                                        ["y"] = -323,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 436,
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
                                },
                            },
                        },
                    },
                },
                [3] = {
                    ["name"] = BabbleBoss["Leotheras the Blind"],
                    ["ratext"] = L["ra Leotheras"],
                    ["tactictext"] = L["tactic Leotheras"],
                    ["trash"] = L["trash Leotheras"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_leotheras",
                            ["btnId"] = 24,
                            ["buttons"] = {
                                {
                                    ["y"] = -356,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 212,
                                }, -- [1]
                                {
                                    ["y"] = -221,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 103,
                                }, -- [2]
                                {
                                    ["y"] = -242,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 331,
                                }, -- [3]
                                {
                                    ["y"] = -320,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 223,
                                }, -- [4]
                                {
                                    ["y"] = -342,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 236,
                                }, -- [5]
                                {
                                    ["y"] = -323,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 253,
                                }, -- [6]
                                {
                                    ["y"] = -365,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 239,
                                }, -- [7]
                                {
                                    ["y"] = -352,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 263,
                                }, -- [8]
                                {
                                    ["y"] = -258,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 354,
                                }, -- [9]
                                {
                                    ["y"] = -278,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 377,
                                }, -- [10]
                                {
                                    ["y"] = -251,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 146,
                                }, -- [11]
                                {
                                    ["y"] = -281,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 120,
                                }, -- [12]
                                {
                                    ["y"] = -314,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 93,
                                }, -- [13]
                                {
                                    ["y"] = -214,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 379,
                                }, -- [14]
                                {
                                    ["y"] = -258,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 85,
                                }, -- [15]
                                {
                                    ["y"] = -287,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 59,
                                }, -- [16]
                                {
                                    ["y"] = -329,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 57,
                                }, -- [17]
                                {
                                    ["y"] = -306,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 127,
                                }, -- [18]
                                {
                                    ["y"] = -215,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 338,
                                }, -- [19]
                                {
                                    ["y"] = -241,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 391,
                                }, -- [20]
                                {
                                    ["y"] = -276,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 409,
                                }, -- [21]
                                {
                                    ["y"] = -304,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 406,
                                }, -- [22]
                                {
                                    ["y"] = -332,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 394,
                                }, -- [23]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 1"],
                                },
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
                                        ["caption"] = BabbleBoss["Leotheras the Blind"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_leotheras",
                            ["btnId"] = 18,
                            ["buttons"] = {
                                {
                                    ["y"] = -293,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 192,
                                }, -- [1]
                                {
                                    ["y"] = -246,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 231,
                                }, -- [2]
                                {
                                    ["y"] = -290,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 166,
                                }, -- [3]
                                {
                                    ["y"] = -200,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 124,
                                }, -- [4]
                                {
                                    ["y"] = -241,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 115,
                                }, -- [5]
                                {
                                    ["y"] = -317,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 171,
                                }, -- [6]
                                {
                                    ["y"] = -321,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 202,
                                }, -- [7]
                                {
                                    ["y"] = -271,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 100,
                                }, -- [8]
                                {
                                    ["y"] = -297 ,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 80,
                                }, -- [9]
                                {
                                    ["y"] = -256,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 317,
                                }, -- [10]
                                {
                                    ["y"] = -226,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 94,
                                }, -- [11]
                                {
                                    ["y"] = -262,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 62,
                                }, -- [12]
                                {
                                    ["y"] = -232,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 329,
                                }, -- [13]
                                {
                                    ["y"] = -271,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 346,
                                }, -- [14]
                                {
                                    ["y"] = -302,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 357,
                                }, -- [15]
                                {
                                    ["y"] = -289,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 327,
                                }, -- [16]
                                {
                                    ["y"] = -248,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 362,
                                }, -- [17]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 2"],
                                },
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
                                        ["caption"] = L["warlock tank"],
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
                                        ["caption"] = BabbleBoss["Shadow of Leotheras"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [3] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_leotheras",
                            ["btnId"] = 21,
                            ["buttons"] = {
                                {
                                    ["y"] = -343,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 248,
                                }, -- [1]
                                {
                                    ["y"] = -399,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 314,
                                }, -- [2]
                                {
                                    ["y"] = -464,
                                    ["type"] = "t",
                                    ["caption"] = L["warlock tank"],
                                    ["x"] = 375,
                                }, -- [3]
                                {
                                    ["y"] = -324,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 225,
                                }, -- [4]
                                {
                                    ["y"] = -319,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 259,
                                }, -- [5]
                                {
                                    ["y"] = -222,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 156,
                                }, -- [6]
                                {
                                    ["y"] = -269,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 97,
                                }, -- [7]
                                {
                                    ["y"] = -467,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 159,
                                }, -- [8]
                                {
                                    ["y"] = -283,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 380,
                                }, -- [9]
                                {
                                    ["y"] = -216,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 278,
                                }, -- [10]
                                {
                                    ["y"] = -389,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 424,
                                }, -- [11]
                                {
                                    ["y"] = -399,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 109,
                                }, -- [12]
                                {
                                    ["y"] = -216,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 220,
                                }, -- [13]
                                {
                                    ["y"] = -216,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 312,
                                }, -- [14]
                                {
                                    ["y"] = -235,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 366,
                                }, -- [15]
                                {
                                    ["y"] = -469,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 235,
                                }, -- [16]
                                {
                                    ["y"] = -333,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 376,
                                }, -- [17]
                                {
                                    ["y"] = -338,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 99,
                                }, -- [18]
                                {
                                    ["y"] = -366,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 232,
                                }, -- [19]
                                {
                                    ["y"] = -369,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 261,
                                }, -- [20]

                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 3"],
                                },
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
                                        ["caption"] = BabbleBoss["Leotheras the Blind"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["Shadow of Leotheras"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [4] = {
                    ["name"] = BabbleBoss["Morogrim Tidewalker"],
                    ["ratext"] = L["ra Morogrim"],
                    ["tactictext"] = L["tactic Morogrim"],
                    ["trash"] = L["trash Morogrim"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_morogrim",
                            ["btnId"] = 11,
                            ["buttons"] = {
                                {
                                    ["y"] = -171,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 221,
                                }, -- [1]
                                {
                                    ["y"] = -209,
                                    ["type"] = "f",
                                    ["caption"] = L["Raid"],
                                    ["x"] = 229,
                                }, -- [2]
                                {
                                    ["y"] = -282,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 211,
                                }, -- [3]
                                {
                                    ["y"] = -140,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 235,
                                }, -- [4]
                                {
                                    ["y"] = -159,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 237,
                                }, -- [5]
                                {
                                    ["y"] = -154,
                                    ["type"] = "t",
                                    ["caption"] = L["Murloc-Tank"],
                                    ["x"] = 300,
                                }, -- [6]
                                {
                                    ["y"] = -285,
                                    ["type"] = "t",
                                    ["caption"] = L["Murloc-Tank"],
                                    ["x"] = 252,
                                }, -- [7]
                                {
                                    ["y"] = -207,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 324,
                                }, -- [8]
                                {
                                    ["y"] = -176,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 243.9289093017578,
                                }, -- [9]
                                {
                                    ["y"] = -166,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 254,
                                }, -- [10]
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "h",
                                        ["caption"] = L_main["healer"],
                                        ["r"] = 0,   --not optional, see tutorial for all standard colors
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [2] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [3] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [4] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Morogrim Tidewalker"],
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
                    ["name"] = BabbleBoss["Fathom-Lord Karathress"],
                    ["ratext"] = L["ra Karathress"],
                    ["tactictext"] = L["tactic Karathress"],
                    ["trash"] = L["trash Karathress"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_karathress",
                            ["btnId"] = 27,
                            ["buttons"] = {
                                {
                                    ["y"] = -201,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 390,
                                }, -- [1]
                                {
                                    ["y"] = -530,
                                    ["type"] = "f",
                                    ["caption"] = BabbleClass["Warlock"],
                                    ["x"] = 13,
                                }, -- [2]
                                {
                                    ["y"] = -287,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 16,
                                }, -- [3]
                                {
                                    ["y"] = -436,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 421,
                                }, -- [4]
                                {
                                    ["y"] = -464,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 420,
                                }, -- [5]
                                {
                                    ["y"] = -176,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 398,
                                }, -- [6]
                                {
                                    ["y"] = -266,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 78,
                                }, -- [7]
                                {
                                    ["y"] = -517,
                                    ["type"] = "z",
                                    ["caption"] = " ",
                                    ["x"] = 55,
                                }, -- [8]
                                {
                                    ["y"] = -266,
                                    ["type"] = "y",
                                    ["caption"] = L["Pet"],
                                    ["x"] = 109,
                                }, -- [9]
                                {
                                    ["y"] = -152,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 411,
                                }, -- [10]
                                {
                                    ["y"] = -518,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 83,
                                }, -- [11]
                                {
                                    ["y"] = -293,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 81,
                                }, -- [12]
                                {
                                    ["y"] = -324,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 17,
                                }, -- [13]
                                {
                                    ["y"] = -407,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 480,
                                }, -- [14]
                                {
                                    ["y"] = -377,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 488,
                                }, -- [15]
                                {
                                    ["y"] = -191,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 431,
                                }, -- [16]
                                {
                                    ["y"] = -111,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 345,
                                }, -- [17]
                                {
                                    ["y"] = -461,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 16,
                                }, -- [18]
                                {
                                    ["y"] = -490,
                                    ["type"] = "h",
                                    ["caption"] = BabbleClass["Paladin"],
                                    ["x"] = 14,
                                }, -- [19]
                                {
                                    ["y"] = -503,
                                    ["type"] = "f",
                                    ["caption"] = BabbleClass["Mage"],
                                    ["x"] = 34,
                                }, -- [20]
                                {
                                    ["y"] = -151,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 299,
                                }, -- [21]
                                {
                                    ["y"] = -174,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 370,
                                }, -- [22]
                                {
                                    ["y"] = -195,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 292,
                                }, -- [23]
                                {
                                    ["y"] = -112,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 295,
                                }, -- [24]
                                {
                                    ["y"] = -96,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 387,
                                }, -- [25]
                                {
                                    ["y"] = -149,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 334,
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
                                        ["caption"] = BabbleBoss["Fathom-Lord Karathress"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Fathom-Guard Tidalvess"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [7] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Fathom-Guard Sharkkis"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [8] = {
                                        ["type"] = "z",
                                        ["caption"] = L["Fathom-Guard Tidalvess"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [6] = {
                    ["name"] = BabbleBoss["Lady Vashj"],
                    ["ratext"] = L["ra Vashj"],
                    ["tactictext"] = L["tactic Vashj"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_vashj2",
                            ["btnId"] = 27,
                            ["buttons"] = {
                                {
                                        ["y"] = -260,
                                        ["x"] = 225,
                                        ["caption"] = " ",
                                        ["type"] = "n",
                                    }, -- [1]
                                    {
                                        ["y"] = -375,
                                        ["x"] = 175,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [3]
                                    {
                                        ["y"] = -287,
                                        ["x"] = 232,
                                        ["caption"] = " ",
                                        ["type"] = "t",
                                    }, -- [4]
                                    {
                                        ["y"] = -268,
                                        ["x"] = 248,
                                        ["caption"] = " ",
                                        ["type"] = "b",
                                    }, -- [5]
                                    {
                                        ["y"] = -293,
                                        ["x"] = 249,
                                        ["caption"] = " ",
                                        ["type"] = "t",
                                    }, -- [6]
                                    {
                                        ["y"] = -246,
                                        ["x"] = 249,
                                        ["caption"] = " ",
                                        ["type"] = "n",
                                    }, -- [7]
                                    {
                                        ["y"] = -255,
                                        ["x"] = 270,
                                        ["caption"] = " ",
                                        ["type"] = "n",
                                    }, -- [8]
                                    {
                                        ["y"] = -281,
                                        ["x"] = 276,
                                        ["caption"] = " ",
                                        ["type"] = "n",
                                    }, -- [9]
                                    {
                                        ["y"] = -433,
                                        ["x"] = 234,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [10]
                                    {
                                        ["y"] = -386,
                                        ["x"] = 306,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [11]
                                    {
                                        ["y"] = -360,
                                        ["x"] = 78,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [12]
                                    {
                                        ["y"] = -432,
                                        ["x"] = 150,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [13]
                                    {
                                        ["y"] = -451,
                                        ["x"] = 322,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [14]
                                    {
                                        ["y"] = -414,
                                        ["x"] = 373,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [15]
                                    {
                                        ["y"] = -202,
                                        ["x"] = 125,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [16]
                                    {
                                        ["y"] = -230,
                                        ["x"] = 70,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [17]
                                    {
                                        ["y"] = -299,
                                        ["x"] = 70,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [18]
                                    {
                                        ["y"] = -270,
                                        ["x"] = 118,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [19]
                                    {
                                        ["y"] = -325,
                                        ["x"] = 441,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [20]
                                    {
                                        ["y"] = -150,
                                        ["x"] = 326,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [21]
                                    {
                                        ["y"] = -134,
                                        ["x"] = 253,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [22]
                                    {
                                        ["y"] = -275,
                                        ["x"] = 441,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [23]
                                    {
                                        ["y"] = -173,
                                        ["x"] = 286,
                                        ["caption"] = " ",
                                        ["type"] = "h",
                                    }, -- [24]
                                    {
                                        ["y"] = -139,
                                        ["x"] = 184,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [25]
                                    {
                                        ["y"] = -355,
                                        ["x"] = 402,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [26]
                                    {
                                        ["y"] = -310,
                                        ["x"] = 386,
                                        ["caption"] = " ",
                                        ["type"] = "f",
                                    }, -- [27]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 1 & 3"],
                                },
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
                                        ["caption"] = BabbleBoss["Lady Vashj"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SSC\\Img\\map_ssc_vashj1",
                            ["btnId"] = 19,
                            ["buttons"] = {
                                {
                                    ["y"] = -453,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 54,
                                }, -- [1]
                                {
                                    ["y"] = -352,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 153,
                                }, -- [2]
                                {
                                    ["y"] = -374,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 209,
                                }, -- [3]
                                {
                                    ["y"] = -297,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 262,
                                }, -- [4]
                                {
                                    ["y"] = -265,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 135,
                                }, -- [5]
                                {
                                    ["y"] = -382,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 495,
                                }, -- [6]
                                {
                                    ["y"] = -299,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 446,
                                }, -- [7]
                                {
                                    ["y"] = -307,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 266,
                                }, -- [8]
                                {
                                    ["y"] = -332,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 420,
                                }, -- [9]
                                {
                                    ["y"] = -275,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 360,
                                }, -- [10]
                                {
                                    ["y"] = -276,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 171,
                                }, -- [11]
                                {
                                    ["y"] = -322,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 307,
                                }, -- [12]
                                {
                                    ["y"] = -279,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 312,
                                }, -- [13]
                                {
                                    ["y"] = -275,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 233,
                                }, -- [14]
                                {
                                    ["y"] = -313,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 215,
                                }, -- [15]
                                {
                                    ["y"] = -350,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 390,
                                }, -- [16]
                                {
                                    ["y"] = -293,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 415,
                                }, -- [17]
                                {
                                    ["y"] = -261,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 187,
                                }, -- [18]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 2"],
                                },
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
                                        ["caption"] = BabbleBoss["Lady Vashj"],
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

function BT_SSC:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_SSCDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_SSC:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_SSC:CheckUpdate()

	--the versions stored by the client musst be one more
	--because otherwise it woudnt been saved in the savedVariables
	if(not self.db.profile.initial)then
		if(defaults.profile.version+1 > self.db.profile.version)then
			if(defaults.profile.version >= 12)then
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

function BT_SSC:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_SSC:OnEnable()
    -- Called when the addon is enabled
end

function BT_SSC:OnDisable()
    -- Called when the addon is disabled
end