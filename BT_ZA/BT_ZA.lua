---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_test = LibStub("AceAddon-3.0"):NewAddon("BT_ZA","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_ZA")
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Zul'Aman"], --instance name
		["version"] = 1, --change this to a higher number for updates
		["initial"] = true, --never change this flag!
		["id"] = "BT_ZA", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"],
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode10"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Nalorakk"],
                    ["ratext"] = L["raNalorakk"], --lines seperated by \n
                    ["tactictext"] = L["tacticNalorakk"],
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_nalorakk",
                            ["btnId"] = 12, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                                [1] = {
                                    ["y"] = -260,
                                    ["x"] = 100,
                                    ["type"] = "f", --type see tutorial which types are correct
                                    ["caption"] = " ", --just localize everything :), --optional
                                },
                                [2] = {
                                    ["y"] = -401,
                                    ["x"] = 149,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                },
                                [3] = {
                                    ["y"] = -330,
                                    ["x"] = 108,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                },
                                [4] = {
                                    ["y"] = -249,
                                    ["x"] = 262,
                                    ["type"] = "t",
                                    ["caption"] = "T2",
                                },
                                [5] = {
                                    ["y"] = -249,
                                    ["x"] = 242,
                                    ["type"] = "t",
                                    ["caption"] = "T1",
                                },
                                [6] = {
                                    ["y"] = -311,
                                    ["x"] = 393,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                },
                                [7] = {
                                    ["x"] = 383,
                                    ["y"] = -243,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                },
                                [8] = {
                                    ["y"] = -418,
                                    ["x"] = 262,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                },
                                [9] = {
                                    ["y"] = -298,
                                    ["x"] = 253,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                },
                                [10] = {
                                    ["y"] = -392,
                                    ["x"] = 370,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                },
                                [11] = {
                                    ["y"] = -271,
                                    ["x"] = 253,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Nalorakk"],
                                },
                            },
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Nalorakk"],
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
                    ["name"] = BabbleBoss["Akil'zon"],
                    ["tactictext"] =  L["tacticAkil'zon"],
                    ["ratext"] = L["raAkil'zon"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_akilzon",
                            ["btnId"] = 11,
                            ["buttons"] = {
                                [1] = {
                                    ["y"] = -252,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 230,
                                },
                                [2] = {
                                    ["y"] = -411,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 209,
                                },
                                [3] = {
                                    ["y"] = -398,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 381,
                                },
                                [4] = {
                                    ["y"] = -303,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 250,
                                },
                                [5] = {
                                    ["y"] = -251,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 275,
                                },
                                [6] = {
                                    ["y"] = -323,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 92,
                                },
                                [7] = {
                                    ["y"] = -212,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 141,
                                },
                                [8] = {
                                    ["y"] = -198,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 347,
                                },
                                [9] = {
                                    ["y"] = -295,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 408,
                                },
                                [10] = {
                                    ["y"] = -177,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 241,
                                },
                                [11] = {
                                    ["y"] = -270,
                                    ["x"] = 252,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Akil'zon"],
                                },
                            },
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Akil'zon"],
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
                    ["name"] = BabbleBoss["Jan'alai"],
                    ["tactictext"] =  L["tacticJan'alai"],
                    ["ratext"] = L["raJan'alai"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_janalai",
                            ["btnId"] = 11,
                            ["buttons"] = {
                                [1] = {
                                    ["y"] = -311,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 272,
                                },
                                [2] = {
                                    ["y"] = -378,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 317,
                                },
                                [3] = {
                                    ["y"] = -378,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 258,
                                },
                                [4] = {
                                    ["y"] = -257,
                                    ["type"] = "t",
                                    ["caption"] = "T1",
                                    ["x"] = 261,
                                },
                                [5] = {
                                    ["y"] = -345,
                                    ["type"] = "t",
                                    ["caption"] = "T2",
                                    ["x"] = 191,
                                },
                                [6] = {
                                    ["y"] = -255,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 202,
                                },
                                [7] = {
                                    ["y"] = -308,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 238,
                                },
                                [8] = {
                                    ["y"] = -381,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 211,
                                },
                                [9] = {
                                    ["y"] = -262,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 328,
                                },
                                [10] = {
                                    ["y"] = -329,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 320,
                                },
                                [11] = {
                                    ["y"] = -285,
                                    ["x"] = 260,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Jan'alai"],
                                },
                            },
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Jan'alai"],
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
                    ["name"] = BabbleBoss["Halazzi"],
                    ["tactictext"] =  L["tacticHalazzi"],
                    ["ratext"] = L["raHalazzi"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_halazzi",
                            ["btnId"] = 11,
                            ["buttons"] = {
                                {
                                    ["y"] = -232,
                                    ["type"] = "t",
                                    ["caption"] = "T1",
                                    ["x"] = 91,
                                }, -- [1]
                                {
                                    ["y"] = -370,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 154,
                                }, -- [2]
                                {
                                    ["y"] = -317,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 220,
                                }, -- [3]
                                {
                                    ["y"] = -199,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 48,
                                }, -- [4]
                                {
                                    ["y"] = -232,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 20,
                                }, -- [5]
                                {
                                    ["y"] = -228,
                                    ["type"] = "t",
                                    ["caption"] = "T2",
                                    ["x"] = 94,
                                }, -- [6]
                                {
                                    ["y"] = -255,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 231,
                                }, -- [7]
                                {
                                    ["y"] = -206,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 215,
                                }, -- [8]
                                {
                                    ["y"] = -183,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 162,
                                }, -- [9]
                                {
                                    ["y"] = -412,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 50,
                                }, -- [10]
                                {
                                    ["y"] = -225,
                                    ["x"] = 62,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Halazzi"],
                                },-- [11]
                            },
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Halazzi"],
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
                    ["name"] = BabbleBoss["Hex Lord Malacrass"],
                    ["tactictext"] =  L["tacticMalacrass"],
                    ["ratext"] = L["raMalacrass"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_malacrass",
                            ["btnId"] = 1,
                            ["buttons"] = {
                                {
                                    ["y"] = -357,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 227,
                                }, -- [1]
                                {
                                    ["y"] = -259,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 161,
                                }, -- [2]
                                {
                                    ["y"] = -415,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 251,
                                }, -- [3]
                                {
                                    ["y"] = -382,
                                    ["type"] = "b",
                                    ["caption"] = BabbleBoss["Hex Lord Malacrass"],
                                    ["x"] = 253,
                                }, -- [4]
                                {
                                    ["y"] = -414,
                                    ["type"] = "x",
                                    ["caption"] = L["Add1"],
                                    ["x"] = 443,
                                }, -- [5]
                                {
                                    ["y"] = -408,
                                    ["type"] = "y",
                                    ["caption"] = L["Add3"],
                                    ["x"] = 70,
                                }, -- [6]
                                {
                                    ["y"] = -414,
                                    ["type"] = "z",
                                    ["caption"] = L["Add2"],
                                    ["x"] = 358,
                                }, -- [7]
                                {
                                    ["y"] = -272,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 390,
                                }, -- [8]
                                {
                                    ["y"] = -227,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 312,
                                }, -- [9]
                                {
                                    ["y"] = -224,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 216,
                                }, -- [10]
                                {
                                    ["y"] = -301,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 192,
                                }, -- [11]
                                {
                                    ["y"] = -356,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 274,
                                }, -- [12]
                                {
                                    ["y"] = -313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 338,
                                }, -- [13]
                                {
                                    ["y"] = -296,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 110,
                                }, -- [14]
                                {
                                    ["y"] = -227,
                                    ["type"] = "z",
                                    ["caption"] = L["Add4"],
                                    ["x"] = 185,
                                }, -- [15]
                            },
                            ["legend"] = { --optional
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
                                        ["type"] = "x",
                                        ["caption"] = L["Add1"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [6] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Add3"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [7] = {
                                        ["type"] = "z",
                                        ["caption"] = L["Add2"]..", "..L["Add4"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                    [8] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Hex Lord Malacrass"],
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
                    ["name"] = BabbleBoss["Zul'jin"],
                    ["tactictext"] =  L["tacticZul'jin"],
                    ["ratext"] = L["raZul'jin"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_zuljin",
                            ["btnId"] = 1,
                            ["buttons"] = {
                                {
                                    ["y"] = -339,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 205,
                                }, -- [1]
                                {
                                    ["y"] = -450,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 150,
                                }, -- [2]
                                {
                                    ["y"] = -397,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 110,
                                }, -- [3]
                                {
                                    ["y"] = -300,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 251,
                                }, -- [4]
                                {
                                    ["y"] = -338,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 284,
                                }, -- [5]
                                {
                                    ["y"] = -454,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 347,
                                }, -- [6]
                                {
                                    ["y"] = -473,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 246,
                                }, -- [7]
                                {
                                    ["y"] = -395,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 388,
                                }, -- [8]
                                {
                                    ["y"] = -333,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 385,
                                }, -- [9]
                                {
                                    ["y"] = -337,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 115,
                                }, -- [10]
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
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Zul'jin"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_zuljin",
                            ["btnId"] = 7,
                            ["buttons"] = {
                                {
                                    ["y"] = -370,
                                    ["type"] = "n",
                                    ["x"] = 296,
                                    ["caption"] = " ",
                                }, -- [1]
                                {
                                    ["y"] = -250,
                                    ["type"] = "h",
                                    ["x"] = 242,
                                    ["caption"] = " ",
                                }, -- [2]
                                {
                                    ["y"] = -372,
                                    ["type"] = "f",
                                    ["x"] = 105,
                                    ["caption"] = " ",
                                }, -- [3]
                                {
                                    ["y"] = -369,
                                    ["type"] = "t",
                                    ["x"] = 203,
                                    ["caption"] = " ",
                                }, -- [4]
                                {
                                    ["y"] = -484,
                                    ["type"] = "h",
                                    ["x"] = 250,
                                    ["caption"] = " ",
                                }, -- [5]
                                {
                                    ["y"] = -368.2431335449219,
                                    ["type"] = "f",
                                    ["x"] = 409.3243713378906,
                                    ["caption"] = " ",
                                }, -- [6]
                            },
                            ["fontstrings"] = { --optional, put text on your map
                                [1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Phase3"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Zul'jin"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [3] = {
                            ["source"] = "Interface\\Addons\\BT_ZA\\Img\\map_zuljin",
                            ["btnId"] = 1,
                            ["buttons"] = {
                                {
                                    ["y"] = -340,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 249,
                                }, -- [1]
                                {
                                    ["y"] = -284,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 235,
                                }, -- [2]
                                {
                                    ["y"] = -259,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 244,
                                }, -- [3]
                                {
                                    ["y"] = -283,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 268,
                                }, -- [4]
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
                            ["legend"] = { --optional
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
                                        ["caption"] = BabbleBoss["Zul'jin"],
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

function BT_test:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_ZADB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_test:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_test:CheckUpdate()

	--the versions stored by the client musst be one more
	--because otherwise it woudnt been saved in the savedVariables
	if(not self.db.profile.initial)then
		if(defaults.profile.version+1 > self.db.profile.version)then
			--if(defaults.profile.version >= 12)then
			--	BT_main:ShowUpdateInfoFrame()
			--end
		end
	end
	self.db.profile.version = defaults.profile.version+1
	self.db.profile.initial = false
end;


----------------------------------------------------------------
--dont touch this functions!
----------------------------------------------------------------

function BT_test:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_test:OnEnable()
    -- Called when the addon is enabled
end

function BT_test:OnDisable()
    -- Called when the addon is disabled
end