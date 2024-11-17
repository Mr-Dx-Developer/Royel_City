Config = {}

Config.UseRPName = true 							-- If set to true, it uses either esx-legacy or qb-core built-in function to get players' RP name

Config.LetPlayersChangeVisibilityOfRadioList = true	-- Let players to toggle visibility of the list
Config.RadioListVisibilityCommand = "radiolist" 	-- Only works if Config.LetPlayersChangeVisibilityOfRadioList is set to true

Config.LetPlayersSetTheirOwnNameInRadio = true		-- Let players to customize how their name is displayed on the list
Config.ResetPlayersCustomizedNameOnExit = true		-- Only works if Config.LetPlayersSetTheirOwnNameInRadio is set to true - Removes customized name players set for themselves on their server exit
Config.RadioListChangeNameCommand = "nameinradio" 	-- Only works if Config.LetPlayersSetTheirOwnNameInRadio is set to true

Config.RadioChannelsWithName = {
	["0"] = "Admin",
	["1"] = "Police",
	["2"] = "Police",
	["3"] = "Police",
	["4"] = "Police",
	["5"] = "Ambulance",
	["6"] = "Ambulance",
	["7"] = "Ambulance",
	["8"] = "Ambulance",
	["9"] = "Urban Mechanic",
	["10"] = "Urban Mechanic",
	["11"] = "County Mechanic",
	["12"] = "County Mechanic"
}