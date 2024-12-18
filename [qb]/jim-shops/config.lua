-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	System = {
		Debug = false, -- Enable to add debug boxes and message.
		img = "ox_inventory/web/images/", -- Set this to your inventory

		--- FRAMEWORK OPTIONS ---
		Inv = "ox", 		-- Supports "qb"	(qb-inventory) -- leave as "qb" for ps-inventory
							-- "ox"				(ox_inventory)

		Menu = "ox",        -- Supports "qb"    (qb-menu)
							-- "ox"             (ox_lib)
							-- "gta"            (warmenu)

		Notify = "qb",     -- Supports "qb"    (qb-core)
							-- "ox"             (ox_lib)
							-- "gta"            (gta native)

		Callback = "ox",    -- Supports "qb"    (qb-core)
							-- "ox"             (ox_ib)

		Target = "ox",      -- Supports "qb"    (qb-target)
							-- "ox"             (ox_target)

		MenuExport = "qb-menu", -- If using "qb", what is your menu called, usually "qb-menu", "qbx-menu", "jixel-menu" etc
	},


	Overrides = {
		Peds = true, -- Set to true if you want Shops to have Peds
		Limit = false, -- Enable this to add Stash features, This adds limits to items and gets refilled at each restart

		ApGov = false, -- Add support for AP-Goverment Tax

		MaxSlots = 41, -- Set this to your player inventory slot count, this is default "41"
		BlackMarket = false, -- enable to add blackmarket locations (defined at the bottom of this file)
		Measurement = "kg", -- Custom Weight measurement
		Gabz247 = false,  -- Enable if using gabz 247 stores
		GabzAmmu = false, -- Enable if using gabz Ammunation stores
		VendOverride = false, -- Enable this if you want all the vending machines to use this script
		RandomAmount = true, -- Sets wether a stash should have a "random" amount of stock or full.
	},
}