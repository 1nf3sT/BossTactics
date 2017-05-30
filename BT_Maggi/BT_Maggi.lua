---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_Maggi = LibStub("AceAddon-3.0"):NewAddon("BT_Maggi","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_Maggi")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = BabbleZone["Magtheridon's Lair"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_Maggi", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"], --a short text you can add to the info frame, optional
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode25"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Magtheridon"],
                    ["ratext"] = L["ra Maggi"], --lines seperated by \n
                    ["tactictext"] = L["tactic Maggi"],
                    ["trash"] = L["trash Maggi"], --optional
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_Maggi\\Img\\map_magtheridon",
                            ["btnId"] = 3, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
                            	{
									["y"] = -126.6448440551758,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 239.5859069824219,
                                }, -- [1]
                                {
                                    ["y"] = -126.6448440551758,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 139.2100830078125,
                                }, -- [2]
                                {
                                    ["y"] = -237.3963165283203,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 242.2396697998047,
                                }, -- [3]
                                {
                                    ["y"] = -89.72747802734375,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 260.0947265625,
                                }, -- [4]
                                {
                                    ["y"] = -315.5737915039063,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 257.3195190429688,
                                }, -- [5]
                                {
                                    ["y"] = -218.9378204345703,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 60.1863899230957,
                                }, -- [6]
                                {
                                    ["y"] = -314.4879150390625,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 399.4379272460938,
                                }, -- [7]
                                {
                                    ["y"] = -502.3312683105469,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 114.4762649536133,
                                }, -- [8]
                                {
                                    ["y"] = -503.417236328125,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 407.6421203613281,
                                }, -- [9]
                                {
                                    ["y"] = -222.195068359375,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 460.8461303710938,
                                }, -- [10]
                                {
                                    ["y"] = -108.186164855957,
                                    ["type"] = "y",
                                    ["caption"] = " ",
                                    ["x"] = 258.8875732421875,
                                }, -- [11]
                                {
                                    ["y"] = -201.5648040771484,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 77.68046569824219,
                                }, -- [12]
                                {
                                    ["y"] = -481.701171875,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 125.4555816650391,
                                }, -- [13]
                                {
                                    ["y"] = -481.7009887695313,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 407.7633666992188,
                                }, -- [14]
                                {
                                    ["y"] = -239.56787109375,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 449.0236206054688,
                                }, -- [15]
                                {
                                    ["y"] = -127.730598449707,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 272.1597900390625,
                                }, -- [16]
                                {
                                    ["y"] = -241.739501953125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 56.08576965332031,
                                }, -- [17]
                                {
                                    ["y"] = -237.3964691162109,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 272.6419677734375,
                                }, -- [18]
                                {
                                    ["y"] = -299.2866821289063,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 335.6183471679688,
                                }, -- [19]
                                {
                                    ["y"] = -328.6033020019531,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 335.6184387207031,
                                }, -- [20]
                                {
                                    ["y"] = -385.0650634765625,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 275.8994750976563,
                                }, -- [21]
                                {
                                    ["y"] = -386.1507568359375,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 237.8965301513672,
                                }, -- [22]
                                {
                                    ["y"] = -294.9435424804688,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 183.6064453125,
                                }, -- [23]
                                {
                                    ["y"] = -327.5177001953125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 181.4348297119141,
                                }, -- [24]
                                {
                                    ["y"] = -193.9640960693359,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 263.7130126953125,
                                }, -- [25]
                                {
                                    ["y"] = -312.3164367675781,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 131.2455291748047,
                                }, -- [26]
                                {
                                    ["y"] = -444.783935546875,
                                    ["type"] = "x",
                                    ["caption"] = " ",
                                    ["x"] = 253.9407806396484,
                                }, -- [27]
                                {
                                    ["y"] = -141.8458251953125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 105.5503845214844,
                                }, -- [28]
                                {
                                    ["y"] = -173.334228515625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 144.6391143798828,
                                }, -- [29]
                                {
                                    ["y"] = -154.8755645751953,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 172.8699493408203,
                                }, -- [30]
                                {
                                    ["y"] = -155.9614105224609,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 137.0384521484375,
                                }, -- [31]
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
                                        ["caption"] = BabbleBoss["Magtheridon"],
                                        ["r"] = 1,
                                        ["g"] = 0,
                                        ["b"] = 0,
                                    },
                                    [6] = {
                                        ["type"] = "x",
                                        ["caption"] = BabbleClass["Warlock"],
                                        ["r"] = 167/255,
                                        ["g"] = 31/255,
                                        ["b"] = 159/255,
                                    },
                                    [7] = {
                                        ["type"] = "y",
                                        ["caption"] = BabbleBoss["Hellfire Channeler"],
                                        ["r"] = 215/255,
                                        ["g"] = 121/255,
                                        ["b"] = 210/255,
                                    },
                                },
                            },
                        },
                        --second image
                        [2] = {
                            ["source"] =  "Interface\\Addons\\BT_Maggi\\Img\\map_magtheridon",
                            ["btnId"] = 27,
                            ["buttons"] = {
								{
									["y"] = -176.5913238525391,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 263.4734497070313,
                                }, -- [1]
                                {
                                    ["y"] = -87.55609130859375,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 283.4998779296875,
                                }, -- [2]
                                {
                                    ["y"] = -109.2720947265625,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 128.7129974365234,
                                }, -- [3]
                                {
                                    ["y"] = -184.1920928955078,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 181.3134613037109,
                                }, -- [4]
                                {
                                    ["y"] = -216.7659454345703,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 271.0738830566406,
                                }, -- [5]
                                {
                                    ["y"] = -260.1980590820313,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 145.1212005615234,
                                }, -- [6]
                                {
                                    ["y"] = -223.2808837890625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 101.6893539428711,
                                }, -- [7]
                                {
                                    ["y"] = -144.017578125,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 245.0146942138672,
                                }, -- [8]
                                {
                                    ["y"] = -251.51171875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 241.7574920654297,
                                }, -- [9]
                                {
                                    ["y"] = -266.712890625,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 186.3815460205078,
                                }, -- [10]
                                {
                                    ["y"] = -97.3282470703125,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 312.816650390625,
                                }, -- [11]
                                {
                                    ["y"] = -193.964599609375,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 41.36689758300781,
                                }, -- [12]
                                {
                                    ["y"] = -233.0531005859375,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 29.42311096191406,
                                }, -- [13]
                                {
                                    ["y"] = -327.5176696777344,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 114.1153717041016,
                                }, -- [14]
                                {
                                    ["y"] = -348.1477661132813,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 228.1242980957031,
                                }, -- [15]
                                {
                                    ["y"] = -275.3992919921875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 332.3609924316406,
                                }, -- [16]
                                {
                                    ["y"] = -184.1920928955078,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 357.3343811035156,
                                }, -- [17]
                                {
                                    ["y"] = -415.4674072265625,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 103.378791809082,
                                }, -- [18]
                                {
                                    ["y"] = -431.7542724609375,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 197.8432464599609,
                                }, -- [19]
                                {
                                    ["y"] = -413.2957763671875,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 297.7366333007813,
                                }, -- [20]
                                {
                                    ["y"] = -337.2898559570313,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 316.1953430175781,
                                }, -- [21]
                                {
                                    ["y"] = -363.3490295410156,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 405.2308349609375,
                                }, -- [22]
                                {
                                    ["y"] = -272.141845703125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 401.9732971191406,
                                }, -- [23]
                                {
                                    ["y"] = -302.5441589355469,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 476.8937683105469,
                                }, -- [24]
                                {
                                    ["y"] = -200.4792633056641,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 432.3759155273438,
                                }, -- [25]
                                {
                                    ["y"] = -368.7782897949219,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 37.14500045776367,
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
                                        ["caption"] = BabbleBoss["Magtheridon"],
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

function BT_Maggi:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_MaggiDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_Maggi:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_Maggi:CheckUpdate()

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

function BT_Maggi:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_Maggi:OnEnable()
    -- Called when the addon is enabled
end

function BT_Maggi:OnDisable()
    -- Called when the addon is disabled
end