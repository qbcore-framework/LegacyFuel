local Translations = {
    error = {
        ["not_enough_cash"] = "Pas assez d'argent",
        ["not_enough_cash_jerry_can"] = "Pas assez d'argent pour faire le plein du bidon d'essence",
        ["jerry_can_empty"] = "Le bidon d'essence est vide",
    },
    success = {
        ["full_tank"] = "Le réservoir est plein",
        ["jerry_can_full"] = "Le bidon d'essence est plein",
    },
    info = {
        ["exit_vehicle"] = "Sortez du véhicule pour faire le plein",
        ["e_to_refuel"] = "Appuyez sur ~g~E ~w~pour faire le plein du véhicule",
        ["purchase_jerry_can"] = "Appuyez sur ~g~E ~w~pour acheté un bidon d'essence à ~g~%{price}€",
        ["cancel_fueling_pump"] = "Appuyez sur ~g~E ~w~pour arrêter le plein",
        ["cancel_fueling_jerry_can"] = "Appuyez sur ~g~E ~w~pour arrêter le plein du bidon d'essence",
        ["refill_jerry_can"] = "Appuyez sur ~g~E ~w~pour remplir le bidon d'essence",
        ["total_cost"] = "Coût: ${price}€",
		["station_blips"] = "Station essence",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
