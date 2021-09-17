	VoiceCommandsMod.my_items = {
		{
			text = "Kick Impact + Fall", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_punch_3rd_person_3p"),
		},
		{
			text = "Baton + Swing", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_baton_enter"),
		},
		{
			text = "Jump", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_jump"),
		},
		{
			text = "Kick Impact", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_kick_impact"),
		},
		{
			text = "Punch", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_punch_3p"),
		},
		{
			text = "Kick", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_roundkick"),
		},
		{
			text = "Taunt", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","cloaker_taunt_after_assault"),
		},
		{
			text = "Death", 
			stay_open = false, show_text = true,
            callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","clk_x02a_any_3p"),
		}
	}
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items, "Radial Menu: Cloaker SFX")

		