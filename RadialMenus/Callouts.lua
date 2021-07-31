	my_items = {
		{
			text = "Doctor Bag",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g80x_plu")
		},
		{
			text = "Ammo Bag",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g81x_plu")
		},
		{
			text = "Bulldozer!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f30y_any")
		},
		{
			text = "Found Keycard",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v10")
		},
		{
			text = "Found Crowbar",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v57")
		},
		{
			text = "Sniper!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f34y_any")
		},
		{
			text = "Placed First Aid Kit",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s12")
		},
		{
			text = "Turret!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f44x_any")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Callouts")
