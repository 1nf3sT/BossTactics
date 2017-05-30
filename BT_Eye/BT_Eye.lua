---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_Eye = LibStub("AceAddon-3.0"):NewAddon("BT_Eye","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_Eye")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["The Eye"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_Eye", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"],
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Al'ar"],
                    ["ratext"] = L["ra Al'ar"], --lines seperated by \n
                    ["tactictext"] = L["tactic Al'ar"],
                    ["trash"] = L["trash Al'ar"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_alar1",
                            ["btnId"] = 14, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                {
                                    ["y"] = -493,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 86,
                                }, -- [1]
                                {
                                    ["y"] = -448,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 98,
                                }, -- [2]
                                {
                                    ["y"] = -452,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 125,
                                }, -- [3]
                                {
                                    ["y"] = -205,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 95,
                                }, -- [4]
                                {
                                    ["y"] = -164,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 244,
                                }, -- [5]
                                {
                                    ["y"] = -216,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 412,
                                }, -- [6]
                                {
                                    ["y"] = -372,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 440,
                                }, -- [7]
                                {
                                    ["y"] = -523,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 66,
                                }, -- [8]
                                {
                                    ["y"] = -514,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 108,
                                }, -- [9]
                                {
                                    ["y"] = -520,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 136,
                                }, -- [10]
                                {
                                    ["y"] = -492,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 121,
                                }, -- [11]
                                {
                                    ["y"] = -309,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 134,
                                }, -- [12]
                                {
                                    ["y"] = -289,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 152,
                                }, -- [13]
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
                                        ["caption"] = L["tank position"],
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
                        --second image
                        [2] = {
                            ["source"] =  "Interface\\Addons\\BT_Eye\\Img\\map_tk_alar2",
                            ["btnId"] = 20,
                            ["buttons"] = {
                                {
                                    ["y"] = -305,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 391,
                                }, -- [1]
                                {
                                    ["y"] = -292,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 368,
                                }, -- [2]
                                {
                                    ["y"] = -279,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 402,
                                }, -- [3]
                                {
                                    ["y"] = -221,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 293,
                                }, -- [4]
                                {
                                    ["y"] = -232,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 189,
                                }, -- [5]
                                {
                                    ["y"] = -325,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 375,
                                }, -- [6]
                                {
                                    ["y"] = -176,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 244,
                                }, -- [7]
                                {
                                    ["y"] = -183,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 175,
                                }, -- [8]
                                {
                                    ["y"] = -207,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 110,
                                }, -- [9]
                                {
                                    ["y"] = -184,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 100,
                                }, -- [10]
                                {
                                    ["y"] = -220,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 345,
                                }, -- [11]
                                {
                                    ["y"] = -352,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 475,
                                }, -- [12]
                                {
                                    ["y"] = -202,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 307,
                                }, -- [13]
                                {
                                    ["y"] = -236,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 240,
                                }, -- [14]
                                {
                                    ["y"] = -262,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 462,
                                }, -- [15]
                                {
                                    ["y"] = -209,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 442,
                                }, -- [16]
                                {
                                    ["y"] = -425,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 447,
                                }, -- [17]
                                {
                                    ["y"] = -303,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 415,
                                }, -- [18]
                                {
                                    ["y"] = -326,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 412,
                                }, -- [19]
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
                                        ["caption"] = BabbleBoss["Al'ar"],
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
                    ["name"] = BabbleBoss["Void Reaver"],
                    ["ratext"] = L["ra Void"], --lines seperated by \n
                    ["tactictext"] = L["tactic Void"],
                    ["trash"] = L["trash Void"], --optional
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_voidreaver",
                            ["btnId"] = 26,
                            ["buttons"] = {
                                {
                                    ["y"] = -261,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 229,
                                }, -- [1]
                                {
                                    ["y"] = -181,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 249,
                                }, -- [2]
                                {
                                    ["y"] = -181,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 238,
                                }, -- [3]
                                {
                                    ["y"] = -282,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 271,
                                }, -- [4]
                                {
                                    ["y"] = -285,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 244,
                                }, -- [5]
                                {
                                    ["y"] = -291,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 273,
                                }, -- [6]
                                {
                                    ["y"] = -300,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 271,
                                }, -- [7]
                                {
                                    ["y"] = -280,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 208,
                                }, -- [8]
                                {
                                    ["y"] = -305,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 219,
                                }, -- [9]
                                {
                                    ["y"] = -199,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 308,
                                }, -- [10]
                                {
                                    ["y"] = -208,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 320,
                                }, -- [11]
                                {
                                    ["y"] = -323,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 382,
                                }, -- [12]
                                {
                                    ["y"] = -248,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 368,
                                }, -- [13]
                                {
                                    ["y"] = -261,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 371,
                                }, -- [14]
                                {
                                    ["y"] = -337,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 379,
                                }, -- [15]
                                {
                                    ["y"] = -389,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 340,
                                }, -- [16]
                                {
                                    ["y"] = -397,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 332,
                                }, -- [17]
                                {
                                    ["y"] = -428,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 261,
                                }, -- [18]
                                {
                                    ["y"] = -425,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 247,
                                }, -- [19]
                                {
                                    ["y"] = -332,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 113,
                                }, -- [20]
                                {
                                    ["y"] = -414,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 171,
                                }, -- [21]
                                {
                                    ["y"] = -403,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 153,
                                }, -- [22]
                                {
                                    ["y"] = -347,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 117,
                                }, -- [23]
                                {
                                    ["y"] = -223,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 152,
                                }, -- [24]
                                {
                                    ["y"] = -232,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 138,
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
                                        ["caption"] = BabbleBoss["Void Reaver"],
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
                    ["name"] = BabbleBoss["High Astromancer Solarian"],
                    ["ratext"] = L["ra Solarian"], --lines seperated by \n
                    ["tactictext"] = L["tactic Solarian"],
                    ["trash"] = L["trash Solarian"], --optional
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_solarian",
                            ["btnId"] = 6,
                            ["buttons"] = {
                                {
                                    ["y"] = -366,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 261,
                                }, -- [1]
                                {
                                    ["y"] = -341,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 279,
                                }, -- [2]
                                {
                                    ["y"] = -337,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 262,
                                }, -- [3]
                                {
                                    ["y"] = -353,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 228,
                                }, -- [4]
                                {
                                    ["y"] = -351,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 248,
                                }, -- [5]
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
                                        ["caption"] = BabbleBoss["High Astromancer Solarian"],
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
                    ["name"] = BabbleBoss["Kael'thas Sunstrider"],
                    ["ratext"] = L["ra Kael"], --lines seperated by \n
                    ["tactictext"] = L["tactic Kael"],
                    ["trash"] = L["trash Kael"], --optional
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_kael1",
                            ["btnId"] = 15,
                            ["buttons"] = {
                                {
                                        ["y"] = -335,
                                        ["type"] = "f",
                                        ["caption"] = " ",
                                        ["x"] = 85,
                                    }, -- [1]
                                    {
                                        ["y"] = -307,
                                        ["type"] = "h",
                                        ["caption"] = " ",
                                        ["x"] = 93,
                                    }, -- [2]
                                    {
                                        ["y"] = -232,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 236,
                                    }, -- [3]
                                    {
                                        ["y"] = -275,
                                        ["type"] = "x",
                                        ["caption"] = " ",
                                        ["x"] = 500,
                                    }, -- [4]
                                    {
                                        ["y"] = -498,
                                        ["type"] = "y",
                                        ["caption"] = " ",
                                        ["x"] = 261,
                                    }, -- [5]
                                    {
                                        ["y"] = -193,
                                        ["type"] = "z",
                                        ["caption"] = " ",
                                        ["x"] = 192,
                                    }, -- [6]
                                    {
                                        ["y"] = -266,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 230,
                                    }, -- [7]
                                    {
                                        ["y"] = -308,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 229,
                                    }, -- [8]
                                    {
                                        ["y"] = -317,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 275,
                                    }, -- [9]
                                    {
                                        ["y"] = -284,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 283,
                                    }, -- [10]
                                    {
                                        ["y"] = -251,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 291
                                    }, -- [11]
                                    {
                                        ["y"] = -224,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 271,
                                    }, -- [12]
                                    {
                                        ["y"] = -336,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 250,
                                    }, -- [13]
                                    {
                                        ["y"] = -317,
                                        ["type"] = "b",
                                        ["caption"] = " ",
                                        ["x"] = 44,
                                    }, -- [14]
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
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["Lord Sanguinar"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [5] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Thaladred the Darkener"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "y",
                                        ["caption"] = BabbleBoss["Grand Astromancer Capernian"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [7] = {
                                        ["type"] = "z",
                                        ["caption"] = BabbleBoss["Master Engineer Telonicus"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_kael2",
                            ["btnId"] = 9,
                            ["buttons"] = {
                                {
                                    ["y"] = -243,
                                    ["type"] = "n",
                                    ["caption"] = BabbleBoss["Cosmic Infuser"],
                                    ["x"] = 182,
                                }, -- [1]
                                {
                                    ["y"] = -205,
                                    ["type"] = "f",
                                    ["caption"] = BabbleBoss["Staff of Disintegration"],
                                    ["x"] = 165,
                                }, -- [2]
                                {
                                    ["y"] = -262,
                                    ["type"] = "h",
                                    ["caption"] = BabbleBoss["Warp Slicer"],
                                    ["x"] = 221,
                                }, -- [3]
                                {
                                    ["y"] = -269,
                                    ["type"] = "t",
                                    ["caption"] = BabbleBoss["Devastation"],
                                    ["x"] = 260,
                                }, -- [4]
                                {
                                    ["y"] = -210,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 257,
                                }, -- [5]
                                {
                                    ["y"] = -262,
                                    ["type"] = "x",
                                    ["caption"] = BabbleBoss["Phaseshift Bulwark"],
                                    ["x"] = 304,
                                }, -- [6]
                                {
                                    ["y"] = -241,
                                    ["type"] = "y",
                                    ["caption"] = BabbleBoss["Infinity Blades"],
                                    ["x"] = 337,
                                }, -- [7]
                                {
                                    ["y"] = -211,
                                    ["type"] = "z",
                                    ["caption"] = BabbleBoss["Netherstrand Longbow"],
                                    ["x"] = 349,
                                }, -- [8]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 217,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 2"],
                                },
                            },

                        },
                        [3] = {
                            ["source"] = "Interface\\Addons\\BT_Eye\\Img\\map_tk_kael2",
                            ["btnId"] = 20,
                            ["buttons"] = {
                                {
                                    ["y"] = -199,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 240,
                                }, -- [1]
                                {
                                    ["y"] = -329,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 178,
                                }, -- [2]
                                {
                                    ["y"] = -291,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 141,
                                }, -- [3]
                                {
                                    ["y"] = -240,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 255,
                                }, -- [4]
                                {
                                    ["y"] = -215,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 257,
                                }, -- [5]
                                {
                                    ["y"] = -465,
                                    ["type"] = "t",
                                    ["caption"] = L["phoenix tank"],
                                    ["x"] = 89,
                                }, -- [6]
                                {
                                    ["y"] = -476,
                                    ["type"] = "t",
                                    ["caption"] = L["phoenix tank"],
                                    ["x"] = 445,
                                }, -- [7]
                                {
                                    ["y"] = -196,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 264,
                                }, -- [8]
                                {
                                    ["y"] = -212,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 283,
                                }, -- [9]
                                {
                                    ["y"] = -214,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 233,
                                }, -- [10]
                                {
                                    ["y"] = -305,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 365,
                                }, -- [11]
                                {
                                    ["y"] = -181,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 360,
                                }, -- [12]
                                {
                                    ["y"] = -171,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 154,
                                }, -- [13]
                                {
                                    ["y"] = -348,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 258,
                                }, -- [14]
                                {
                                    ["y"] = -262,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 393,
                                }, -- [15]
                                {
                                    ["y"] = -252,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 127,
                                }, -- [16]
                                {
                                    ["y"] = -337,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 333,
                                }, -- [17]
                                {
                                    ["y"] = -214,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 388,
                                }, -- [18]
                                {
                                    ["y"] = -210,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 125,
                                }, -- [19]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase 4 & 5"],
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
                                        ["caption"] = BabbleBoss["Kael'thas Sunstrider"],
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

function BT_Eye:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_EyeDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_Eye:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_Eye:CheckUpdate()

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

function BT_Eye:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_Eye:OnEnable()
    -- Called when the addon is enabled
end

function BT_Eye:OnDisable()
    -- Called when the addon is disabled
end