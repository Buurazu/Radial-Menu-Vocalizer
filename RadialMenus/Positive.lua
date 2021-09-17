local is_assault = managers.groupai:state():get_assault_mode()
	VoiceCommandsMod.my_items = {
		{
			text = "Thanks!\n(Revived)",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s05x_sin")
		},
		{
			text = "Fuck yeah!",
			stay_open = false, 	show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v46")
		},
		{
			text = "It's PAYDAY!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","v21")
		},
		{
			text = "Get ready for action!",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_thirdperson","g50")
		},
		{
			text = "Whew, thanks!\n(Bot Late Revive)",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_thirdperson","s05b_sin")
		},
		{
			text = "I'm reviving you",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","s08x_sin")
		},
		{
			text = "Inspire Revive",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","f36x_any")
		},
		{
			text = "You're black and white",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_thirdperson","s09c")
		}
	}
	
if (is_assault) then
	VoiceCommandsMod.my_items[4] = {
			text = "Taunt",
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line_thirdperson","g90")
	}
end
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"Radial Menu: Positive")
