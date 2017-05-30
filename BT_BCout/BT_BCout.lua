---------------------------------------------------------
--Instance Module Template for BossTactics
--refer www.bosstactics.net for howto create modules!
---------------------------------------------------------

--available buttontypes:
--f: rangedDPS, h: healer, t: tank, n:melee, b,x,y,z: boss
--empty captions are not "" please use " " or you will get exceptions!

--local variable definition dont change!!
local BT_main = LibStub("AceAddon-3.0"):GetAddon( "BossTactics" )

BT_BCout = LibStub("AceAddon-3.0"):NewAddon("BT_BCout","AceConsole-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("BT_BCout")

--feel free to use localisations from the framework
local L_main = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

--db profile defaults add your boss-data here
local defaults = {
    profile = {
        ["instance"] = L["Outdoor"], --instance name
		["version"] = 1, --change this to a higher value for update handling (explained in a tutorial)
		["initial"] = true, --never change this flag!
		["id"] = "BT_BCout", --very important this must be the same name as your module case sensitive!
		["info"] = L["info"], --a short text you can add to the info frame, optional
		["patchlevel"] = "2.4.3",
		["bosses"] = {
			["mode40"] = {
		    -- first boss
                [1] = {
                    ["name"] = BabbleBoss["Doom Lord Kazzak"],
                    ["tactictext"] = L["tactic Kazzak"],
                    ["imgdata"] = {
                        --first image
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BCout\\Img\\map_wb_doomlordkazaak",
                            ["btnId"] = 34, --start id of new buttons set this to the number of buttons on your current image +1
                            ["buttons"] = {
								{
									["y"] = -362.2632141113281,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 210.2691802978516,
                                }, -- [1]
                                {
                                    ["y"] = -432.8402404785156,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 148.9821929931641,
                                }, -- [2]
                                {
                                    ["y"] = -440.4409484863281,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 190.1211853027344,
                                }, -- [3]
                                {
                                    ["y"] = -316.6595458984375,
                                    ["type"] = "t",
                                    ["caption"] = " ",
                                    ["x"] = 251.4082794189453,
                                }, -- [4]
                                {
                                    ["y"] = -359.0057678222656,
                                    ["type"] = "b",
                                    ["caption"] = " ",
                                    ["x"] = 250.8048095703125,
                                }, -- [5]
                                {
                                    ["y"] = -382.8934326171875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 220.0413818359375,
                                }, -- [6]
                                {
                                    ["y"] = -399.1803894042969,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 236.3283843994141,
                                }, -- [7]
                                {
                                    ["y"] = -401.3519897460938,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 261.3018798828125,
                                }, -- [8]
                                {
                                    ["y"] = -389.4082336425781,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 278.6745910644531,
                                }, -- [9]
                                {
                                    ["y"] = -374.2069702148438,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 292.7899780273438,
                                }, -- [10]
                                {
                                    ["y"] = -357.9197998046875,
                                    ["type"] = "n",
                                    ["caption"] = " ",
                                    ["x"] = 298.2190551757813,
                                }, -- [11]
                                {
                                    ["y"] = -444.783935546875,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 218.3520812988281,
                                }, -- [12]
                                {
                                    ["y"] = -448.0413208007813,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 245.4970550537109,
                                }, -- [13]
                                {
                                    ["y"] = -448.0415649414063,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 272.6420288085938,
                                }, -- [14]
                                {
                                    ["y"] = -448.0414123535156,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 303.04443359375,
                                }, -- [15]
                                {
                                    ["y"] = -470.8432312011719,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 244.4113464355469,
                                }, -- [16]
                                {
                                    ["y"] = -470.8432922363281,
                                    ["type"] = "h",
                                    ["caption"] = " ",
                                    ["x"] = 271.5562133789063,
                                }, -- [17]
                                {
                                    ["y"] = -471.9290466308594,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 141.3817291259766,
                                }, -- [18]
                                {
                                    ["y"] = -444.7839050292969,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 117.4942474365234,
                                }, -- [19]
                                {
                                    ["y"] = -417.6390686035156,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 337.9112548828125,
                                }, -- [20]
                                {
                                    ["y"] = -423.0681457519531,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 369.3995056152344,
                                }, -- [21]
                                {
                                    ["y"] = -480.6152954101563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 177.2130279541016,
                                }, -- [22]
                                {
                                    ["y"] = -479.5298156738281,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 215.2160034179688,
                                }, -- [23]
                                {
                                    ["y"] = -480.6156005859375,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 300.994140625,
                                }, -- [24]
                                {
                                    ["y"] = -470.8430786132813,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 337.911376953125,
                                }, -- [25]
                                {
                                    ["y"] = -446.9555053710938,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 353.112548828125,
                                }, -- [26]
                                {
                                    ["y"] = -481.7012329101563,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 105.5503387451172,
                                }, -- [27]
                                {
                                    ["y"] = -508.8460998535156,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 139.2101287841797,
                                }, -- [28]
                                {
                                    ["y"] = -511.0177917480469,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 177.2130279541016,
                                }, -- [29]
                                {
                                    ["y"] = -512.1036376953125,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 214.1301422119141,
                                }, -- [30]
                                {
                                    ["y"] = -507.7603149414063,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 251.0473937988281,
                                }, -- [31]
                                {
                                    ["y"] = -506.6745910644531,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 289.0503540039063,
                                }, -- [32]
                                {
                                    ["y"] = -500.159912109375,
                                    ["type"] = "f",
                                    ["caption"] = " ",
                                    ["x"] = 331.3966979980469,
                                }, -- [33]
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
                                        ["caption"] = BabbleBoss["Doom Lord Kazzak"],
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
                    ["name"] = BabbleBoss["Doomwalker"],
                    ["tactictext"] = L["tactic Doomwalker"],
                    ["imgdata"] = {
                        [1] = {
                            ["source"] = "Interface\\Addons\\BT_BCout\\Img\\map_wb_doomwalker",
                            ["btnId"] = 40,
                            ["buttons"] = {
                            	{
								["y"] = -323.1744079589844,
                                ["x"] = 202.6687164306641,
                                ["caption"] = " ",
                                ["type"] = "n",
                            }, -- [1]
                            {
                                ["y"] = -259.1122741699219,
                                ["x"] = 190.1213226318359,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [2]
                            {
                                ["y"] = -350.3193359375,
                                ["x"] = 219.9199676513672,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [3]
                            {
                                ["y"] = -322.0884399414063,
                                ["x"] = 234.5177764892578,
                                ["caption"] = " ",
                                ["type"] = "b",
                            }, -- [4]
                            {
                                ["y"] = -292.7719116210938,
                                ["x"] = 222.2129669189453,
                                ["caption"] = " ",
                                ["type"] = "n",
                            }, -- [5]
                            {
                                ["y"] = -292.7720031738281,
                                ["x"] = 256.9586181640625,
                                ["caption"] = " ",
                                ["type"] = "n",
                            }, -- [6]
                            {
                                ["y"] = -319.9169921875,
                                ["x"] = 269.9880065917969,
                                ["caption"] = " ",
                                ["type"] = "n",
                            }, -- [7]
                            {
                                ["y"] = -347.0618896484375,
                                ["x"] = 252.4941101074219,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [8]
                            {
                                ["y"] = -428.4971923828125,
                                ["x"] = 238.3786773681641,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [9]
                            {
                                ["y"] = -278.6566162109375,
                                ["x"] = 168.4052581787109,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [10]
                            {
                                ["y"] = -313.4022216796875,
                                ["x"] = 157.5473480224609,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [11]
                            {
                                ["y"] = -352.4910278320313,
                                ["x"] = 169.4910430908203,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [12]
                            {
                                ["y"] = -380.7216796875,
                                ["x"] = 196.6360626220703,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [13]
                            {
                                ["y"] = -386.1507568359375,
                                ["x"] = 242.2396087646484,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [14]
                            {
                                ["y"] = -375.2926025390625,
                                ["x"] = 285.671630859375,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [15]
                            {
                                ["y"] = -342.7186889648438,
                                ["x"] = 305.2159423828125,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [16]
                            {
                                ["y"] = -309.0589599609375,
                                ["x"] = 308.4733276367188,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [17]
                            {
                                ["y"] = -275.3992919921875,
                                ["x"] = 298.7012939453125,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [18]
                            {
                                ["y"] = -254.7689056396484,
                                ["x"] = 276.9852294921875,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [19]
                            {
                                ["y"] = -247.1683959960938,
                                ["x"] = 220.5238342285156,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [20]
                            {
                                ["y"] = -249.3400115966797,
                                ["x"] = 253.0976257324219,
                                ["caption"] = " ",
                                ["type"] = "h",
                            }, -- [21]
                            {
                                ["y"] = -315.5738525390625,
                                ["x"] = 348.0443115234375,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [22]
                            {
                                ["y"] = -313.4022216796875,
                                ["x"] = 124.3698120117188,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [23]
                            {
                                ["y"] = -216.7660522460938,
                                ["x"] = 236.2071380615234,
                                ["caption"] = " ",
                                ["type"] = "t",
                            }, -- [24]
                            {
                                ["y"] = -353.5767211914063,
                                ["x"] = 91.43514251708984,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [25]
                            {
                                ["y"] = -399.1803894042969,
                                ["x"] = 126.1806182861328,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [26]
                            {
                                ["y"] = -437.1834106445313,
                                ["x"] = 172.869873046875,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [27]
                            {
                                ["y"] = -457.8136596679688,
                                ["x"] = 235.8460845947266,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [28]
                            {
                                ["y"] = -442.6122741699219,
                                ["x"] = 305.3372802734375,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [29]
                            {
                                ["y"] = -411.1239929199219,
                                ["x"] = 346.5977783203125,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [30]
                            {
                                ["y"] = -367.6919250488281,
                                ["x"] = 380.2575988769531,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [31]
                            {
                                ["y"] = -314.48779296875,
                                ["x"] = 388.9438781738281,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [32]
                            {
                                ["y"] = -258.026611328125,
                                ["x"] = 368.313720703125,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [33]
                            {
                                ["y"] = -218.9375,
                                ["x"] = 334.6540222167969,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [34]
                            {
                                ["y"] = -187.4493408203125,
                                ["x"] = 282.5354614257813,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [35]
                            {
                                ["y"] = -298.200927734375,
                                ["x"] = 91.43495941162109,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [36]
                            {
                                ["y"] = -255.8545379638672,
                                ["x"] = 118.5800018310547,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [37]
                            {
                                ["y"] = -218.9378204345703,
                                ["x"] = 148.9823150634766,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [38]
                            {
                                ["y"] = -193.96435546875,
                                ["x"] = 196.7574005126953,
                                ["caption"] = " ",
                                ["type"] = "f",
                            }, -- [39]
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
                                        ["caption"] = BabbleBoss["Doomwalker"],
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

function BT_BCout:OnInitialize()
 	--initialize database
    self.db = LibStub("AceDB-3.0"):New("BT_BCoutDB", defaults, "Default") --change the name here
    self:CheckUpdate()

    table.insert(BT_main.modules,self.db.profile)
end;

------------------------------------------------
--this function is needed by the main program! dont touch it!
------------------------------------------------
function BT_BCout:GetDefaults()
	return defaults;
end;

-----------------------------------------------
--handels updates in data
--refer to the tutorial how to get version changes!
-----------------------------------------------

function BT_BCout:CheckUpdate()

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

function BT_BCout:ResetData()
	self.db:ResetDB()
	self.db.profile.version = defaults.profile.version+1
	self:Print(L["Module resetted"])
end;

function BT_BCout:OnEnable()
    -- Called when the addon is enabled
end

function BT_BCout:OnDisable()
    -- Called when the addon is disabled
end