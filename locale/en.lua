local Translations = {
    error = {
		["jerry_can_empty"] = "Jerry can is empty",
		["not_enough_cash"] = "Not enough cash",
		["not_enough_cash_jerry_can"] = "Not enough cash to refill jerry can",
    },
    success = {
		["full_tank"] = "Tank is full",
		["jerry_can_full"] = "Jerry can is full",
    },
    info = {
		["exit_vehicle"] = "Exit the vehicle to refuel",
		["e_to_refuel"] = "Press ~g~E ~w~to refuel vehicle",
		["purchase_jerry_can"] = "Press ~g~E ~w~to purchase a jerry can for ~g~$%{price}",
		["cancel_fueling_pump"] = "Press ~g~E ~w~to cancel the fueling",
		["cancel_fueling_jerry_can"] = "Press ~g~E ~w~to cancel the fueling",
		["refill_jerry_can"] = "Press ~g~E ~w~ to refill the jerry can for ",
		["total_cost"] = "Cost: ~g~%{price}",
		["station_blips"] = "Gas station",
    },
	warning = {},
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
