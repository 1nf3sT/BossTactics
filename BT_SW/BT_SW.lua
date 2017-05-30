---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_SW = LibStub("AceAddon-3.0"):NewAddon("BT_SW","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_SW")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Sunwell Plateau"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_SW", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"], --a short text you can add to the info frame, optional
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Kalecgos"],
                    ["ratext"] = L["ra Kalecgos"], --lines seperated by \n
                    ["tactictext"] = L["tactic Kalecgos"],
                    ["trash"] = L["trash Kalecgos"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_kalecgos1",
                            ["btnId"] = 31, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                            {
								["y"] = -344.8902587890625,
                                ["type"] = "n",
                                ["caption"] = " ",
                                ["x"] = 43.05619812011719,
                            }, -- [1]
                            {
                                ["y"] = -309.0589904785156,
                                ["type"] = "f",
                                ["caption"] = " ",
                                ["x"] = 21.94383049011231,
                            }, -- [2]
                            {
                                ["y"] = -199.3935546875,
                                ["type"] = "h",
                                ["caption"] = " ",
                                ["x"] = 179.2633056640625,
                            }, -- [3]
                            {
                                ["y"] = -275.399169921875,
                                ["type"] = "t",
                                ["caption"] = " ",
                                ["x"] = 50.5353889465332,
                            }, -- [4]
                            {
                                ["y"] = -341.6329040527344,
                                ["type"] = "b",
                                ["caption"] = " ",
                                ["x"] = 92.27808380126953,
                            }, -- [5]
                            {
                                ["y"] = -336.2041015625,
                                ["type"] = "x",
                                ["caption"] = " ",
                                ["x"] = 218.7131195068359,
                            }, -- [6]
                            {
                                ["y"] = -388.3222961425781,
                                ["type"] = "y",
                                ["caption"] = " ",
                                ["x"] = 278.9142456054688,
                            }, -- [7]
                            {
                                ["y"] = -366.6062622070313,
                                ["type"] = "b",
                                ["caption"] = " ",
                                ["x"] = 122.6804962158203,
                            }, -- [8]
                            {
                                ["y"] = -307.9731750488281,
                                ["type"] = "b",
                                ["caption"] = " ",
                                ["x"] = 59.7040901184082,
                            }, -- [9]
                            {
                                ["y"] = -286.2572021484375,
                                ["type"] = "t",
                                ["caption"] = " ",
                                ["x"] = 459.8817138671875,
                            }, -- [10]
                            {
                                ["y"] = -382.8932800292969,
                                ["type"] = "n",
                                ["caption"] = " ",
                                ["x"] = 74.54438018798828,
                            }, -- [11]
                            {
                                ["y"] = -304.7158203125,
                                ["type"] = "n",
                                ["caption"] = " ",
                                ["x"] = 104.9468231201172,
                            }, -- [12]
                            {
                                ["y"] = -336.2038879394531,
                                ["type"] = "n",
                                ["caption"] = " ",
                                ["x"] = 135.3491668701172,
                            }, -- [13]
                            {
                                ["y"] = -246.0827026367188,
                                ["type"] = "f",
                                ["caption"] = " ",
                                ["x"] = 62.11842346191406,
                            }, -- [14]
                            {
                                ["y"] = -274.3135070800781,
                                ["type"] = "f",
                                ["caption"] = " ",
                                ["x"] = 90.34916687011719,
                            }, -- [15]
                            {
                                ["y"] = -218.937744140625,
                                ["type"] = "f",
                                ["caption"] = " ",
                                ["x"] = 97.94976043701172,
                            }, -- [16]
                            {
                                ["y"] = -240.6536712646484,
                                ["type"] = "f",
                                ["caption"] = " ",
                                ["x"] = 128.3519897460938,
                            }, -- [17]
                            {
                                ["y"] = -250.4258575439453,
                                ["type"] = "h",
                                ["caption"] = " ",
                                ["x"] = 200.9791564941406,
                            }, -- [18]
                            {
                                ["y"] = -193.9644622802734,
                                ["type"] = "h",
                                ["caption"] = " ",
                                ["x"] = 238.9822235107422,
                            }, -- [19]
                            {
                                ["y"] = -247.1683959960938,
                                ["type"] = "h",
                                ["caption"] = " ",
                                ["x"] = 268.2987670898438,
                            }, -- [20]
                            {
                                ["y"] = -209.1655120849609,
                                ["type"] = "h",
                                ["caption"] = " ",
                                ["x"] = 310.6449584960938,
                            }, -- [21]
                            {
                                ["y"] = -279.7422485351563,
                                ["type"] = "x",
                                ["caption"] = " ",
                                ["x"] = 311.0060424804688,
                            }, -- [22]
                            {
                                ["y"] = -293.8577270507813,
                                ["type"] = "x",
                                ["caption"] = " ",
                                ["x"] = 219.7986297607422,
                            }, -- [23]
                            {
                                ["y"] = -327.5176696777344,
                                ["type"] = "x",
                                ["caption"] = " ",
                                ["x"] = 305.5767822265625,
                            }, -- [24]
                            {
                                ["y"] = -249.3399810791016,
                                ["type"] = "x",
                                ["caption"] = " ",
                                ["x"] = 378.3257751464844,
                            }, -- [25]
                            {
                                ["y"] = -344.890380859375,
                                ["type"] = "t",
                                ["caption"] = " ",
                                ["x"] = 455.5385131835938,
                            }, -- [26]
                            {
                                ["y"] = -367.6922607421875,
                                ["type"] = "y",
                                ["caption"] = " ",
                                ["x"] = 361.4350280761719,
                            }, -- [27]
                            {
                                ["y"] = -429.5828857421875,
                                ["type"] = "y",
                                ["caption"] = " ",
                                ["x"] = 194.2218780517578,
                            }, -- [28]
                            {
                                ["y"] = -316.6595458984375,
                                ["type"] = "y",
                                ["caption"] = " ",
                                ["x"] = 390.7515258789063,
                            }, -- [29]
                            {
                                ["y"] = -427.4112854003906,
                                ["type"] = "y",
                                ["caption"] = " ",
                                ["x"] = 340.8048706054688,
                            }, -- [30]
        					},
                            ["fontstrings"] = { --optional, put text on your map
								[1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["More Melees"],
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
                                        ["type"] = "y",
                                        ["caption"] = L["group 2"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [4] = {
                                        ["type"] = "x",
                                        ["caption"] = L["group 3"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },

                                     [5] = {
                                        ["type"] = "f",
                                        ["caption"] = L["group 4"],
                                        ["r"] = 0,
                                        ["g"] = 0,
                                        ["b"] = 1,
                                    },
                                     [6] = {
                                        ["type"] = "h",
                                        ["caption"] = L["group 5"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                     [7] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Kalecgos"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_kalecgos1",
                            ["btnId"] = 30, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
								{
									["y"] = -303.6300354003906,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 19.16865539550781,
                                }, -- [1]
                                {
                                    ["y"] = -260.1979370117188,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 182.6419830322266,
                                }, -- [2]
                                {
                                    ["y"] = -266.7127685546875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 306.3018188476563,
                                }, -- [3]
                                {
                                    ["y"] = -357.9199829101563,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 34.24836730957031,
                                }, -- [4]
                                {
                                    ["y"] = -318.8312377929688,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 41.24555969238281,
                                }, -- [5]
                                {
                                    ["y"] = -415.4674072265625,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 356.6094665527344,
                                }, -- [6]
                                {
                                    ["y"] = -374.2069091796875,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 126.9023895263672,
                                }, -- [7]
                                {
                                    ["y"] = -370.949462890625,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 465.3106994628906,
                                }, -- [8]
                                {
                                    ["y"] = -282.9999389648438,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 46.67460632324219,
                                }, -- [9]
                                {
                                    ["y"] = -250.4259643554688,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 52.10356140136719,
                                }, -- [10]
                                {
                                    ["y"] = -273.2276611328125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 89.74555206298828,
                                }, -- [11]
                                {
                                    ["y"] = -310.144775390625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 85.40238952636719,
                                }, -- [12]
                                {
                                    ["y"] = -338.3755493164063,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 174.677490234375,
                                }, -- [13]
                                {
                                    ["y"] = -363.3491821289063,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 349.0089416503906,
                                }, -- [14]
                                {
                                    ["y"] = -393.7513732910156,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 197.479248046875,
                                }, -- [15]
                                {
                                    ["y"] = -349.2336120605469,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 249.5975189208984,
                                }, -- [16]
                                {
                                    ["y"] = -416.5531311035156,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 270.2278442382813,
                                }, -- [17]
                                {
                                    ["y"] = -314.4881591796875,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 301.233642578125,
                                }, -- [18]
                                {
                                    ["y"] = -312.3164367675781,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 364.2100830078125,
                                }, -- [19]
                                {
                                    ["y"] = -287.3429565429688,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 250.2011260986328,
                                }, -- [20]
                                {
                                    ["y"] = -243.9111328125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 248.8758239746094,
                                }, -- [21]
                                {
                                    ["y"] = -215.6804962158203,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 202.1864471435547,
                                }, -- [22]
                                {
                                    ["y"] = -216.7662506103516,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 146.8106536865234,
                                }, -- [23]
                                {
                                    ["y"] = -199.3933563232422,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 268.4202270507813,
                                }, -- [24]
                                {
                                    ["y"] = -221.1092987060547,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 332.3610229492188,
                                }, -- [25]
                                {
                                    ["y"] = -265.626953125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 362.7634582519531,
                                }, -- [26]
                                {
                                    ["y"] = -226.5382080078125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 396.4231262207031,
                                }, -- [27]
                                {
                                    ["y"] = -287.3429565429688,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 473.9969482421875,
                                }, -- [28]
                                {
                                    ["y"] = -275.3992919921875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 419.2249755859375,
                                }, -- [29]
        					},
                            ["fontstrings"] = { --optional, put text on your map
								[1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Less Melees"],
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
                                        ["type"] = "y",
                                        ["caption"] = L["group 2"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [4] = {
                                        ["type"] = "x",
                                        ["caption"] = L["group 3"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                     [5] = {
                                        ["type"] = "f",
                                        ["caption"] = L["group 4"],
                                        ["r"] = 0,
                                        ["g"] = 0,
                                        ["b"] = 1,
                                    },
                                     [6] = {
                                        ["type"] = "h",
                                        ["caption"] = L["group 5"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                     [7] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Kalecgos"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                         [3] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_kalecgos2",
                            ["btnId"] = 10, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                            	{
									["y"] = -277.57080078125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 297.1332092285156,
                                }, -- [1]
                                {
                                    ["y"] = -276.4850463867188,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 217.3875885009766,
                                }, -- [2]
                                {
                                    ["y"] = -228.7099151611328,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 283.5000610351563,
                                }, -- [3]
                                {
                                    ["y"] = -236.310546875,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 214.4911346435547,
                                }, -- [4]
                                {
                                    ["y"] = -260.1981201171875,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 254.0621337890625,
                                }, -- [5]
                                {
                                    ["y"] = -218.9375762939453,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 257.8017578125,
                                }, -- [6]
                                {
                                    ["y"] = -296.0293579101563,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 242.23974609375,
                                }, -- [7]
                                {
                                    ["y"] = -297.1151123046875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 275.4172668457031,
                                }, -- [8]
                                {
                                    ["y"] = -252.5973510742188,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 295.5651245117188,
                                }, -- [9]
                            },
                            ["fontstrings"] = { --optional, put text on your map
								[1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = L["Spectral Realm"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
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
                                        ["caption"] = BabbleBoss["Kalecgos"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["Sathrovarr the Corruptor"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                },
                            },
                        },
                    },
                },
                --second boss
                [2] = {
                    ["name"] = BabbleBoss["Brutallus"],
                    ["tactictext"] = L["tactic Brutallus"],
                    ["trash"] = L["trash Brutallus"],
                    ["ratext"] = L["ra Brutallus"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_felmyst1",
                            ["btnId"] = 29,
                            ["buttons"] = {
                            	{
                                    ["y"] = -240.6534423828125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 221.1271667480469,
                                }, -- [1]
                                {
                                    ["y"] = -362.26318359375,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 267.3344116210938,
                                }, -- [2]
                                {
                                    ["y"] = -317.745361328125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 76.11241149902344,
                                }, -- [3]
                                {
                                    ["y"] = -236.3106231689453,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 158.0295257568359,
                                }, -- [4]
                                {
                                    ["y"] = -288.4288330078125,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 183.4852142333984,
                                }, -- [5]
                                {
                                    ["y"] = -189.6212768554688,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 258.8875732421875,
                                }, -- [6]
                                {
                                    ["y"] = -323.17431640625,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 128.7129669189453,
                                }, -- [7]
                                {
                                    ["y"] = -431.7542724609375,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 153.5650787353516,
                                }, -- [8]
                                {
                                    ["y"] = -268.8842468261719,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 239.5858612060547,
                                }, -- [9]
                                {
                                    ["y"] = -305.8016052246094,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 235.2425842285156,
                                }, -- [10]
                                {
                                    ["y"] = -339.4612731933594,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 177.6953582763672,
                                }, -- [11]
                                {
                                    ["y"] = -329.6891479492188,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 212.4407653808594,
                                }, -- [12]
                                {
                                    ["y"] = -382.8932800292969,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 307.5089721679688,
                                }, -- [13]
                                {
                                    ["y"] = -336.2041015625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 306.4230651855469,
                                }, -- [14]
                                {
                                    ["y"] = -304.7156982421875,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 314.0238037109375,
                                }, -- [15]
                                {
                                    ["y"] = -291.6861572265625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 349.8551940917969,
                                }, -- [16]
                                {
                                    ["y"] = -273.2275390625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 304.2516479492188,
                                }, -- [17]
                                {
                                    ["y"] = -393.7513122558594,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 26.28709411621094,
                                }, -- [18]
                                {
                                    ["y"] = -359.0057983398438,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 95.65675354003906,
                                }, -- [19]
                                {
                                    ["y"] = -391.5798950195313,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 72.85496520996094,
                                }, -- [20]
                                {
                                    ["y"] = -354.6625061035156,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 48.96739196777344,
                                }, -- [21]
                                {
                                    ["y"] = -188.5354766845703,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 157.5473480224609,
                                }, -- [22]
                                {
                                    ["y"] = -312.3163757324219,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 37.14500045776367,
                                }, -- [23]
                                {
                                    ["y"] = -189.6211547851563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 91.43489074707031,
                                }, -- [24]
                                {
                                    ["y"] = -206.9939575195313,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 123.8876190185547,
                                }, -- [25]
                                {
                                    ["y"] = -248.2541351318359,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 120.6302032470703,
                                }, -- [26]
                                {
                                    ["y"] = -163.5619506835938,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 124.9735260009766,
                                }, -- [27]
                                {
                                    ["y"] = -227.6240997314453,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 79.49119567871094,
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
                                        ["caption"] = BabbleBoss["Brutallus"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Burn Spot"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                },
                            },
                        },
                    },
                },
                [3] = {
                    ["name"] = BabbleBoss["Felmyst"],
                    ["tactictext"] = L["tactic Felmyst"],
                    ["trash"] = L["trash Felmyst"],
                    ["ratext"] = L["ra Felmyst"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_felmyst1",
                            ["btnId"] = 8,
                            ["buttons"] = {
                            	{
									["y"] = -381.8074951171875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 408.9705200195313,
                                }, -- [1]
                                {
                                    ["y"] = -306.887451171875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 443.1125183105469,
                                }, -- [2]
                                {
                                    ["y"] = -449.1272888183594,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 406.6776123046875,
                                }, -- [3]
                                {
                                    ["y"] = -411.1241760253906,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 412.5888061523438,
                                }, -- [4]
                                {
                                    ["y"] = -282.9996948242188,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 401.8522338867188,
                                }, -- [5]
                                {
                                    ["y"] = -366.6063842773438,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 296.5296020507813,
                                }, -- [6]
                                {
                                    ["y"] = -400.26611328125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 323.6746826171875,
                                }, -- [7]
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer & ranged DPS"],
                                        ["r"] = 0,   --not optional
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
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Felmyst"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_felmyst1",
                            ["btnId"] = 27,
                            ["buttons"] = {
                            	{
									["y"] = -302.5441589355469,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 94.69240570068359,
                                }, -- [1]
                                {
                                    ["y"] = -191.7927703857422,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 269.8668518066406,
                                }, -- [2]
                                {
                                    ["y"] = -260.1978759765625,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 262.7485961914063,
                                }, -- [3]
                                {
                                    ["y"] = -275.3992004394531,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 196.1537933349609,
                                }, -- [4]
                                {
                                    ["y"] = -300.3724975585938,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 393.1657409667969,
                                }, -- [5]
                                {
                                    ["y"] = -302.5441589355469,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 213.5267486572266,
                                }, -- [6]
                                {
                                    ["y"] = -324.2601928710938,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 233.0709991455078,
                                }, -- [7]
                                {
                                    ["y"] = -319.9169921875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 276.5029907226563,
                                }, -- [8]
                                {
                                    ["y"] = -300.3726196289063,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 300.3906555175781,
                                }, -- [9]
                                {
                                    ["y"] = -276.4849853515625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 316.677490234375,
                                }, -- [10]
                                {
                                    ["y"] = -332.9464721679688,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 372.53564453125,
                                }, -- [11]
                                {
                                    ["y"] = -334.0323486328125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 407.2811279296875,
                                }, -- [12]
                                {
                                    ["y"] = -393.7513732910156,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 308.4735107421875,
                                }, -- [13]
                                {
                                    ["y"] = -377.46435546875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 336.7042236328125,
                                }, -- [14]
                                {
                                    ["y"] = -411.1241760253906,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 336.7041625976563,
                                }, -- [15]
                                {
                                    ["y"] = -297.1151123046875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 127.1449661254883,
                                }, -- [16]
                                {
                                    ["y"] = -329.689208984375,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 147.7751617431641,
                                }, -- [17]
                                {
                                    ["y"] = -334.0324096679688,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 110.8579864501953,
                                }, -- [18]
                                {
                                    ["y"] = -334.0324096679688,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 77.31963348388672,
                                }, -- [19]
                                {
                                    ["y"] = -268.8841552734375,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 106.6361541748047,
                                }, -- [20]
                                {
                                    ["y"] = -419.8106689453125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 298.8225708007813,
                                }, -- [21]
                                {
                                    ["y"] = -401.3518676757813,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 274.9349670410156,
                                }, -- [22]
                                {
                                    ["y"] = -438.2691650390625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 325.9676818847656,
                                }, -- [23]
                                {
                                    ["y"] = -305.8016052246094,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 432.3759155273438,
                                }, -- [24]
                                {
                                    ["y"] = -276.4850463867188,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 421.5177917480469,
                                }, -- [25]
                                {
                                    ["y"] = -334.0322875976563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 442.1481018066406,
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
                                        ["caption"] = BabbleBoss["Felmyst"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                },
                            },
                        },
                        [3] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_felmyst2",
                            ["btnId"] = 6,
                            ["buttons"] = {
                            	{
									["y"] = -234.1387329101563,
                                    ["type"] = "n",
                                    ["x"] = 339.4794006347656,
                                    ["caption"] = " ",
                                }, -- [1]
                                {
                                    ["y"] = -193.9642944335938,
                                    ["type"] = "h",
                                    ["x"] = 408.3668823242188,
                                    ["caption"] = " ",
                                }, -- [2]
                                {
                                    ["y"] = -277.57080078125,
                                    ["type"] = "h",
                                    ["x"] = 402.9378356933594,
                                    ["caption"] = " ",
                                }, -- [3]
                                {
                                    ["y"] = -238.4820404052734,
                                    ["type"] = "h",
                                    ["x"] = 268.2989196777344,
                                    ["caption"] = " ",
                                }, -- [4]
                                {
                                    ["y"] = -309.0588989257813,
                                    ["type"] = "h",
                                    ["x"] = 275.8994750976563,
                                    ["caption"] = " ",
                                }, -- [5]
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer & ranged DPS"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [2] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 1,
                                        ["g"] = 1,
                                        ["b"] = 1,
                                    },
                                },
                            },
                        },
                    },
                },
                [4] = {
                    ["name"] = BabbleBoss["The Eredar Twins"],
                    ["tactictext"] = L["tactic Twins"],
                    ["trash"] = L["trash Twins"],
                    ["ratext"] = L["ra Twins"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_twins1",
                            ["btnId"] = 10,
                            ["buttons"] = {
                            	{
									["y"] = -305.8014831542969,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 297.1332092285156,
                                }, -- [1]
                                {
                                    ["y"] = -326.4317626953125,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 350.2160034179688,
                                }, -- [2]
                                {
                                    ["y"] = -401.3518676757813,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 239.9467315673828,
                                }, -- [3]
                                {
                                    ["y"] = -323.17431640625,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 314.2633056640625,
                                }, -- [4]
                                {
                                    ["y"] = -351.4051513671875,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 139.9319000244141,
                                }, -- [5]
                                {
                                    ["y"] = -474.1004638671875,
                                    ["type"] = "z",
                                    ["caption"] = " ",
                                    ["x"] = 340.2012023925781,
                                }, -- [6]
                                {
                                    ["y"] = -138.5886840820313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 353.1126708984375,
                                }, -- [7]
                                {
                                    ["y"] = -353.5767211914063,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 331.7572937011719,
                                }, -- [8]
                                {
                                    ["y"] = -135.3311767578125,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 412.4675598144531,
                                }, -- [9]
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
                                        ["type"] = "x",
                                        ["caption"] = BabbleBoss["Lady Sacrolash"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [4] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Conflagration zone"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                    [5] = {
                                        ["type"] = "z",
                                        ["caption"] = L["Warlock tank"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                    [6] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Grand Warlock Alythess"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [7] = {
                                        ["type"] = "h",
                                        ["caption"] = L["healer & ranged DPS"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_twins2",
                            ["btnId"] = 5,
                            ["buttons"] = {
                            	{
                                    ["y"] = -330.7750244140625,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 171.6626586914063,
                                }, -- [1]
                                {
                                    ["y"] = -332.9466552734375,
                                    ["type"] = "z",
                                    ["caption"] = " ",
                                    ["x"] = 341.2870178222656,
                                }, -- [2]
                                {
                                    ["y"] = -331.8607482910156,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 256.2337646484375,
                                }, -- [3]
                                {
                                    ["y"] = -330.7749328613281,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 221.1272277832031,
                                }, -- [4]
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
                                        ["caption"] = L["healer & ranged DPS"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 1,   --not optional
                                        ["b"] = 0,   --not optional
                                    },
                                    [4] = {
                                        ["type"] = "z",
                                        ["caption"] = L["Warlock tank"],
                                        ["r"] = 131/255,
                                        ["g"] = 48/255,
                                        ["b"] = 19/255,
                                    },
                                    [5] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["Grand Warlock Alythess"],
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
                    ["name"] = BabbleBoss["M'uru"],
                    ["tactictext"] = L["tactic M'uru"],
                    ["trash"] = L["trash M'uru"],
                    ["ratext"] = L["ra M'uru"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_muru",
                            ["btnId"] = 15,
                            ["buttons"] = {
                            	{
									["y"] = -281.9140014648438,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 411.1420593261719,
                                }, -- [1]
                                {
                                    ["y"] = -313.4021606445313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 139.2102508544922,
                                }, -- [2]
                                {
                                    ["y"] = -305.8016967773438,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 256.2337646484375,
                                }, -- [3]
                                {
                                    ["y"] = -225.4522705078125,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 244.7721862792969,
                                }, -- [4]
                                {
                                    ["y"] = -178.76318359375,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 246.3402099609375,
                                }, -- [5]
                                {
                                    ["y"] = -334.0324096679688,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 69.11534118652344,
                                }, -- [6]
                                {
                                    ["y"] = -285.1714477539063,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 372.6570129394531,
                                }, -- [7]
                                {
                                    ["y"] = -248.2543792724609,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 301.2338256835938,
                                }, -- [8]
                                {
                                    ["y"] = -291.6862487792969,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 329.4646606445313,
                                }, -- [9]
                                {
                                    ["y"] = -348.1478881835938,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 313.1775817871094,
                                }, -- [10]
                                {
                                    ["y"] = -375.2928161621094,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 265.40234375,
                                }, -- [11]
                                {
                                    ["y"] = -361.1773986816406,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 212.1981811523438,
                                }, -- [12]
                                {
                                    ["y"] = -315.5737915039063,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 188.3106842041016,
                                }, -- [13]
                                {
                                    ["y"] = -265.627197265625,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 196.9970245361328,
                                }, -- [14]
                            },
                             ["fontstrings"] = { --optional, put text on your map
								[1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = BabbleBoss["M'uru"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
                                },
                            },
                            ["legend"] = { --optional, puts buttons to the legend
                                ["entries"] = {
                                    [1] = {
                                        ["type"] = "n",
                                        ["caption"] = L_main["melee"],
                                        ["r"] = 235/255,
                                        ["g"] = 228/255,
                                        ["b"] = 45/255,
                                    },
                                    [2] = {
                                        ["type"] = "b",
                                        ["caption"] = BabbleBoss["M'uru"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [3] = {
                                        ["type"] = "f",
                                        ["caption"] = L["healer & ranged DPS"],
                                        ["r"] = 0,   --not optional
                                        ["g"] = 0,   --not optional
                                        ["b"] = 1,   --not optional
                                    },
                                    [4] = {
                                        ["type"] = "x",
                                        ["caption"] = L["Dark Fiends"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [5] = {
                                        ["type"] = "y",
                                        ["caption"] = L["Paladin"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                },
                            },
                        },
                        [2] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_muru",
                            ["btnId"] = 23,
                            ["buttons"] = {
                            	{
									["y"] = -413.2957458496094,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 129.3165893554688,
                                }, -- [1]
                                {
                                    ["y"] = -303.6300354003906,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 258.4053955078125,
                                }, -- [2]
                                {
                                    ["y"] = -301.4584350585938,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 229.6923980712891,
                                }, -- [3]
                                {
                                    ["y"] = -322.0886535644531,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 150.0680084228516,
                                }, -- [4]
                                {
                                    ["y"] = -269.97021484375,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 277.5888061523438,
                                }, -- [5]
                                {
                                    ["y"] = -279.742431640625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 291.7041625976563,
                                }, -- [6]
                                {
                                    ["y"] = -299.2867431640625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 301.4763793945313,
                                }, -- [7]
                                {
                                    ["y"] = -316.6595458984375,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 291.7042846679688,
                                }, -- [8]
                                {
                                    ["y"] = -159.2188720703125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 190.1212463378906,
                                }, -- [9]
                                {
                                    ["y"] = -200.47900390625,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 389.9083862304688,
                                }, -- [10]
                                {
                                    ["y"] = -397.0087585449219,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 395.3373718261719,
                                }, -- [11]
                                {
                                    ["y"] = -482.7869567871094,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 231.3816223144531,
                                }, -- [12]
                                {
                                    ["y"] = -237.3963470458984,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 98.91409301757813,
                                }, -- [13]
                                {
                                    ["y"] = -298.2009887695313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 369.3995056152344,
                                }, -- [14]
                                {
                                    ["y"] = -413.2957763671875,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 298.8224487304688,
                                }, -- [15]
                                {
                                    ["y"] = -150.5323486328125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 310.7664489746094,
                                }, -- [16]
                                {
                                    ["y"] = -332.946533203125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 69.71894073486328,
                                }, -- [17]
                                {
                                    ["y"] = -483.8728942871094,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 344.4262084960938,
                                }, -- [18]
                                {
                                    ["y"] = -483.8727416992188,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 142.4675903320313,
                                }, -- [19]
                                {
                                    ["y"] = -173.334228515625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 128.3521881103516,
                                }, -- [20]
                                {
                                    ["y"] = -264.541259765625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 448.6629028320313,
                                }, -- [21]
                                {
                                    ["y"] = -113.6151809692383,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 251.0473480224609,
                                }, -- [22]
                            },
                             ["fontstrings"] = { --optional, put text on your map
								[1] = {
                                    ["x"] = 207,
                                    ["y"] = -22,
                                    ["text"] = BabbleBoss["Entropius"],
                                    ["r"] = 1,
                                    ["g"] = 1,
                                    ["b"] = 1,
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
                                        ["caption"] = BabbleBoss["Entropius"],
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
                    ["name"] = BabbleBoss["Kil'jaeden"],
                    ["tactictext"] = L["tactic Kil'jaeden"],
                    ["ratext"] = L["ra Kil'jaeden"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_SW\\Img\\map_sw_kiljaeden",
                            ["btnId"] = 25,
                            ["buttons"] = {
                            	{
									["y"] = -260.1980590820313,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 287.3610229492188,
                                }, -- [1]
                                {
                                    ["y"] = -455.6419067382813,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 300.994140625,
                                }, -- [2]
                                {
                                    ["y"] = -411.1240844726563,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 248.7544708251953,
                                }, -- [3]
                                {
                                    ["y"] = -309.0589904785156,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 272.5206909179688,
                                }, -- [4]
                                {
                                    ["y"] = -279.742431640625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 324.2783508300781,
                                }, -- [5]
                                {
                                    ["y"] = -326.4318542480469,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 326.4497985839844,
                                }, -- [6]
                                {
                                    ["y"] = -363.348876953125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 283.017822265625,
                                }, -- [7]
                                {
                                    ["y"] = -309.0589904785156,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 217.8696899414063,
                                }, -- [8]
                                {
                                    ["y"] = -343.8045654296875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 226.5562896728516,
                                }, -- [9]
                                {
                                    ["y"] = -417.6388549804688,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 282.414306640625,
                                }, -- [10]
                                {
                                    ["y"] = -404.6092529296875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 324.7602844238281,
                                }, -- [11]
                                {
                                    ["y"] = -380.7218322753906,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 359.5058288574219,
                                }, -- [12]
                                {
                                    ["y"] = -341.633056640625,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 376.878662109375,
                                }, -- [13]
                                {
                                    ["y"] = -306.8873901367188,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 386.6510314941406,
                                }, -- [14]
                                {
                                    ["y"] = -484.9585266113281,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 272.763427734375,
                                }, -- [15]
                                {
                                    ["y"] = -437.1833801269531,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 354.1983337402344,
                                }, -- [16]
                                {
                                    ["y"] = -473.0148620605469,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 380.2575988769531,
                                }, -- [17]
                                {
                                    ["y"] = -389.4081726074219,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 399.8018798828125,
                                }, -- [18]
                                {
                                    ["y"] = -415.4672241210938,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 438.8905029296875,
                                }, -- [19]
                                {
                                    ["y"] = -337.2897644042969,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 428.0325317382813,
                                }, -- [20]
                                {
                                    ["y"] = -323.17431640625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 466.0354919433594,
                                }, -- [21]
                                {
                                    ["y"] = -375.2926330566406,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 460.6067199707031,
                                }, -- [22]
                                {
                                    ["y"] = -448.0412902832031,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 409.573974609375,
                                }, -- [23]
                                {
                                    ["y"] = -500.1597290039063,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 330.3105773925781,
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
                                        ["caption"] = BabbleBoss["Kil'jaeden"],
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

function BT_SW:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_SWDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_SW:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_SW:CheckUpdate()

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

function BT_SW:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_SW:OnEnable()
    -- Called when the addon is enabled
end

function BT_SW:OnDisable()
    -- Called when the addon is disabled
end