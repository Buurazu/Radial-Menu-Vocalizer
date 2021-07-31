	my_items = {
		{
			text = "Hello",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v56")
		},
		{
			text = "This is a robbery",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v34")
		},
		{
			text = "Where's the manager?",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v33")
		},
		{
			text = "What a stench",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v53")
		},
		{
			text = "This is the place",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","g14")
		},
		{
			text = "Get down!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f02x_plu")
		},
		{
			text = "Let's go!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v17")
		},
		{
			text = "It's PAYDAY!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v21")
		}
	}
	
	MyModGlobal:Refresh(my_items,"Radial Menu: Greetings")
