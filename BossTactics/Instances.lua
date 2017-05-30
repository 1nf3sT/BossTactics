local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();

-----------------------------------------------------------------------------
-- instance table, if you create a new instance module you must add it here
--usage max 3 levels in the table
--Entry: Instancename,your_module_name, "Submenu"
-----------------------------------------------------------------------------


local L = LibStub("AceLocale-3.0"):GetLocale("BossTactics")

function BossTactics:RegisterInstances()

	self.instanceTable = 
		{
		 ["WoW"] = {},
		 ["BC"] = {
		        [1] = {
                [BabbleZone["Eastern Kingdoms"]] = {
                    [1] = {
                        { BabbleZone["Karazhan"], "BT_Kara", "Submenu" },
                    },
                    [2] = {
                        { BabbleZone["Zul'Aman"], "BT_ZA", "Submenu" },
                    },
                    [3] = {
                        { BabbleZone["Sunwell Plateau"], "BT_SW", "Submenu" },
                    },
                },
            },
            [2] = {
                [BabbleZone["Kalimdor"]] = {
                    [1] = {
                        { BabbleZone["Hyjal Summit"], "BT_MH", "Submenu" },
                    },
                },
            },
            [3] = {
                [BabbleZone["Outland"]] = {
                    [1] = {
                        { BabbleZone["Gruul's Lair"], "BT_Gruul", "Submenu" },
                    },
                    [2] = {
                            { BabbleZone["Magtheridon's Lair"], "BT_Maggi", "Submenu" },
                    },
                    [3] = {
                            { BabbleZone["Serpentshrine Cavern"], "BT_SSC", "Submenu" },
                    },
                    [4] = {
                            { BabbleZone["The Eye"], "BT_Eye", "Submenu" },
                    },
                    [5] = {
                        { BabbleZone["Black Temple"], "BT_BlackTemple", "Submenu" },
                    },
                    [6] = {
                        { L["Outdoor"], "BT_BCout", "Submenu" },
                    },
                },
            },
        },
	}

end