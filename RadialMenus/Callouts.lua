	VoiceCommandsMod.my_items = {
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
			text = "Placed Doctor Bag",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s02x_plu")
		},
		{
			text = "Placed Ammo Bag",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s01x_plu")
		},
		{
			text = "Placed First Aid Kit",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s12")
		},
		{
			text = "Placed Body Bag Case",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s13")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Callouts")
