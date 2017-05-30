---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_BlackTemple = LibStub("AceAddon-3.0"):NewAddon("BT_BlackTemple","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_BlackTemple")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Black Temple"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_BlackTemple", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"],
		["patchlevel"] = "2.4.3",
		["bosses"] = {
		    ["mode25"] = {
            -- first boss
                [1] = {
                    ["name"] = BabbleBoss["High Warlord Naj'entus"],
                    ["ratext"] = L["ra Naj'entus"], --lines seperated by \n
                    ["tactictext"] = L["tactic Naj'entus"],
                    ["trash"] = L["trash Naj'entus"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_najentus",
                            ["btnId"] = 27, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                {
                                    ["y"] = -385,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 230,
                                }, -- [1]
                                {
                                    ["y"] = -467,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 117,
                                }, -- [2]
                                {
                                    ["y"] = -295,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 230,
                                }, -- [3]
                                {
                                    ["y"] = -431,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 261,
                                }, -- [4]
                                {
                                    ["y"] = -405,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["High Warlord Naj'entus"],
                                    ["x"] = 259,
                                }, -- [5]
                                {
                                    ["y"] = -301,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 298,
                                }, -- [6]
                                {
                                    ["y"] = -404,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 214,
                                }, -- [7]
                                {
                                    ["y"] = -380,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 282,
                                }, -- [8]
                                {
                                    ["y"] = -401,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 296,
                                }, -- [9]
                                {
                                    ["y"] = -526,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 254,
                                }, -- [10]
                                {
                                    ["y"] = -499,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 338,
                                }, -- [11]
                                {
                                    ["y"] = -476,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 253,
                                }, -- [12]
                                {
                                    ["y"] = -404,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 382,
                                }, -- [13]
                                {
                                    ["y"] = -421,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 86,
                                }, -- [14]
                                {
                                    ["y"] = -365,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 106,
                                }, -- [15]
                                {
                                    ["y"] = -359,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 362,
                                }, -- [16]
                                {
                                    ["y"] = -339,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 424,
                                }, -- [17]
                                {
                                    ["y"] = -488,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 490,
                                }, -- [18]
                                {
                                    ["y"] = -475,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 432,
                                }, -- [19]
                                {
                                    ["y"] = -330,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 64,
                                }, -- [20]
                                {
                                    ["y"] = -337,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 165,
                                }, -- [21]
                                {
                                    ["y"] = -335,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 256,
                                }, -- [22]
                                {
                                    ["y"] = -418,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 449,
                                }, -- [23]
                                {
                                    ["y"] = -325,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 377,
                                }, -- [24]
                                {
                                    ["y"] = -462,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 184,
                                }, -- [25]
                                {
                                    ["y"] = -446,
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
                                        ["caption"] = BabbleBoss["High Warlord Naj'entus"],
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
                    ["name"] = BabbleBoss["Supremus"],
                    ["tactictext"] =  L["tactic Supremus"],
                    ["ratext"] = L["ra Supremus"],
                    ["trash"] = L["trash Supremus"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_supremus",
                            ["btnId"] = 22,
                            ["buttons"] = {
                                {
                                    ["y"] = -321,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 209,
                                }, -- [1]
                                {
                                    ["y"] = -340,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 73,
                                }, -- [2]
                                {
                                    ["y"] = -340,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 127,
                                }, -- [3]
                                {
                                    ["y"] = -351,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 252,
                                }, -- [4]
                                {
                                    ["y"] = -323,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Supremus"],
                                    ["x"] = 252,
                                }, -- [5]
                                {
                                    ["y"] = -290,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 240,
                                }, -- [6]
                                {
                                    ["y"] = -295,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 280,
                                }, -- [7]
                                {
                                    ["y"] = -323,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 297,
                                }, -- [8]
                                {
                                    ["y"] = -388,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 166,
                                }, -- [9]
                                {
                                    ["y"] = -412,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 227,
                                }, -- [10]
                                {
                                    ["y"] = -409,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 298,
                                }, -- [11]
                                {
                                    ["y"] = -378,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 346,
                                }, -- [12]
                                {
                                    ["y"] = -331,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 375,
                                }, -- [13]
                                {
                                    ["y"] = -393,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 89,
                                }, -- [14]
                                {
                                    ["y"] = -437,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 120,
                                }, -- [15]
                                {
                                    ["y"] = -458,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 183,
                                }, -- [16]
                                {
                                    ["y"] = -463,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 256,
                                }, -- [17]
                                {
                                    ["y"] = -452,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 323,
                                }, -- [18]
                                {
                                    ["y"] = -422,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 372,
                                }, -- [19]
                                {
                                    ["y"] = -385,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 408,
                                }, -- [20]
                                {
                                    ["y"] = -341,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 433,
                                }, -- [21]
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
                                        ["caption"] = BabbleBoss["Supremus"],
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
                    ["name"] = BabbleBoss["Shade of Akama"],
                    ["tactictext"] =  L["tactic Akama"],
                    ["ratext"] = L["ra Akama"],
                    ["trash"] = L["trash Akama"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_akama",
                            ["btnId"] = 24,
                            ["buttons"] = {
                                {
                                    ["y"] = -454,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 226,
                                }, -- [1]
                                {
                                    ["y"] = -346,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 48,
                                }, -- [2]
                                {
                                    ["y"] = -389,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 393,
                                }, -- [3]
                                {
                                    ["y"] = -358,
                                    ["type"] = "t",
                                    ["caption"] = "MT",
                                    ["x"] = 252,
                                }, -- [4]
                                {
                                    ["y"] = -522,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Shade of Akama"],
                                    ["x"] = 253,
                                }, -- [5]
                                {
                                    ["y"] = -330,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 252,
                                }, -- [6]
                                {
                                    ["y"] = -484,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 383,
                                }, -- [7]
                                {
                                    ["y"] = -482,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 123,
                                }, -- [8]
                                {
                                    ["y"] = -390,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 37,
                                }, -- [9]
                                {
                                    ["y"] = -423,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 390,
                                }, -- [10]
                                {
                                    ["y"] = -362,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 160,
                                }, -- [11]
                                {
                                    ["y"] = -395,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 158,
                                }, -- [12]
                                {
                                    ["y"] = -401,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 365,
                                }, -- [13]
                                {
                                    ["y"] = -393,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 479,
                                }, -- [14]
                                {
                                    ["y"] = -373,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 90,
                                }, -- [15]
                                {
                                    ["y"] = -341,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 470,
                                }, -- [16]
                                {
                                    ["y"] = -372,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 449,
                                }, -- [17]
                                {
                                    ["y"] = -417,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 269,
                                }, -- [18]
                                {
                                    ["y"] = -458,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 290,
                                }, -- [19]
                                {
                                    ["y"] = -418,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 233,
                                }, -- [20]
                                {
                                    ["y"] = -446,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 119,
                                }, -- [21]
                                {
                                    ["y"] = -450,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 445,
                                }, -- [22]
                                {
                                    ["y"] = -382,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 185,
                                }, -- [23]
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
                                        ["caption"] = BabbleBoss["Shade of Akama"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Akama"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [7] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Channeler"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [4] = {
                    ["name"] = BabbleBoss["Teron Gorefiend"],
                    ["tactictext"] =  L["tactic Gorefiend"],
                    ["ratext"] = L["ra Gorefiend"],
                    ["trash"] = L["trash Gorefiend"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_gorefiend",
                            ["btnId"] = 29,
                            ["buttons"] = {
                                {
                                    ["y"] = -357,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 219,
                                }, -- [1]
                                {
                                    ["y"] = -471,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 118,
                                }, -- [2]
                                {
                                    ["y"] = -470,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 174,
                                }, -- [3]
                                {
                                    ["y"] = -327,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 251,
                                }, -- [4]
                                {
                                    ["y"] = -353,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Teron Gorefiend"],
                                    ["x"] = 251,
                                }, -- [5]
                                {
                                    ["y"] = -170,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 100,
                                }, -- [6]
                                {
                                    ["y"] = -176,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 385,
                                }, -- [7]
                                {
                                    ["y"] = -377,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 238,
                                }, -- [8]
                                {
                                    ["y"] = -375,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 271,
                                }, -- [9]
                                {
                                    ["y"] = -351,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 282,
                                }, -- [10]
                                {
                                    ["y"] = -486,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 151,
                                }, -- [11]
                                {
                                    ["y"] = -494,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 185,
                                }, -- [12]
                                {
                                    ["y"] = -475,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 207,
                                }, -- [13]
                                {
                                    ["y"] = -460,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 148,
                                }, -- [14]
                                {
                                    ["y"] = -481,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 236,
                                }, -- [15]
                                {
                                    ["y"] = -501,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 222,
                                }, -- [16]
                                {
                                    ["y"] = -504,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 253,
                                }, -- [17]
                                {
                                    ["y"] = -486,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 267,
                                }, -- [18]
                                {
                                    ["y"] = -471,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 332,
                                }, -- [19]
                                {
                                    ["y"] = -466,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 256,
                                }, -- [20]
                                {
                                    ["y"] = -500,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 289,
                                }, -- [21]
                                {
                                    ["y"] = -474,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 300,
                                }, -- [22]
                                {
                                    ["y"] = -491,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 320,
                                }, -- [23]
                                {
                                    ["y"] = -481,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 381,
                                }, -- [24]
                                {
                                    ["y"] = -452,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 315,
                                }, -- [25]
                                {
                                    ["y"] = -488,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 353,
                                }, -- [26]
                                {
                                    ["y"] = -464,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 280,
                                }, -- [27]
                                {
                                    ["y"] = -466,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 369,
                                }, -- [28]
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
                                        ["caption"] = BabbleBoss["Teron Gorefiend"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = L["die zone"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [5] = {
                    ["name"] = BabbleBoss["Gurtogg Bloodboil"],
                    ["tactictext"] =  L["tactic Bloodboil"],
                    ["ratext"] = L["ra Bloodboil"],
                    ["trash"] = L["trash Bloodboil"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_bloodboil",
                            ["btnId"] = 22,
                            ["buttons"] = {
                                {
                                    ["y"] = -320,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 185,
                                }, -- [1]
                                {
                                    ["y"] = -311,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 310,
                                }, -- [2]
                                {
                                    ["y"] = -336,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 310,
                                }, -- [3]
                                {
                                    ["y"] = -309,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 155,
                                }, -- [4]
                                {
                                    ["y"] = -342,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Gurtogg Bloodboil"],
                                    ["x"] = 170,
                                }, -- [5]
                                {
                                    ["y"] = -300,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 399,
                                }, -- [6]
                                {
                                    ["y"] = -336,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 143,
                                }, -- [7]
                                {
                                    ["y"] = -365,
                                    ["type"] = "t",
                                    ["caption"] = "Tank",
                                    ["x"] = 145,
                                }, -- [8]
                                {
                                    ["y"] = -340,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 202,
                                }, -- [9]
                                {
                                    ["y"] = -362,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 190,
                                }, -- [10]
                                {
                                    ["y"] = -371,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 176,
                                }, -- [11]
                                {
                                    ["y"] = -328,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 407,
                                }, -- [12]
                                {
                                    ["y"] = -354,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 415,
                                }, -- [13]
                                {
                                    ["y"] = -379,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 423,
                                }, -- [14]
                                {
                                    ["y"] = -358,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 315,
                                }, -- [15]
                                {
                                    ["y"] = -319,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 287,
                                }, -- [16]
                                {
                                    ["y"] = -351,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 286,
                                }, -- [17]
                                {
                                    ["y"] = -386,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 317,
                                }, -- [18]
                                {
                                    ["y"] = -378,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 289,
                                }, -- [19]
                                {
                                    ["y"] = -405,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 290,
                                }, -- [20]
                                {
                                    ["y"] = -412,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 319,
                                }, -- [21]
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [2] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [3] = {
                                        ["type"] = "h",
                                        ["caption"] = L["Bloodboil gr1"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [4] = {
                                        ["type"] = "f",
                                        ["caption"] = L["Bloodboil gr2"],
                                        ["r"] = 0,
                                        ["g"] = 0,
                                        ["b"] = 1,
                                    },
                                    [5] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Bloodboil gr3"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [6] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Gurtogg Bloodboil"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [6] = {
                    ["name"] = BabbleBoss["Reliquary of Souls"],
                    ["tactictext"] =  L["tactic Souls"],
                    ["ratext"] = L["ra Souls"],
                    ["trash"] = L["trash Souls"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_ros1",
                            ["btnId"] = 10,
                            ["buttons"] = {
                                {
                                    ["y"] = -247,
                                    ["type"] = "n",
                                    ["caption"] = "Schurke",
                                    ["x"] = 329,
                                }, -- [1]
                                {
                                    ["y"] = -284,
                                    ["type"] = "f",
                                    ["caption"] = "Schamane",
                                    ["x"] = 371,
                                }, -- [2]
                                {
                                    ["y"] = -228,
                                    ["type"] = "h",
                                    ["caption"] = "Jäger",
                                    ["x"] = 355,
                                }, -- [3]
                                {
                                    ["y"] = -276,
                                    ["type"] = "t",
                                    ["caption"] = "Krieger",
                                    ["x"] = 337,
                                }, -- [4]
                                {
                                    ["y"] = -257,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 359,
                                }, -- [5]
                                {
                                    ["y"] = -337,
                                    ["type"] = "h",
                                    ["caption"] = "Heiler",
                                    ["x"] = 179,
                                }, -- [6]
                                {
                                    ["y"] = -303,
                                    ["type"] = "f",
                                    ["caption"] = "Fernkämpfer",
                                    ["x"] = 166,
                                }, -- [7]
                                {
                                    ["y"] = -324,
                                    ["type"] = "f",
                                    ["caption"] = "Fernkämpfer",
                                    ["x"] = 217,
                                }, -- [8]
                                {
                                    ["y"] = -290,
                                    ["type"] = "h",
                                    ["caption"] = "Heiler",
                                    ["x"] = 198,
                                }, -- [9]

                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Reliquary of Souls"],
                                        ["r"] = 1,   --not optional, see tutorial for all standard colors
                                        ["g"] = 0,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                },
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase1&2"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_ros2",
                            ["btnId"] = 21,
                            ["buttons"] = {
                                {
                                    ["y"] = -318,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 321,
                                }, -- [1]
                                {
                                    ["y"] = -370,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 145,
                                }, -- [2]
                                {
                                    ["y"] = -379,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 119,
                                }, -- [3]
                                {
                                    ["y"] = -308,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 385,
                                }, -- [4]
                                {
                                    ["y"] = -339,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Reliquary of Souls"],
                                    ["x"] = 352,
                                }, -- [5]
                                {
                                    ["y"] = -351,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 312,
                                }, -- [6]
                                {
                                    ["y"] = -374,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 347,
                                }, -- [7]
                                {
                                    ["y"] = -355,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 391,
                                }, -- [8]
                                {
                                    ["y"] = -405,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 132,
                                }, -- [9]
                                {
                                    ["y"] = -426,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 154,
                                }, -- [10]
                                {
                                    ["y"] = -345,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 137,
                                }, -- [11]
                                {
                                    ["y"] = -394,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 162,
                                }, -- [12]
                                {
                                    ["y"] = -417,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 179,
                                }, -- [13]
                                {
                                    ["y"] = -354,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 168,
                                }, -- [14]
                                {
                                    ["y"] = -377,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 181,
                                }, -- [15]
                                {
                                    ["y"] = -398,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 197,
                                }, -- [16]
                                {
                                    ["y"] = -355,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 108,
                                }, -- [17]
                                {
                                    ["y"] = -402,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 105,
                                }, -- [18]
                                {
                                    ["y"] = -423,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 117,
                                }, -- [19]
                                {
                                    ["y"] = -377,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 92,
                                }, -- [20]
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
                                        ["caption"] = BabbleBoss["Reliquary of Souls"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [7] = {
                    ["name"] = BabbleBoss["Mother Shahraz"],
                    ["tactictext"] =  L["tactic Mother Shahraz"],
                    ["ratext"] = L["ra Mother Shahraz"],
                    ["trash"] = L["trash Mother Shahraz"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_shahraz",
                            ["btnId"] = 16,
                            ["buttons"] = {
                                {
                                    ["y"] = -218,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 317.5,
                                }, -- [1]
                                {
                                    ["y"] = -348,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 223,
                                }, -- [2]
                                {
                                    ["y"] = -330,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 244,
                                }, -- [3]
                                {
                                    ["y"] = -274,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 351,
                                }, -- [4]
                                {
                                    ["y"] = -245,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Mother Shahraz"],
                                    ["x"] = 347,
                                }, -- [5]
                                {
                                    ["y"] = -215,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 348,
                                }, -- [6]
                                {
                                    ["y"] = -228,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 379,
                                }, -- [7]
                                {
                                    ["y"] = -248,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 306,
                                }, -- [8]
                                {
                                    ["y"] = -354,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 253,
                                }, -- [9]
                                {
                                    ["y"] = -336,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 269,
                                }, -- [10]
                                {
                                    ["y"] = -371,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 238,
                                }, -- [11]
                                {
                                    ["y"] = -362,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 279,
                                }, -- [12]
                                {
                                    ["y"] = -318,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 219,
                                }, -- [13]
                                {
                                    ["y"] = -305,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 255,
                                }, -- [14]
                                {
                                    ["y"] = -376,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 270,
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
                                        ["caption"] = BabbleBoss["Mother Shahraz"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                    },
                },
                [8] = {
                    ["name"] = BabbleBoss["The Illidari Council"],
                    ["tactictext"] =  L["tactic Illidari Council"],
                    ["ratext"] = L["ra Illidari Council"],
                    ["trash"] = L["trash Illidari Council"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_illidari_council",
                            ["btnId"] = 28,
                            ["buttons"] = {
                                {
                                    ["y"] = -347,
                                    ["x"] = 411,
                                    ["caption"] = " ",
                                    ["type"] = "n",
                                }, -- [1]
                                {
                                    ["y"] = -334,
                                    ["x"] = 378,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [2]
                                {
                                    ["y"] = -280,
                                    ["x"] = 475,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [3]
                                {
                                    ["y"] = -308,
                                    ["x"] = 443,
                                    ["caption"] = " ",
                                    ["type"] = "t",
                                }, -- [4]
                                {
                                    ["y"] = -336,
                                    ["x"] = 437,
                                    ["caption"] = " ",
                                    ["type"] = "b",
                                }, -- [5]
                                {
                                    ["y"] = -234,
                                    ["x"] = 341,
                                    ["caption"] = " ",
                                    ["type"] = "x",
                                }, -- [6]
                                {
                                    ["y"] = -229,
                                    ["x"] = 157,
                                    ["caption"] = " ",
                                    ["type"] = "y",
                                }, -- [7]
                                {
                                    ["y"] = -341,
                                    ["x"] = 182,
                                    ["caption"] = " ",
                                    ["type"] = "z",
                                }, -- [8]
                                {
                                    ["y"] = -142,
                                    ["x"] = 269,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [9]
                                {
                                    ["y"] = -207,
                                    ["x"] = 144,
                                    ["caption"] = " ",
                                    ["type"] = "t",
                                }, -- [10]
                                {
                                    ["y"] = -356,
                                    ["x"] = 448,
                                    ["caption"] = " ",
                                    ["type"] = "n",
                                }, -- [11]
                                {
                                    ["y"] = -386,
                                    ["x"] = 481,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [12]
                                {
                                    ["y"] = -187,
                                    ["x"] = 311,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [13]
                                {
                                    ["y"] = -414,
                                    ["x"] = 280,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [14]
                                {
                                    ["y"] = -335,
                                    ["x"] = 294,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [15]
                                {
                                    ["y"] = -365,
                                    ["x"] = 190,
                                    ["caption"] = " ",
                                    ["type"] = "t",
                                }, -- [16]
                                {
                                    ["y"] = -479,
                                    ["x"] = 232,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [17]
                                {
                                    ["y"] = -506,
                                    ["x"] = 160,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [18]
                                {
                                    ["y"] = -496,
                                    ["x"] = 72,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [19]
                                {
                                    ["y"] = -426,
                                    ["x"] = 159,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [20]
                                {
                                    ["y"] = -464,
                                    ["x"] = 24,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [21]
                                {
                                    ["y"] = -293,
                                    ["x"] = 143,
                                    ["caption"] = " ",
                                    ["type"] = "h",
                                }, -- [22]
                                {
                                    ["y"] = -289,
                                    ["x"] = 202,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [23]
                                {
                                    ["y"] = -308,
                                    ["x"] = 87,
                                    ["caption"] = " ",
                                    ["type"] = "f",
                                }, -- [24]
                                {
                                    ["y"] = -332,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 160,
                                }, -- [25]
                                {
                                    ["y"] = -321,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 179,
                                }, -- [26]
                                {
                                    ["y"] = -328,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 202,
                                }, -- [27]
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
                                        ["caption"] = BabbleBoss["Lady Malande"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["High Nethermancer Zerevor"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [7] = {
                                        ["type"] = "y",
                                        ["caption"] = BabbleBoss["Veras Darkshadow"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [8] = {
                                        ["type"] = "z",
                                        ["caption"] = BabbleBoss["Gathios the Shatterer"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [9] = {
                    ["name"] = BabbleBoss["Illidan Stormrage"],
                    ["tactictext"] =  L["tactic Illidan"],
                    ["ratext"] = L["ra Illidan"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_illidan1",
                            ["btnId"] = 7,
                            ["buttons"] = {
                                {
                                        ["y"] = -209,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 344,
                                    }, -- [1]
                                    {
                                        ["y"] = -303,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 262,
                                    }, -- [2]
                                    {
                                        ["y"] = -253,
                                        ["type"] = "t",
                                        ["caption"] = " ",
                                        ["x"] = 372,
                                    }, -- [3]
                                    {
                                        ["y"] = -226,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 363,
                                    }, -- [4]
                                    {
                                        ["y"] = -396,
                                        ["type"] = "x",
                                        ["caption"] = " ",
                                        ["x"] = 183,
                                    }, -- [5]
                                    {
                                        ["y"] = -202,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 367,
                                    }, -- [6]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase1"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [2] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [3] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Illidan Stormrage"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [4] = {
                                        ["type"] = "x",
                                        ["caption"] = L["shadowzone"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [5] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer range"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_illidan1",
                            ["btnId"] = 13,
                            ["buttons"] = {
                                {
                                    ["y"] = -399,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 213,
                                }, -- [1]
                                {
                                    ["y"] = -318,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 236,
                                }, -- [2]
                                {
                                    ["y"] = -398,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 251,
                                }, -- [3]
                                {
                                    ["y"] = -317,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 271,
                                }, -- [4]
                                {
                                    ["y"] = -253,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 253,
                                }, -- [5]
                                {
                                    ["y"] = -402,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 285,
                                }, -- [6]
                                {
                                    ["y"] = -397,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 180,
                                }, -- [7]
                                {
                                    ["y"] = -400,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 322,
                                }, -- [8]
                                {
                                    ["y"] = -252,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 221,
                                }, -- [9]
                                {
                                    ["y"] = -254,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 287,
                                }, -- [10]
                                {
                                    ["y"] = -256,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 319,
                                }, -- [11]
                                {
                                    ["y"] = -253,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 191,
                                }, -- [12]

                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase2"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [2] = {
                                        ["type"] = "b",
                                        ["caption"] = L["Blades of Azzinoth"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [3] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer range"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [4] = {
                                        ["type"] = "n",
                                        ["caption"] = L["Flames of Azzinoth"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                },
                            },
                        },
                        [3] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_illidan2",
                            ["btnId"] = 17,
                            ["buttons"] = {
                                {
                                        ["y"] = -261,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 224,
                                    }, -- [1]
                                    {
                                        ["y"] = -374,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 326,
                                    }, -- [2]
                                    {
                                        ["y"] = -248,
                                        ["type"] = "t",
                                        ["caption"] = " ",
                                        ["x"] = 270,
                                    }, -- [3]
                                    {
                                        ["y"] = -266,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 251,
                                    }, -- [4]
                                    {
                                        ["y"] = -430,
                                        ["type"] = "x",
                                        ["caption"] = " ",
                                        ["x"] = 256,
                                    }, -- [5]
                                    {
                                        ["y"] = -288,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 233,
                                    }, -- [6]
                                    {
                                        ["y"] = -291,
                                        ["type"] = "n",
                                        ["caption"] = " ",
                                        ["x"] = 262,
                                    }, -- [7]
                                    {
                                        ["y"] = -343,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 260,
                                    }, -- [8]
                                    {
                                        ["y"] = -286,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 391,
                                    }, -- [9]
                                    {
                                        ["y"] = -325,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 332,
                                    }, -- [10]
                                    {
                                        ["y"] = -349,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 411,
                                    }, -- [11]
                                    {
                                        ["y"] = -357,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 184,
                                    }, -- [12]
                                    {
                                        ["y"] = -316,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 125,
                                    }, -- [13]
                                    {
                                        ["y"] = -378,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 110,
                                    }, -- [14]
                                    {
                                        ["y"] = -259,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 114,
                                    }, -- [15]
                                    {
                                        ["y"] = -317,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 464,
                                    }, -- [16]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase3&5"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "t",
                                        ["caption"] = L_main["tank"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                    [2] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [3] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Illidan Stormrage"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [4] = {
                                        ["type"] = "x",
                                        ["caption"] = L["shadowzone"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [5] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer range"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                },
                            },
                        },
                        [4] = {
                            ["source"] = "Interface\\Addons\\BT_BlackTemple\\Img\\map_bt_illidan3",
                            ["btnId"] = 18,
                            ["buttons"] = {
                                {
                                        ["y"] = -360,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 439,
                                    }, -- [1]
                                    {
                                        ["y"] = -260,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 171,
                                    }, -- [2]
                                    {
                                        ["y"] = -257,
                                        ["type"] = "x",
                                        ["caption"] = " ",
                                        ["x"] = 373,
                                    }, -- [3]
                                    {
                                        ["y"] = -294,
                                        ["type"] = "y",
                                        ["caption"] = " ",
                                        ["x"] = 142,
                                    }, -- [4]
                                    {
                                        ["y"] = -292,
                                        ["type"] = "y",
                                        ["caption"] = " ",
                                        ["x"] = 202,
                                    }, -- [5]
                                    {
                                        ["y"] = -268,
                                        ["type"] = "y",
                                        ["caption"] = " ",
                                        ["x"] = 247,
                                    }, -- [6]
                                    {
                                        ["y"] = -424,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 445,
                                    }, -- [7]
                                    {
                                        ["y"] = -384,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 342,
                                    }, -- [8]
                                    {
                                        ["y"] = -524,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 355,
                                    }, -- [9]
                                    {
                                        ["y"] = -420,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 244,
                                    }, -- [10]
                                    {
                                        ["y"] = -496,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 49,
                                    }, -- [11]
                                    {
                                        ["y"] = -484,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 467,
                                    }, -- [12]
                                    {
                                        ["y"] = -439,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 157,
                                    }, -- [13]
                                    {
                                        ["y"] = -489,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 273,
                                    }, -- [14]
                                    {
                                        ["y"] = -514,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 158,
                                    }, -- [15]
                                    {
                                        ["y"] = -429,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 74,
                                    }, -- [16]
                                    {
                                        ["y"] = -461,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 357,
                                    }, -- [17]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase4"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Shadow Demon"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [2] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer range"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [3] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Warlock Tank"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [4] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Illidan Stormrage"],
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

function BT_BlackTemple:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_BlackTempleDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_BlackTemple:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_BlackTemple:CheckUpdate()

	--the versions stored by the client musst be one more
	--because otherwise it woudnt been saved in the savedVariables
	if(not self.db.profile.initial)then
		if(defaults.profile.version+1 > self.db.profile.version)then
		--	if(defaults.profile.version >= 12)then
		--		BT_main:ShowUpdateInfoFrame()
		--	end
		end
	end
	self.db.profile.version = defaults.profile.version+1
	self.db.profile.initial = false
end;


----------------------------------------------------------------
--dont touch this functions!
----------------------------------------------------------------

function BT_BlackTemple:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_BlackTemple:OnEnable()
    -- Called when the addon is enabled
end

function BT_BlackTemple:OnDisable()
    -- Called when the addon is disabled
end