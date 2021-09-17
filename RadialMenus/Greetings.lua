	VoiceCommandsMod.my_items = {
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
			text = "Clear the room",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v18")
		},
		{
			text = "Search the place",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v38")
		},
		{
			text = "We're in",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v03")
		}
	}
	
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Greetings")
