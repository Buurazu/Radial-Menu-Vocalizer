_G.VoiceCommandsMod = _G.VoiceCommandsMod or {}
VoiceCommandsMod.dialogs = {}
VoiceCommandsMod.menus = {}
VoiceCommandsMod.menus2 = {}

--Get all sound IDs from the dialog list and associate them with their mission
--When the context sensitive menus are complete, we won't need to do this anymore

if (false) then
	Hooks:PostHook(DialogManager, "_load_dialog_data", "RadialMenuVocalizer_load_dialog_data", function(self, name)
		VoiceCommandsMod.dialogs[name] = {}
		local file_name = "gamedata/dialogs/" .. name
		local data = PackageManager:script_data(Idstring("dialog"), file_name:id())
		
		for _, node in ipairs(data) do
			if node._meta == "dialog" then
				if not node.id or not node.sound then
					break
				end
				
				table.insert(VoiceCommandsMod.dialogs[name], node.sound)
			end
		end
		table.sort(VoiceCommandsMod.dialogs[name])
	end)
end


--protip: fold/collapse all on this file
VoiceCommandsMod.menus.blackcat = {
	{
		text = "Find Kang's phone number", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chca_15")
	},
	{
		text = "Vlad, prosthetic hand?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chca_118")
	},
	{
		text = "Good calling card", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chca_89")
	},
	{
		text = "Vlad Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chca_20")
	},
	{
		text = "Bartender Briefing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bar_chca_01")
	},
	{
		text = "Meeting Interrupted", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_chca_meeting_02")
	},
	{
		text = "Kang: Payday Gang!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_xuk_chca_12")
	},
	{
		text = "Yufu: I will drop you", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_chca_02")
	},
}

--protip: fold/collapse all on this file
VoiceCommandsMod.menus.mountainmaster = {
	{
		text = "Yufu: Death", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_pent_death")
	},
	{
		text = "You can't kill me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_pent_armorbreak")
	},
	{
		text = "Burn!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_pent_aoe")
	},
	{
		text = "This is your end!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_pent_combat")
	},
	{
		text = "Oh, treacherous rats!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_yuw_pent_threat_04")
	},
	{
		text = "Locke: A car alarm?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pent_88")
	},
	{
		text = "He has a flamethrower!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pent_67")
	},
	{
		text = "Take him out already!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pent_29")
	},
}


VoiceCommandsMod.menus2.boat = {
	{
		text = "Boat:\nDeath", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a67")
	},
	{
		text = "Under fire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a66")
	},
	{
		text = "Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a10")
	},
	{
		text = "10 more seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a61")
	},
	{
		text = "Hurry up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a08")
	},
	{
		text = "Getting started", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a54")
	},
	{
		text = "I need bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a09")
	},
	{
		text = "Getting dangerous!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_a57")
	}
}
VoiceCommandsMod.menus2.twitch = {
	{
		text = "Twitch:\nDeath", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a67")
	},
	{
		text = "Under fire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a66")
	},
	{
		text = "Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a10")
	},
	{
		text = "10 more seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a61")
	},
	{
		text = "Hurry up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a08")
	},
	{
		text = "Getting started", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a54")
	},
	{
		text = "I need bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a09")
	},
	{
		text = "Getting dangerous!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_a57")
	}
}
VoiceCommandsMod.menus2.bile = {
	{
		text = "Bile:\nDeath", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a64")
	},
	{
		text = "Under fire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a63")
	},
	{
		text = "Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a11")
	},
	{
		text = "10 more seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a59")
	},
	{
		text = "Hurry up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a09")
	},
	{
		text = "Getting started", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a52")
	},
	{
		text = "I need bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a10")
	},
	{
		text = "You got all of them!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a54")
	}
}
VoiceCommandsMod.menus2.ilija = {
	{
		text = "Ilija:\nCount", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_cnt")
	},
	{
		text = "I've got your back", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_pre_02")
	},
	{
		text = "General 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_gen_01")
	},
	{
		text = "General 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_gen_02")
	},
	{
		text = "Few Kills", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_few_01")
	},
	{
		text = "Many Kills", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_mny_01")
	},
	{
		text = "Even More Kills", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_mor_01")
	},
	{
		text = "Reloading", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_snp_rld_01")
	}
}

VoiceCommandsMod.menus.branchbank = {
	{
		text = "Guys the Thermal Drill", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_83")
	},
	{
		text = "Cash time, bag it", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_16")
	},
	{
		text = "Dammit! Gas! Gas!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_37")
	},
	{
		text = "Chopper coming in!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_87")
	},
	{
		text = "Firestarter Briefing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_firestarter_stage3_brief")
	},
	{
		text = "They electrified the vault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs3_02")
	},
	{
		text = "Hector wants this recorded", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs3_04")
	},
	{
		text = "I know it's sad", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs3_05")
	}
}
VoiceCommandsMod.menus.jewelrystore = {
	{
		text = "10 seconds", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_knk_jwl_a_06")
	},
	{
		text = "Find the tiara", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ukranian_stage1_31")
	},
	{
		text = "Metal detector!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ukranian_stage1_43")
	},
	{
		text = "Girl in the window", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ukranian_stage1_40")
	},
	{
		text = "Escape's here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ukranian_stage1_29")
	},
	{
		text = "Bags to the car", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_jwl_09")
	},
	{
		text = "Driver: Hurry up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_ukranian_stage1_04")
	},
	{
		text = "We're leaving", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_ukranian_stage1_06")
	}
}
VoiceCommandsMod.menus.safehouseraid = {
	{
		text = "Here comes wave 10!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_10w")
	},
	{
		text = "Defeated Wave 10", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_10d")
	},
	{
		text = "Here they come", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_gwa")
	},
	{
		text = "I'm disappointed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_fal")
	},
	{
		text = "Gotta keep 10 bags", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_kb10")
	},
	{
		text = "There goes a bag", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_ctb")
	},
	{
		text = "Watch the bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_dfb")
	},
	{
		text = "Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sfr_cps")
	}
}

VoiceCommandsMod.menus.electionday1 = {
	{
		text = "GPS is on! Time to leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_03")
	},
	{
		text = "They've seen you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_04")
	},
	{
		text = "The PC is useful", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_09")
	},
	{
		text = "Keep the power on", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_12")
	},
	{
		text = "End (Stealth)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_end_a")
	},
	{
		text = "End (Loud 1)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_end_b")
	},
	{
		text = "End (Loud 2)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_end_c")
	},
	{
		text = "Let's Change the Change", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed1_99")
	}
}
VoiceCommandsMod.menus.electionday2 = {
	{
		text = "Back to the van!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_16")
	},
	{
		text = "Slip out of there", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_15")
	},
	{
		text = "Look for a crowbar", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_04")
	},
	{
		text = "Cameras down", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_21")
	},
	{
		text = "Loud Ending Brief", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_end_b")
	},
	{
		text = "Just got a message", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_19")
	},
	{
		text = "There's your bonus", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_20")
	},
	{
		text = "Let's Change the Change", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_99")
	}
}
VoiceCommandsMod.menus.electionday3 = {
{
		text = "Haul ass outta there!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_17")
	},
	{
		text = "Time to eject!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_18")
	},
	{
		text = "Russian crap scrambler", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_05")
	},
	{
		text = "Wrong elevator", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_25")
	},
	{
		text = "Empty vault", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_15")
	},
	{
		text = "Full vault", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_16")
	},
	{
		text = "Watch for snipers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_22")
	},
	{
		text = "Let's Change the Change", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed3_99")
	}
}

VoiceCommandsMod.menus.rats1 = {
	{
		text = "Lab Explosion", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_26")
	},
	{
		text = "Need to add ingredient", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_17")
	},
	{
		text = "Get the bags to the van", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_29")
	},
	{
		text = "Muriatic Acid", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_20")
	},
	{
		text = "Caustic Soda", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_22")
	},
	{
		text = "Hydrogen Chloride", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_24")
	},
	{
		text = "Better luck next time", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rt1b_end_01")
	},
	{
		text = "Wait for the pilot", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rt1b_03")
	}
}
VoiceCommandsMod.menus.rats2 = {
	{
		text = "Get to the van", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rats_stage2_06")
	},
	{
		text = "Goddamn backstabbers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rats_stage2_14")
	},
	{
		text = "Gangsters:\nShit! What was the code", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga2_rats_stage2_03")
	},
	{
		text = "Turn around!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga2_rats_stage2_04")
	},
	{
		text = "Unused Gangsters:\nNow! Hit these bastards!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga2_rats_stage2_02")
	},
	{
		text = "Fuck you! The deal's off!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga1_rats_stage2_05")
	},
	{
		text = "Damn! The cops!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga1_rats_stage2_04")
	},
	{
		text = "I'm feeling generous", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ga1_rats_stage2_09")
	},
}
VoiceCommandsMod.menus.rats3 = {
	{
		text = "It's gonna blow!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rt3_17")
	},
	{
		text = "The C4! Defuse it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rt3_14")
	},
	{
		text = "Chopper is here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage3_09")
	},
	{
		text = "Chopper can be damaged", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage3_13")
	},
	{
		text = "Remember, we are after the rat", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage3_02")
	},
	{
		text = "The bus blew up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage3_08")
	},
	{
		text = "Pilot: Taking damage!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_rat_stage3_15")
	},
	{
		text = "I gotta leave!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_rat_stage3_16")
	},
}

VoiceCommandsMod.menus.diamondstore = {
	{
		text = "Bags to the van", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_07")
	},
	{
		text = "Keep 'em coming", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_04")
	},
	{
		text = "End (Stealth)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_end_01")
	},
	{
		text = "End (Loud)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_end_02")
	},
	{
		text = "Break the glass", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_02")
	},
	{
		text = "Van is coming back", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_08")
	},
	{
		text = "That's the alarm", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_05")
	},
	{
		text = "Get into the store", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fj1_01")
	},
}
VoiceCommandsMod.menus.artgallery = {
	{
		text = "Breached the wall!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_16")
	},
	{
		text = "SWATs on the scene", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_15")
	},
	{
		text = "Cameras off", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_14")
	},
	{
		text = "Check the roof", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_08")
	},
	{
		text = "End (All Paintings)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_end_b")
	},
	{
		text = "End", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_end_a")
	},
	{
		text = "Off like a prom dress", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_12")
	},
	{
		text = "We have four", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage1_11")
	}
}
VoiceCommandsMod.menus.carshop = {
	{
		text = "Drive! Go go go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_31")
	},
	{
		text = "Get the car keys!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_19")
	},
	{
		text = "Nearly got it", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_26")
	},
	{
		text = "Now get outta there!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_34")
	},
	{
		text = "Into the hole!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_31")
	},
	{
		text = "Couple Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpl_ch1_02")
	},
	{
		text = "Manager Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_man_ch1_01")
	},
	{
		text = "Receptionist Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rcp_ch1_01")
	}
}
VoiceCommandsMod.menus.gobank = {
	{
		text = "Answer the phone!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_153")
	},
	{
		text = "The Thermal Drill", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_10")
	},
	{
		text = "Vault's opening", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_05")
	},
	{
		text = "Wading through sewers", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_29")
	},
	{
		text = "Pilot died", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_28")
	},
	{
		text = "Another civ on the street", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_69")
	},
	{
		text = "Vault's already open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_113")
	},
	{
		text = "Do what you're told!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cs1_143")
	},
}
VoiceCommandsMod.menus.shadowraidmeltdown = {
	{
		text = "We're done! Now bail!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1b_18")
	},
	{
		text = "Vault's open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1b_11")
	},
	{
		text = "Shadow Raid End (Loud)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1_end_02")
	},
	{
		text = "Plates (Unused)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1_12")
	},
	{
		text = "Jewelry (Unused)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1_10")
	},
	{
		text = "Vlad wants a word", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_01")
	},
	{
		text = "Vlad: The vault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_02")
	},
	{
		text = "Doing okay?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_05")
	},
}
VoiceCommandsMod.menus.alesso = {
	{
		text = "Fannies!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_43")
	},
	{
		text = "Seven bucks back", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_52")
	},
	{
		text = "Time to put on a show", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_27")
	},
	{
		text = "Superbly done", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_54")
	},
	{
		text = "The chopper's waiting!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_49")
	},
	{
		text = "Gensec Advert", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_sys_al1_01")
	},
	{
		text = "Inside Man:\nStep into the closet", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ism_al1_01")
	},
	{
		text = "Miso Prawny!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_al1_42")
	}
}
VoiceCommandsMod.menus.transport = {
	{
		text = "He's here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_15")
	},
	{
		text = "Bulldozer in the truck!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_10")
	},
	{
		text = "Get it to the van!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_05")
	},
	{
		text = "Go go go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_01")
	},
	{
		text = "Get it open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_02")
	},
	{
		text = "I'm sending the van!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_11")
	},
	{
		text = "It's open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_14")
	},
	{
		text = "Defend the drill!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_at1_gen_04")
	}
}
VoiceCommandsMod.menus.trainheist = {
	{
		text = "That's the stuff!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_04")
	},
	{
		text = "Be careful with that!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_14")
	},
	{
		text = "Pilot deploying the lance", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_25")
	},
	{
		text = "They're blasting the doors", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_28")
	},
	{
		text = "Can't get the ammo yet", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_30")
	},
	{
		text = "Eyes open for a keycard", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_18")
	},
	{
		text = "Ending (Stealth)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_end_01")
	},
	{
		text = "Ending (Loud)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_tr1_end_02")
	}
}
VoiceCommandsMod.menus.reservoirdogs1 = {
	{
		text = "Mr. Pink:\nThe fuck took so long?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_04")
	},
	{
		text = "Come and get me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_03")
	},
	{
		text = "This Payday gang", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_08")
	},
	{
		text = "Best of luck to ya", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_09")
	},
	{
		text = "Locke:\nHurry back", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_rvd_13")
	},
	{
		text = "Hang in there", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_rvd_04")
	},
	{
		text = "Mr. Blonde:\nSmall talk", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrb_rvd_05")
	},
	{
		text = "Little squeaky toy", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrb_rvd_03")
	},
}
VoiceCommandsMod.menus.reservoirdogs2 = {
	{
		text = "Mr. Pink:\nFuck goddammit!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_11")
	},
	{
		text = "Ah fuck!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrp_rvd_10")
	},
	{
		text = "Bain:\nWalk in the store", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rvd_03")
	},
	{
		text = "You need to get out", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rvd_51")
	},
	{
		text = "Look at the vault", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rvd_18")
	},
	{
		text = "Ending", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rvd_end")
	},
	{
		text = "Mr. Blonde:\nDon't hit the car", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrb_rvd_15")
	},
	{
		text = "Nice work guys", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mrb_rvd_29")
	},
}
VoiceCommandsMod.menus.cursedkillroom = {}
VoiceCommandsMod.menus.laundromatsafehouse = {
	{
		text = "Now pick up the money", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_21")
	},
	{
		text = "Welcome to your safe house", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_27")
	},
	{
		text = "I know this is elementary", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_41")
	},
	{
		text = "Good luck", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_44")
	},
	{
		text = "Let's do this", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_76")
	},
	{
		text = "Best room: The vault", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_sh_int_57")
	},
	{
		text = "Driver 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_sh_01")
	},
	{
		text = "Driver 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_sh_02")
	},
}
VoiceCommandsMod.menus.labrats = {
	{
		text = "Lab Explosion", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_26")
	},
	{
		text = "Need to add ingredient", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_17")
	},
	{
		text = "Cops coming!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nai_21")
	},
	{
		text = "Muriatic Acid", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_20")
	},
	{
		text = "Caustic Soda", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_22")
	},
	{
		text = "Hydrogen Chloride", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_rat_stage1_24")
	},
	{
		text = "Better luck next time", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nai_16")
	},
	{
		text = "No bags?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nai_17")
	}
}
VoiceCommandsMod.menus.prisonnightmare = {
	{
		text = "Escape! Run!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_39")
	},
	{
		text = "You're done", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_34")
	},
	{
		text = "Time's almost up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_32")
	},
	{
		text = "Timer interrupted", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_18")
	},
	{
		text = "Drills incoming!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_12")
	},
	{
		text = "Dozer incoming!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_16")
	},
	{
		text = "Flames incoming!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hlp_08")
	},
	{
		text = "Big Cloaker:\nYou're mine now, forever", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_big_clk_hlp_fal")
	},
}
VoiceCommandsMod.menus.bigoil1 = {
	{
		text = "Have you found the safe", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_03")
	},
	{
		text = "Intel! Intel!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_18")
	},
	{
		text = "Bikers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_11")
	},
	{
		text = "Cops from the west!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_12")
	},
	{
		text = "Cops from the forest!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_13")
	},
	{
		text = "Cops from the factory!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_14")
	},
	{
		text = "Boobytrapped the doors!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_17")
	},
	{
		text = "Get that thing open", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo1_04")
	},
}
VoiceCommandsMod.menus.bigoil2 = {
	{
		text = "Server room, find it", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_25")
	},
	{
		text = "Check for hints", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_34")
	},
	{
		text = "Ahhhh, okay...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_33")
	},
	{
		text = "Blackhawk!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_50")
	},
	{
		text = "Dammit, the alarm!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_51")
	},
	{
		text = "Doctor Fantastic!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_44")
	},
	{
		text = "Refuel needed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_47")
	},
	{
		text = "Let's get out!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bo2_46")
	},
}
VoiceCommandsMod.menus.hotlinemiami1 = {
	{
		text = "Commissar Angry 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_com_hm1_02")
	},
	{
		text = "Commissar Angry 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_com_hm1_03")
	},
	{
		text = "Commissar Angry 3", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_com_hm1_04")
	},
	{
		text = "Keep smashing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm1_15")
	},
	{
		text = "A second hatch?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm1_29")
	},
	{
		text = "Happy birthday clowns", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm1_33")
	},
	{
		text = "30 seconds gang", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm1_40")
	},
	{
		text = "Lab Explosion", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm1_73")
	},
}
VoiceCommandsMod.menus.hotlinemiami2 = {
	{
		text = "Guys the Thermal Drill", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_83")
	},
	{
		text = "Chopper coming in!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_branchbank_stage1_87")
	},
	{
		text = "Hector wants this recorded", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs3_04")
	},
	{
		text = "Get out of the box!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm2_02")
	},
	{
		text = "Get the coke!!!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm2_21")
	},
	{
		text = "Come on! Hustle!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hm2_25")
	},
	{
		text = "Commissar Cocky", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_com_hm2_02")
	},
	{
		text = "Commissar Death", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_com_hm2_09")
	},
}
VoiceCommandsMod.menus.santasworkshop = {
	{
		text = "Secure those bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_can_04")
	},
	{
		text = "Keep the cops droppin'", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_can_03")
	},
	{
		text = "Vlad: Merry Christmas!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_01")
	},
	{
		text = "Well done!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_11")
	},
	{
		text = "Here come the cops!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_04")
	},
	{
		text = "Singing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_06")
	},
	{
		text = "Is that an elf slacking?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_07")
	},
	{
		text = "All the elves are dead!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_can_08")
	},
}
VoiceCommandsMod.menus.whitexmas = {
	{
		text = "Chopper's gotta leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cp1_09")
	},
	{
		text = "Chopper on the way!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cp1_20")
	},
	{
		text = "Vlad: A present!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_cp1_05")
	},
	{
		text = "Tragic sack of crap", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_cp1_06")
	},
	{
		text = "Pilot: Let's build a snowman!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cp1_11")
	},
	{
		text = "Pilot Coughing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cp1_09")
	},
	{
		text = "Pilot Laughing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cp1_10")
	},
	{
		text = "Pilot Intro", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cp1_01")
	},
}
VoiceCommandsMod.menus.alaskandeal = {
	{
		text = "Your help is needed!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_wwh_06")
	},
	{
		text = "Dammit Locke!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_wwh_01")
	},
	{
		text = "Ending", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_wwh_end")
	},
	{
		text = "Captain: It's time to leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpt_wwh_15")
	},
	{
		text = "Something wrong with hose", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpt_wwh_10")
	},
	{
		text = "Connect hose to ship", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpt_wwh_06")
	},
	{
		text = "Crew: Help captain", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_crw_wwh_01")
	},
	{
		text = "Locke: Farewell", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_wwh_02")
	},
}
VoiceCommandsMod.menus.watchdogs1 = {
	{
		text = "Old Pilot: We're leaving", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_watchdogs_stage1_04")
	},
	{
		text = "Coke Driver: Faster!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_watchdogs_stage1_17")
	},
	{
		text = "I'm here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_watchdogs_stage1_05")
	},
	{
		text = "Great job!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_watchdogs_stage1_16")
	},
	{
		text = "10 more seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_watchdogs_stage1_14")
	},
	{
		text = "Megaphone Cop", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mga_watchdogs_stage1_01")
	},
	{
		text = "Bain: Escape driver coming in!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_watchdogs_new_stage1_18")
	},
	{
		text = "Chopper's here! Go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_watchdogs_new_stage1_23")
	},
}
VoiceCommandsMod.menus.watchdogs2 = {
	{
		text = "Chopper's here! Go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_watchdogs_new_stage2_09")
	},
	{
		text = "Get those bags!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_watchdogs_new_stage2_11")
	},
	{
		text = "Have you found the floodlights?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_watchdogs_new_stage2_12")
	},
	{
		text = "Heli: Let's get to that bridge!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_watchdogs_stage2_07")
	},
	{
		text = "Old Boat: This is the boat!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_watchdogs_new_stage2_01")
	},
	{
		text = "I'm here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_watchdogs_new_stage2_05")
	},
	{
		text = "Fill the barrels!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_watchdogs_new_stage2_07")
	},
	{
		text = "Not the water!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_watchdogs_new_stage2_11")
	},
}
VoiceCommandsMod.menus.firestarter1 = {
	{
		text = "Chop chop!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_06")
	},
	{
		text = "This place is dry!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_10")
	},
	{
		text = "Almost there now!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_08")
	},
	{
		text = "Well done!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_11")
	},
	{
		text = "Good start!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_07")
	},
	{
		text = "That's the Mendoza's plane", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_14")
	},
	{
		text = "Movement in the control tower!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_05")
	},
	{
		text = "Destroy or get to van!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs1_13")
	},
}
VoiceCommandsMod.menus.firestarter2 = {
	{
		text = "Run run run!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_26")
	},
	{
		text = "We gotta rush it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_24")
	},
	{
		text = "Hurry! Next door!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_15")
	},
	{
		text = "You're so close!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_19")
	},
	{
		text = "Run for the server!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_04")
	},
	{
		text = "This is our old loot", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_28")
	},
	{
		text = "We were so close!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_25")
	},
	{
		text = "Grab the server!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fs2_18")
	},
}
VoiceCommandsMod.menus.boilingpoint = {
	{
		text = "We're done! Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_51")
	},
	{
		text = "Good decision", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_43")
	},
	{
		text = "What the hell! Gas!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_24")
	},
	{
		text = "We need this guy's hand", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_63")
	},
	{
		text = "Take missiles to the radar", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_57")
	},
	{
		text = "Can you hear me?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mad_22")
	},
	{
		text = "Pilot: Prepare to extract", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_mad_07")
	},
	{
		text = "Jimmy Ending", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb14_mad_outro_01")
	},
}
VoiceCommandsMod.menus.murkystation = {
	{
		text = "Dammit! That's the alarm!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_48")
	},
	{
		text = "Use the keycard", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_13")
	},
	{
		text = "Use the blowtorch", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_18")
	},
	{
		text = "Use the thermite", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_23")
	},
	{
		text = "Use the hard drive", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_28")
	},
	{
		text = "Found a crowbar", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_30")
	},
	{
		text = "These vents are useful", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_38")
	},
	{
		text = "Search the whole trainyard", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_drk_42")
	},
}
VoiceCommandsMod.menus.thewhitehouse = {
	{
		text = "Rock hit me in the head!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_uno_12")
	},
	{
		text = "Answering PEOC Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_vit_56")
	},
	{
		text = "Chop chop! Get outside!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_vit_68")
	},
	{
		text = "Badger Story", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_uno_04")
	},
	{
		text = "Bain: End", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_vit_end_win")
	},
	{
		text = "Secret End", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_uno_end_win")
	},
	{
		text = "You idiots!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_uno_05")
	},
	{
		text = "Failure Static", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_vit_end_fail")
	},
	
}
VoiceCommandsMod.menus.nightclub = {
	{
		text = "Get that safe open", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_09")
	},
	{
		text = "Enter the club", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_04")
	},
	{
		text = "Try and keep 'em all down", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_07")
	},
	{
		text = "Escape will be in an alley nearby", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_11")
	},
	{
		text = "Have you found the key yet?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_key_02")
	},
	{
		text = "Bouncer: Sorry", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bnc_nightclub_stage1_01")
	},
	{
		text = "Ah, whatever", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bnc_nightclub_stage1_03")
	},
	{
		text = "Get in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bnc_nightclub_stage1_04")
	},
}
VoiceCommandsMod.menus.fourstores = {
	{
		text = "Bo Kung! China store", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_cs_01")
	},
	{
		text = "Van's here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_vh_01")
	},
	{
		text = "Wham! Motherload", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_sfe_02")
	},
	{
		text = "A little light", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_ne_01")
	},
	{
		text = "Get your masks on", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_msk_02")
	},
	{
		text = "Great stuff!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_en_01")
	},
	{
		text = "Watch the alarms", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_cam_02")
	},
	{
		text = "This is an easy job", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fost_brf_01")
	},
}
VoiceCommandsMod.menus.mallcrasher = {
	{
		text = "If you're quick,\nyou can escape in van", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mcr_01")
	},
	{
		text = "Escape driver had to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mcr_17")
	},
	{
		text = "Chopper inbound!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_18")
	},
	{
		text = "Trash the entire mall", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_01")
	},
	{
		text = "10 grand", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_06")
	},
	{
		text = "$25,000, halfway", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_09")
	},
	{
		text = "Almost there! $45,000!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_13")
	},
	{
		text = "50 grand down the drain!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_mallcrash_stage1_14")
	},
}

VoiceCommandsMod.menus.thebigbank = {
	{
		text = "Pick up the phone", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_50")
	},
	{
		text = "Pigs will fly", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_26")
	},
	{
		text = "For once,\nwe're helped by a pig", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_30")
	},
	{
		text = "Ouch! Careful with that crane", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_31")
	},
	{
		text = "Get stowing that loot!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_40")
	},
	{
		text = "It worked! Great job!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bb1_58")
	},
	{
		text = "Gensec (Good)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gensec_conversation_ending_1")
	},
	{
		text = "Gensec (Bad)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gensec_conversation_ending_2")
	},
}

VoiceCommandsMod.menus.goatsim1 = {
	{
		text = "Cops: Drop the goats!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpg_pt1_01")
	},
	{
		text = "We're done! Get in the car!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt1_04")
	},
	{
		text = "Cops are taking our goats!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt1_28")
	},
	{
		text = "The goat is electrified!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt1_14")
	},
	{
		text = "How did it get up there?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt1_17")
	},
	{
		text = "Vlad: Found goat", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_pt1_05")
	},
	{
		text = "And stay in there!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_pt1_05b")
	},
	{
		text = "Boris: Could be a while", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_brs_pt1_04")
	},
}
VoiceCommandsMod.menus.goatsim2 = {
	{
		text = "Stay in the car dammit!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt2_18")
	},
	{
		text = "Outstanding! Time to leave!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt2_15")
	},
	{
		text = "Now put the goats in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pt2_10")
	},
	{
		text = "Hondurans", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_thg_pt2_01")
	},
	{
		text = "Vlad: Why are goats missing?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_pt2_03")
	},
	{
		text = "We got the goats!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_pt2_04")
	},
	{
		text = "Boris: In Dumpster", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_brs_pt2_03")
	},
	{
		text = "Let's get the goats in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_brs_pt2_intro")
	},
}
VoiceCommandsMod.menus.sanmartinbank = {
	{
		text = "Time to make a run for it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_111")
	},
	{
		text = "What an awful noise!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_03")
	},
	{
		text = "Vlad: Hurry up!!!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_42")
	},
	{
		text = "Why is it taking so long?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_100")
	},
	{
		text = "Ugh, how slow is this guy!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_76")
	},
	{
		text = "Again? With the animals?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bex_08")
	},
	{
		text = "Hajrudin: On my way!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_alm_bex_01")
	},
	{
		text = "IT Guy: Help me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_itg_bex_05")
	},
}
VoiceCommandsMod.menus.bulucsmansion = {
	{
		text = "Do it! Shoot him!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_58")
	},
	{
		text = "Shame we can't blow him up", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_43a")
	},
	{
		text = "Vlad hates hacking shit", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_50")
	},
	{
		text = "'Inner Sanctum'? Haha", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_52e")
	},
	{
		text = "Use that saw on Buluc's leg", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_54b")
	},
	{
		text = "Happy swimming,\nmotherfucker!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_57b")
	},
	{
		text = "Eaten by his own shark", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_57c")
	},
	{
		text = "Escape has arrived!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_65")
	},
}

VoiceCommandsMod.menus.escapeoverpass = {
	{
		text = "10 seconds! Move!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10secs_to_departure")
	},
	{
		text = "Escape there in 10 minutes", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10_to_arrival")
	},
	{
		text = "Cops are surrounding you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_start")
	},
	{
		text = "Van will leave in 30 seconds", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_30secs_to_departure_van")
	},
	{
		text = "We need 10 bags", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_requirement_10_bags")
	},
	{
		text = "SWAT chopper incoming", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_overpass_swat_heli_incoming")
	},
	{
		text = "Sniper moving to rooftop", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_overpass_sniper_on_rooftop")
	},
	{
		text = "Snipers in the area", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_overpass_more_snipers")
	},
}
VoiceCommandsMod.menus.escapepark = {
	{
		text = "10 seconds! Move!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10secs_to_departure")
	},
	{
		text = "Escape there in 10 minutes", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10_to_arrival")
	},
	{
		text = "Cops are surrounding you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_start")
	},
	{
		text = "We need 10 bags", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_requirement_10_bags")
	},
	{
		text = "Park nearby is good cover", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_park_suggest_park")
	},
	{
		text = "Van will arrive near park", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_park_escape_location")
	},
	{
		text = "SWATs on nearby rooftop", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_park_marksmen_rooftop")
	},
	{
		text = "SWATs inside nearby building", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_park_marksmen_building")
	},
}
VoiceCommandsMod.menus.escapestreet = {
	{
		text = "10 seconds! Move!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10secs_to_departure")
	},
	{
		text = "The chopper's here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_chopper_arrived")
	},
	{
		text = "The cops are pissed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_full_force")
	},
	{
		text = "SWATs are moving in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_swats_deployed")
	},
	{
		text = "Watch out for snipers", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_lookout_sniper")
	},
	{
		text = "Snipers coming by chopper", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_snipers_deployed")
	},
	{
		text = "Snipers got you pinned", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_snipers_nearby")
	},
	{
		text = "More snipers coming in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_street_more_snipers_deployed")
	},

}
VoiceCommandsMod.menus.escapecafegarage = {
	{
		text = "10 seconds! Move!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10secs_to_departure")
	},
	{
		text = "Escape there in 10 minutes", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_10_to_arrival")
	},
	{
		text = "Cops are surrounding you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_start")
	},
	{
		text = "I've secured a chopper", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_fixed_heli")
	},
	{
		text = "I've secured a van", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_fixed_van")
	},
	{
		text = "Just keep the loot safe!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_plan_b")
	},
	{
		text = "Van will leave in 30 seconds", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_30secs_to_departure_van")
	},
	{
		text = "We need 10 bags", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","pln_esc_requirement_10_bags")
	},

}

VoiceCommandsMod.menus.aftershock = {
	{
		text = "Get inside the truck!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_as1_14")
	},
	{
		text = "At least it isn't nukes", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_as1_06")
	},
	{
		text = "Vlad: Get in the truck!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_as1_16")
	},
	{
		text = "Find the trucks!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_as1_03")
	},
	{
		text = "There's the safes!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_as1_05")
	},
	{
		text = "Why is no one getting C4", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_as1_10")
	},
	{
		text = "Bile: City is fucked", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_as1_01")
	},
	{
		text = "Under pressure from civs", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_as1_02")
	},
}
VoiceCommandsMod.menus.stealingxmas = {
	{
		text = "Time to escape!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_moon_36")
	},
	{
		text = "Get Santa in the tree", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_moon_33")
	},
	{
		text = "C4's gonna blow!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_moon_29")
	},
	{
		text = "Put the loot in the tree", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_moon_23")
	},
	{
		text = "Vlad: Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_moon_37")
	},
	{
		text = "I want the tree!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_moon_31")
	},
	{
		text = "Get the stuff", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_moon_26")
	},
	{
		text = "Wake him up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_moon_04")
	},
}
VoiceCommandsMod.menus.greenbridge = {
	{
		text = "Prisoners Greeting", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_prisoners_glc_01")
	},
	{
		text = "Get him to the tower!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_glace_15")
	},
	{
		text = "Secondary explosion!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_glace_05")
	},
	{
		text = "That's him!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_glace_14")
	},
	{
		text = "Release the balloon!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_glace_20")
	},
	{
		text = "Where's the plane?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_glace_25")
	},
	{
		text = "Pilot: Shit, I missed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_geo_glc_04")
	},
	{
		text = "Picking up the package", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_geo_glc_03")
	},
}
VoiceCommandsMod.menus.bikerheist1 = {
	{
		text = "Just keep driving!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_brn_12")
	},
	{
		text = "He really wanted a soda", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_brn_14")
	},
	{
		text = "Bikers: Payback!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bkl_brn_01")
	},
	{
		text = "Mechanic: *muffled*", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_brn_01")
	},
	{
		text = "Help me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_brn_07")
	},
	{
		text = "Hey, don't leave me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_brn_06")
	},
	{
		text = "I don't wanna die today!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_brn_05")
	},
	{
		text = "Come on, where's that Coke?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_brn_20")
	},
}
VoiceCommandsMod.menus.bikerheist2 = {
	{
		text = "Time to go, c'mon!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_chw_14")
	},
	{
		text = "You have 2 minutes!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_chw_16")
	},
	{
		text = "You have 30 seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_chw_18")
	},
	{
		text = "Run back and secure!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_chw_11")
	},
	{
		text = "Biker Boss: Get ready to die", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bkb_chw_02")
	},
	{
		text = "Biker Female: They're here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bkf_chw_01")
	},
	{
		text = "Biker Male: Kill 'em!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bkm_chw_04")
	},
	{
		text = "Intro", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_chw_intro")
	},
}
VoiceCommandsMod.menus.nomercy = {
	{
		text = "Bill: Move it out!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bil_nmh_01_04")
	},
	{
		text = "I think this is your floor", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bil_nmh_01_05")
	},
	{
		text = "Six", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_12")
	},
	{
		text = "Next time do it the quiet way", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_28")
	},
	{
		text = "Answer the phone!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_31")
	},
	{
		text = "Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_32")
	},
	{
		text = "That was one messed up job", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_end_fail")
	},
	{
		text = "You're left for dead!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nmh_114")
	},
}
VoiceCommandsMod.menus.thediamond = {
	{
		text = "Shit! Gas! Gas!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_14")
	},
	{
		text = "You got it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_09")
	},
	{
		text = "You did it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_27")
	},
	{
		text = "Chopper will make it loud", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_17")
	},
	{
		text = "Cameras are down", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_21")
	},
	{
		text = "It's a beautiful building", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_28")
	},
	{
		text = "Genghis Khan", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_30")
	},
	{
		text = "Wrong tile!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hd1_37")
	},
}

VoiceCommandsMod.menus.holdout = {
	{
		text = "Hostage in danger!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_skm_22")
	},
	{
		text = "Wall breach!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_skm_17")
	},
	{
		text = "They took the hostage!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_skm_23")
	},
	{
		text = "End (Fail)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_skm_end_fail")
	},
	{
		text = "Megaphone:\nYou have been warned!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_neg_skm_13")
	},
	{
		text = "Minigun dozers will shut you up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_neg_skm_08")
	},
	{
		text = "Cop: Hostage secured!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_neg_skm_15")
	},
	{
		text = "Perp in custody!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_neg_skm_17")
	},
}

VoiceCommandsMod.menus.framingframe2 = {
	{
		text = "Pilot: Come on!!!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ph1_trade4_loud")
	},
	{
		text = "Throw me the paintings", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ph1_trade1_loud")
	},
	{
		text = "This wasn't the deal!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ph1_trade7_loud")
	},
	{
		text = "Dealer: Four paintings...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dlr_framing_stage2_08")
	},
	{
		text = "This is purely a safety precaution", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dlr_framing_stage2_11")
	},
	{
		text = "Bain: Pick up the phone!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage2_02")
	},
	{
		text = "SWAT ambush!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage2_13")
	},
	{
		text = "Need ECM jammer!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage2_17")
	},
	
}
VoiceCommandsMod.menus.framingframe3 = {
	{
		text = "We gotta change this up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ff3_03")
	},
	{
		text = "Tons of gold in this deal!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ff3_07")
	},
	{
		text = "Man, this place", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ff3_10")
	},
	{
		text = "Aw, that's the vault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ff3_17")
	},
	{
		text = "1600 Penn", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ff3_16")
	},
	{
		text = "Keep 'em away from the power!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage3_47")
	},
	{
		text = "That's the damn alarm!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage3_32")
	},
	{
		text = "Our escape will blend in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_framing_stage3_50")
	},
}

VoiceCommandsMod.menus.undercover = {
	{
		text = "Make the jump!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_78")
	},
	{
		text = "Let's go, let's go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_77")
	},
	{
		text = "Is he... dead?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_60")
	},
	{
		text = "Don't break his neck!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_58")
	},
	{
		text = "He put it inside his shirt!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_13")
	},
	{
		text = "Hit him!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_54")
	},
	{
		text = "Why'd I hire you Alex", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_38")
	},
	{
		text = "I feel like Robin Hood", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_man_44")
	},
}
VoiceCommandsMod.menus.heatstreet = {
	{
		text = "Get him!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_01")
	},
	{
		text = "Come on! Get Matt!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_05")
	},
	{
		text = "Chasing Matt again?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_07")
	},
	{
		text = "That is some crash!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_12")
	},
	{
		text = "They got Eddie!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_04")
	},
	{
		text = "Shoot the gas can!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_26")
	},
	{
		text = "Clear the area!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_25")
	},
	{
		text = "Keep going!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_run_21")
	},
}
VoiceCommandsMod.menus.panicroom = {
	{
		text = "Goddammit, Bile!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_25")
	},
	{
		text = "Get outta there!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_48")
	},
	{
		text = "That's one hell of a hole!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_39")
	},
	{
		text = "Look at that room go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_44")
	},
	{
		text = "Stop walking around", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_05")
	},
	{
		text = "Something's up", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_06")
	},
	{
		text = "That's a big toothbrush!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_11")
	},
	{
		text = "Down to the basement!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_flt_47")
	},
}

VoiceCommandsMod.menus.brooklyn1010 = {
	{
		text = "Charon: Time to leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cha_spa_16")
	},
	{
		text = "Thank you", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cha_spa_08")
	},
	{
		text = "You underestimate me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cha_spa_19")
	},
	{
		text = "Charon in Pain", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cha_spa_17")
	},
	{
		text = "Bain: Oh no! More snipers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_spa_07")
	},
	{
		text = "Rough day for the NYPD", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_spa_09")
	},
	{
		text = "Move to the next building!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_spa_12")
	},
	{
		text = "Charon? You OK?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_spa_21")
	},
}
VoiceCommandsMod.menus.theyachtheist = {
	{
		text = "Sweet sweet cash!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_07")
	},
	{
		text = "Find that laptop?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_03")
	},
	{
		text = "Secure loot in boat", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_13")
	},
	{
		text = "Use the zipline", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_15")
	},
	{
		text = "Door will open when\nECM jammer stops", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_19")
	},
	{
		text = "We got it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_27")
	},
	{
		text = "We almost had it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_31")
	},
	{
		text = "A TV crew", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fish_35")
	},
}
VoiceCommandsMod.menus.thebombforest = {
	{
		text = "Now! Boom!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_08")
	},
	{
		text = "Okay, we're pumpin'!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_25")
	},
	{
		text = "Great, C4!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_31")
	},
	{
		text = "Any... second...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_33")
	},
	{
		text = "Clear the trees!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_41")
	},
	{
		text = "Use the C4!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr3_55")
	},
	{
		text = "Bile: Hose coming down", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_cr3_01")
	},
	{
		text = "I'm outta here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_cr3_03")
	},
}
VoiceCommandsMod.menus.thebombdockyard = {
	{
		text = "Boom! That was crazy", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_29")
	},
	{
		text = "Feeding the fish", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_118")
	},
	{
		text = "Taking out the trash", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_119")
	},
	{
		text = "Stop searching containers", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_122")
	},
	{
		text = "There's a useless keycard", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_44")
	},
	{
		text = "Almost... done...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_cr2_87")
	},
	{
		text = "Bile: Dropping the package", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_cr2_01")
	},
	{
		text = "Captain: Standing by", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cpn_cr2_02")
	},
}
VoiceCommandsMod.menus.scarfacemansion = {
	{
		text = "Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_48")
	},
	{
		text = "Boss, I got somethin'!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_49")
	},
	{
		text = "They're reinforcing security", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_54")
	},
	{
		text = "That's all of it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_38")
	},
	{
		text = "There's nothing left! Go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_39")
	},
	{
		text = "How to get inside... hmm...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fri_19")
	},
	{
		text = "Butcher: Car freak", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_btc_fri_03")
	},
	{
		text = "The message has\nbeen delivered", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_btc_fri_12")
	},
}

VoiceCommandsMod.menus.slaughterhouse = {
	{
		text = "Get to the escape!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_26")
	},
	{
		text = "Get ready to run!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_29")
	},
	{
		text = "Tackle ready!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_02")
	},
	{
		text = "Ignite the tires!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_18")
	},
	{
		text = "Guys, guys! Murkies!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_37")
	},
	{
		text = "Out of the container!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_38")
	},
	{
		text = "Radio Intro", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_intro_01")
	},
	{
		text = "Vlad: Get my pig!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_dn1_01")
	},
}
VoiceCommandsMod.menus.diamondheist = {
	{
		text = "Time to move!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_109")
	},
	{
		text = "Just saw Ralph!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_115")
	},
	{
		text = "You have everything\nyou need", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_38")
	},
	{
		text = "Don't break the glass!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_42")
	},
	{
		text = "A second vault?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_96")
	},
	{
		text = "There goes the alarm!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_61")
	},
	{
		text = "Need a backup plan!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_57")
	},
	{
		text = "No promises about CFO living", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_93")
	},
}
VoiceCommandsMod.menus.firstworldbank = {
	{
		text = "Find the manager,\ncreep, balding", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_04")
	},
	{
		text = "No code here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_14")
	},
	{
		text = "Found the code!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_15")
	},
	{
		text = "Now the vault keypanel!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_22")
	},
	{
		text = "Too slow!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_23")
	},
	{
		text = "You still need keycard!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_36")
	},
	{
		text = "Get out of the lobby!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_58")
	},
	{
		text = "Go through the hole!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_fwb_62")
	},
}
VoiceCommandsMod.menus.counterfeit = {
	{
		text = "Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_80")
	},
	{
		text = "Just keep running!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_78")
	},
	{
		text = "It's a trap!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_50")
	},
	{
		text = "C4 Exploded", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_51")
	},
	{
		text = "They drove through\nWilson's wall!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_44")
	},
	{
		text = "You need a crowbar!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_27")
	},
	{
		text = "Silent kills, people", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_16")
	},
	{
		text = "Intro\n(Bodhi's Pool Repair)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_pal_intro")
	},
}

VoiceCommandsMod.menus.hoxtonrevenge = {
	{
		text = "Time to leave!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_47")
	},
	{
		text = "Alarm is counting down!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_58")
	},
	{
		text = "The alarm timer ran out!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_57")
	},
	{
		text = "Stay inside! Snipers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_50")
	},
	{
		text = "The rat! Kill him!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_41")
	},
	{
		text = "Hector?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_42")
	},
	{
		text = "Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb3_26")
	},
	{
		text = "Operator Code", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ope_hb3_01")
	},
}
VoiceCommandsMod.menus.hoxtonbreakout1 = {
	{
		text = "I SAID IT'S FUCKIN'\nPAYDAY MOTHERFU-", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb1_05")
	},
	{
		text = "Hoxton seems disoriented", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb1_26")
	},
	{
		text = "Signal the driver", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb1_01")
	},
	{
		text = "Any second...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb1_20")
	},
	{
		text = "Seven bucks?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb1_19")
	},
	{
		text = "Twitch: Movin'!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_hb1_01")
	},
	{
		text = "Can you guys move that?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_hb1_02")
	},
	{
		text = "They're shootin' me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_hb1_03")
	},
}
VoiceCommandsMod.menus.hoxtonbreakout2 = {
	{
		text = "Hoxton: The power!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb2_15")
	},
	{
		text = "Hoxton Working", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb2_25")
	},
	{
		text = "Get inside!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb2_01")
	},
	{
		text = "Bain: Final assault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb2_19")
	},
	{
		text = "Tear gas!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb2_18")
	},
	{
		text = "Keycards are gold here", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_hb2_13")
	},
	{
		text = "Twitch: Get down here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_hb2_02")
	},
	{
		text = "Nice wheels, eh?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dr1_hb2_03")
	},
}

VoiceCommandsMod.menus.dragonheist = {
	{
		text = "Get the drill", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chas_63")
	},
	{
		text = "Into the van, chops!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chas_93")
	},
	{
		text = "What are you waiting for?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chas_36")
	},
	{
		text = "Heads up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chas_62")
	},
	{
		text = "You got electrocuted", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_chas_80a")
	},
	
	{
		text = "Auctioneer: We're ready", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_auc_chas_01")
	},
	{
		text = "What is going on!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_auc_chas_02")
	},
	{
		text = "Buyers Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_buyers_chas")
	},
}
VoiceCommandsMod.menus.theukrainianprisoner = {
	{
		text = "Cake Phone Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_25")
	},
	{
		text = "Just pick a direction", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_114")
	},
	{
		text = "Are you leaving him there?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_103a")
	},
	{
		text = "Open sesame you chops", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_43")
	},
	{
		text = "Into the boat", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_69")
	},
	{
		text = "They know we're here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_70")
	},
	{
		text = "Get that gate open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_116")
	},
	{
		text = "We're letting Vlad down!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_100")
	},
	
	
}
VoiceCommandsMod.menus.goldengrincasino = {
	{
		text = "Ouch! You lost", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_134")
	},
	{
		text = "You're on a hot streak!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_135")
	},
	{
		text = "That's it, drink it up", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_24")
	},
	{
		text = "The alarm!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_30")
	},
	{
		text = "BFD broke down!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_62")
	},
	{
		text = "I don't... know...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_158")
	},
	{
		text = "Gambler Losing", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cv2_ca1_01")
	},
	{
		text = "Fuckety-bye!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cv4_ca1_05")
	},
}


VoiceCommandsMod.menus.henrysrock = {
	{
		text = "You have to leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_93")
	},
	{
		text = "That terminal didn't work", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_15")
	},
	{
		text = "The feds are here too!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_02")
	},
	{
		text = "Open those doors!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_04a")
	},
	{
		text = "Screws, screws", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_28")
	},
	{
		text = "That's just strange", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_46")
	},
	{
		text = "Come on, grab the artifact", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_60")
	},
	{
		text = "Press the button!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_des_70")
	},
}
VoiceCommandsMod.menus.hellsisland = {
	{
		text = "Murky ambush!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bph_03")
	},
	{
		text = "That wasn't Bain", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bph_14")
	},
	{
		text = "Take out the Murkies!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bph_27")
	},
	{
		text = "Get onto the chopper!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_bph_36")
	},
	{
		text = "Dentist: Rats...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_bph_01")
	},
	{
		text = "Abashed the devil stood", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_bph_03")
	},
	{
		text = "Bain: Been waiting", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bph_05")
	},
	{
		text = "You need the Mayan gold", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_bph_06")
	},
}
VoiceCommandsMod.menus.brooklynbank = {
	{
		text = "Don't forget the drill", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_26")
	},
	{
		text = "It's time to leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_54")
	},
	{
		text = "Don't wait around", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_60")
	},
	{
		text = "Restart the saw", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_11")
	},
	{
		text = "Blow the hole", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_14")
	},
	{
		text = "How's the winch going", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_40")
	},
	{
		text = "Equipment in toilets", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_21")
	},
	{
		text = "Get through the floor!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_brb_52")
	},
}
VoiceCommandsMod.menus.breakinfeds = {
	{
		text = "Garrett's coming!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_46")
	},
	{
		text = "Too slow, guys", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_11")
	},
	{
		text = "No shooting Garrett", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_17")
	},
	{
		text = "Yes, that's it!!!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_44")
	},
	{
		text = "You killed Garrett!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_62")
	},
	{
		text = "You're done, leave", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_75")
	},
	{
		text = "Elevator Small Talk", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_76")
	},
	{
		text = "Thank you, bad chili", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_tag_63")
	},
}
VoiceCommandsMod.menus.shacklethorneauction = {
	{
		text = "Time to go", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_41")
	},
	{
		text = "Wrong code", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_29")
	},
	{
		text = "Can't stand around", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_11")
	},
	{
		text = "The vault is open", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_31")
	},
	{
		text = "You set off the\nmetal detectors!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_45")
	},
	{
		text = "Why are you still outside?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_48")
	},
	{
		text = "Drill the door you chops", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_67")
	},
	{
		text = "Secure the artifact!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sah_90")
	},
}
VoiceCommandsMod.menus.beneaththemountain = {
	{
		text = "That's him! Locke", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_jr1_07")
	},
	{
		text = "Better do what he says", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_jr1_04")
	},
	{
		text = "Locke:\nPlant the charges!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_09")
	},
	{
		text = "The kerels fucked you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_14")
	},
	{
		text = "Send the bags up", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_37")
	},
	{
		text = "After you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_47")
	},
	{
		text = "He's better dead!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_57")
	},
	{
		text = "Empty fucking vault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr1_65")
	},
}
VoiceCommandsMod.menus.birthofsky = {
	{
		text = "Out of that hideyhole!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_jr2_01")
	},
	{
		text = "Into the boat!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_jr2_07")
	},
	{
		text = "Locke:\nJust press the button!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_07")
	},
	{
		text = "Find the third pallet!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_16")
	},
	{
		text = "Fucking pallet broke!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_17")
	},
	{
		text = "Find those fucking bundles!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_18")
	},
	{
		text = "Light the flare!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_19")
	},
	{
		text = "Don't shoot my helicopter!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_jr2_22")
	},
}
VoiceCommandsMod.menus.breakfastintijuana = {
	{
		text = "Flush it!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pex_17")
	},
	{
		text = "We need to\ncut him loose", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pex_34")
	},
	{
		text = "Time to go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pex_51")
	},
	{
		text = "Make a bonfire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pex_64")
	},
	
	{
		text = "Hajrudin: Off we go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_alm_pex_36")
	},
	{
		text = "Help me with this door", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_pex_42")
	},
	{
		text = "Ugh, wrong key!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_alm_pex_17")
	},
	{
		text = "I'll try not to\npunch the cops", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_alm_pex_08")
	},
}
VoiceCommandsMod.menus.bordercrossing = {
	{
		text = "Lab Explosion", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_cook_12")
	},
	{
		text = "Are you guys OK?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_42")
	},
	{
		text = "Transition", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_transition")
	},
	{
		text = "Muriatic Acid", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_cook_03")
	},
	{
		text = "Caustic Soda", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_cook_04")
	},
	{
		text = "Hydrogen Chloride", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_cook_05")
	},
	{
		text = "Story 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_26")
	},
	{
		text = "Story 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_mex_85")
	},
}

VoiceCommandsMod.menus2.breakinfeds = {
	{
		text = "Garrett:\nIntruders!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_19")
	},
	{
		text = "Who was in\nmy office?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_09")
	},
	{
		text = "Hey! Emergency!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_18")
	},
	{
		text = "Garrett Grunting", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_20")
	},
	{
		text = "Garrett on Phone", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_01")
	},
	{
		text = "Garrett to Sergeant", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gar_tag_02")
	},
	{
		text = "Garrett Phone Lure", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","tag_garret_phone_reply")
	},
	{
		text = "Training Room", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_npc_tag_poi_01")
	},
}
VoiceCommandsMod.menus2.gobank = {
	{
		text = "Gensec: Time's Up", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gsc_cs1_19")
	},
	{
		text = "Blackmailer Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_blm_cs1_01")
	},
	{
		text = "Funny Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_csk_cs1_01")
	},
	{
		text = "Male Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_csm_cs1_03")
	},
	{
		text = "Female Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_csf_cs1_03")
	},
	{
		text = "Captain Rogers Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plc_cs1_01")
	},
	{
		text = "Pilot: No fucking way", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cs1_13")
	},
	{
		text = "Pilot: I can do this", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt2_cs1_16")
	}
}
VoiceCommandsMod.menus2.alesso = {
	{
		text = "Pyro:\nAnother fuckup!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_14")
	},
	{
		text = "Having a circlejerk?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_06")
	},
	{
		text = "Shape up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_08")
	},
	{
		text = "You guys are a trainwreck", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_12")
	},
	{
		text = "Go back to pyro school", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_16")
	},
	{
		text = "Send security!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_13")
	},
	{
		text = "Get on the intercom!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_02")
	},
	{
		text = "Outstanding!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_05")
	},
}
VoiceCommandsMod.menus2.watchdogs2 = {
	{
		text = "Boat:\nIn the water?!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_11")
	},
	{
		text = "I'm here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_02")
	},
	{
		text = "I can only take one", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_04d")
	},
	{
		text = "Waiting at Dock 7!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_21")
	},
	{
		text = "Waiting at Dock 8!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_22")
	},
	{
		text = "Waiting at Dock 9!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_23")
	},
	{
		text = "Have to leave!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_17")
	},
	{
		text = "Nice!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bot_wd2_03")
	},
}

--list used for The Dentist and Hoxton's personalized lines for each heister
local heisters = { "Dallas", "Chains", "Wolf", "Hoxton", "Houston", "Wick", "Clover", "Dragan", "Jacket", "Bonnie", "Sokol", "Jiro",
				"Bodhi", "Jimmy", "Sydney", "Rust", "Scarface", "Sangres", "Joy", "Ethan", "Hila", "Duke" }
local voiceorder = { "04", "01", "03", "05", "02", "06", "07", "08", "09" }

VoiceCommandsMod.menus2.thewhitehouse = {
	{
		text = "Death", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_uno_09")
	}
}
VoiceCommandsMod.menus2.hoxtonbreakout = {}
for i, h in ipairs(heisters) do
	table.insert(VoiceCommandsMod.menus2.thewhitehouse,
	{
		text = h, stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_uno_01_" .. h)
	})
	if (voiceorder[i] ~= nil) then
		if (i ~= 4) then
			table.insert(VoiceCommandsMod.menus2.hoxtonbreakout,
			{
				text = h, stay_open = false, show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb1_rb" .. voiceorder[i])
			})
		end
	else
		table.insert(VoiceCommandsMod.menus2.hoxtonbreakout,
		{
			text = h, stay_open = false, show_text = true,
			callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rb5_hb1_rb" .. i)
		})
	end
end

VoiceCommandsMod.menus2.bulucsmansion = {
	{
		text = "Buluc:\nAbuse", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap01a")
	},
	{
		text = "Vlad Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap02")
	},
	{
		text = "Vlad Call 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap04")
	},
	{
		text = "Vlad Loud Call", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap08")
	},
	{
		text = "Shoot the fuckers!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap07")
	},
	{
		text = "I must end the party", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_fex_tap07a")
	},
	{
		text = "Girls Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_party_girls")
	},
	{
		text = "Wife/Husband Convo", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_wife_husband")
	},
}
VoiceCommandsMod.menus2.nomercy = {
	{
		text = "Nurse: Welcome", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_a")
	},
	{
		text = "First, Isolation B", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_b")
	},
	{
		text = "Now, Isolation A", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_c")
	},
	{
		text = "Finally, Isolation C", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_d")
	},
	{
		text = "This man has problems", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_run_01")
	},
	{
		text = "This man has toxins", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_run_04")
	},
	{
		text = "This man will be fine soon", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_run_06")
	},
	{
		text = "He is very contagious", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_zombie_ff")
	},
	{
		text = "His heartrate is abnormal", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_zombie_hr")
	},
	{
		text = "This could be the green flu", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_zombie_cc")
	},
	{
		text = "He will be fine", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_zombie_not_b")
	},
	{
		text = "His heart rate is OK", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_zombie_not_b")
	},
	{
		text = "That's all I can tell you", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_i")
	},
	{
		text = "I'll be over there", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_doc_nmh_h")
	},
}
VoiceCommandsMod.menus2.undercover = {
	{
		text = "Alex: Like a glove!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_crn_man_01")
	},
	{
		text = "Taxman: Enough!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_txm_man_07")
	},
	{
		text = "You hit like a girl!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_txm_man_09")
	},
	{
		text = "Where are you taking me?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_txm_man_03")
	},
	{
		text = "Dealer: You got the data?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_hnc_man_01")
	},
	{
		text = "FBI: Shoot to kill!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pon_man_09")
	},
	{
		text = "Don't give them anything", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pon_man_09")
	},
	{
		text = "We will get you out", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pon_man_09")
	},
}
VoiceCommandsMod.menus2.heatstreet = {
	{
		text = "Eddie: They got me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bru_run_02")
	},
	{
		text = "Matt: Fuck you guys!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mtt_run_04")
	},
	{
		text = "Matt at Start", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mtt_run_01")
	},
	{
		text = "Matt Groaning\n(Long)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mtt_run_06")
	},
	{
		text = "Locke: Follow Bile!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_run_05")
	},
	{
		text = "Bile: Let's go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_run_10")
	},
	{
		text = "I'm here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_run_03")
	},
	{
		text = "I have to fall back!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_run_06")
	},
}
VoiceCommandsMod.menus2.panicroombile = {
	{
		text = "Bile:\nDeath", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a64")
	},
	{
		text = "Under fire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a63")
	},
	{
		text = "10 more seconds!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a59")
	},
	{
		text = "Hurry up!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_a09")
	},
	{
		text = "I'm getting peppered!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_flt_02")
	},
	{
		text = "Now we're talking!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_flt_03")
	},
	{
		text = "Clear the roof!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_flt_08")
	},
	{
		text = "Attach the magnet!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_flt_12")
	},
}
VoiceCommandsMod.menus2.scarfacemansion = {
	{
		text = "Ernesto: Oh fuck...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bos_fri_09")
	},
	{
		text = "My paintings!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bos_fri_01")
	},
	{
		text = "Hey! My stuff!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bos_fri_02")
	},
	{
		text = "I'll kill you!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bos_fri_05")
	},
	{
		text = "Bile: Bombs away!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_fri_08")
	},
	{
		text = "Thar she blows!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_fri_05")
	},
	{
		text = "Cars? OK...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pt1_fri_01")
	},
	{
		text = "Head of Security on Phone", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_sec_fri_01")
	},
}
VoiceCommandsMod.menus2.diamondheist = {
	{
		text = "CFO Death", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cfo_dah_06")
	},
	{
		text = "CFO: I don't know anything", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_cfo_dah_03")
	},
	{
		text = "Bain: The code is...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_81")
	},
	{
		text = "0", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_82")
	},
	{
		text = "1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_83")
	},
	{
		text = "2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_84")
	},
	{
		text = "3", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_85")
	},
	{
		text = "4", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_86")
	},
	{
		text = "5", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_87")
	},
	{
		text = "6", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_88")
	},
	{
		text = "7", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_89")
	},
	{
		text = "8", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_90")
	},
	{
		text = "9", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dah_91")
	},
		{
		text = "Ralph: Don't shoot!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rph_dah_01")
	},
	{
		text = "My daddy's rich!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_rph_dah_03")
	},
	{
		text = "DJ: That's all folks", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dj_dah_01")
	},
}
VoiceCommandsMod.menus2.firstworldbank = {
	{
		text = "Inside Man:\nYou guys take a break", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ism_fwb_03")
	},
	{
		text = "So, did you...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ism_fwb_09")
	},
	{
		text = "I'm outta here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ism_fwb_11")
	},
	{
		text = "We were close...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_ism_fwb_12")
	},
	{
		text = "Bank Manager", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bm_fwb_01")
	},
	{
		text = "Receptionist", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_fe2_fwb_01")
	},
	{
		text = "Loan Denying 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_be2_fwb_01")
	},
	{
		text = "Loan Denying 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mc1_fwb_01")
	},
}
VoiceCommandsMod.menus2.theukrainianprisoner = {
	{
		text = "Vlad Defibbed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_sand_defibrilator_01")
	},
	{
		text = "Vlad Hello", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_sand_01")
	},
	{
		text = "Vlad Chatter", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_sand_02")
	},
	{
		text = "Torture Tape", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_sand_torture_tape_01")
	},
	{
		text = "Jiu Feng:\nHurry! Get in!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_jfe_sand_05")
	},
	{
		text = "I'm here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_jfe_sand_04")
	},
	{
		text = "How is he even still alive?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_sand_143")
	},
	{
		text = "Dock Conversation", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dock_convo_sand")
	},
}
VoiceCommandsMod.menus2.goldengrincasino = {
	{
		text = "Zeppelin:\nCodename", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_zep_ca1_04")
	},
	{
		text = "Bile:\nPhone Call 1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_159")
	},
	{
		text = "Phone Call 2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_162")
	},
	{
		text = "Phone Call 3", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_163")
	},
	{
		text = "Phone Call 4", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_164")
	},
	{
		text = "Phone Call 5", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_165")
	},
	{
		text = "Phone Call 6", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_166")
	},
	{
		text = "Phone Call 7", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_167")
	},
	{
		text = "The code is...", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_123")
	},
	{
		text = "0", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_124")
	},
	{
		text = "1", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_125")
	},
	{
		text = "2", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_126")
	},
	{
		text = "3", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_127")
	},
	{
		text = "4", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_128")
	},
	{
		text = "5", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_129")
	},
	{
		text = "6", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_130")
	},
	{
		text = "7", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_131")
	},
	{
		text = "8", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_132")
	},
	{
		text = "9", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ca1_133")
	},
	
}
VoiceCommandsMod.menus2.counterfeit = {
	{
		text = "Mitchell:\nReal Ass-state", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_pal_03")
	},
	{
		text = "King Stories", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_pal_04")
	},
	{
		text = "Get down in the basement!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_pal_08")
	},
	{
		text = "Okay, you got me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_mch_pal_11")
	},
	{
		text = "Girl:\nGet this party started", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bqg_pal_03")
	},
	{
		text = "Are those steaks done", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bqg_pal_04")
	},
	{
		text = "You should get us some weed", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_bkn_pal_03")
	},
	{
		text = "Please don't shoot me!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pwn_pal_01")
	},
}

VoiceCommandsMod.menus.midlandranch = {
	{
		text = "Gemma:\nPick it up, yall!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gem_ranc_06")
	},
	{
		text = "Property damage", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gem_ranc_07")
	},
	{
		text = "Locke:\nGet to an access point!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_19")
	},
	{
		text = "Wrong wire!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_28")
	},
	{
		text = "You tripped something!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_33")
	},
	{
		text = "They know we're here!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_44")
	},
	{
		text = "Water tower destruction", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_59")
	},
	{
		text = "Where'd this chop learn to fly?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_ranc_72")
	},
}

VoiceCommandsMod.menus.lostintransit = {
	{
		text = "Locke:\nUnscheduled departure", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_27")
	},
	{
		text = "Let me back in", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_04")
	},
	{
		text = "Another RFID box\n(Stealth)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_23")
	},
	{
		text = "Another RFID box\n(Loud)", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_61")
	},
	{
		text = "Time to go", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_77")
	},
	{
		text = "Ready, set, boom!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_loc_trai_49A")
	},
	{
		text = "Upset Civilian", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_civ_trai_01")
	},
	{
		text = "Gemma:\nReaction to Locke", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_gem_trai_04")
	},
}


VoiceCommandsMod.predefined1 = {
	["Black Cat"] = VoiceCommandsMod.menus.blackcat,
	["Mountain Master"] = VoiceCommandsMod.menus.mountainmaster,

	["Overpass Escape"] = VoiceCommandsMod.menus.escapeoverpass,
	["Park Escape"] = VoiceCommandsMod.menus.escapepark,
	["Street Escape"] = VoiceCommandsMod.menus.escapestreet,
	["Cafe Escape"] = VoiceCommandsMod.menus.escapecafegarage,
	["Garage Escape"] = VoiceCommandsMod.menus.escapecafegarage,
	["Holdout"] = VoiceCommandsMod.menus.holdout,
	
	["Bank Heist: Deposit"] = VoiceCommandsMod.menus.branchbank,
	["Bank Heist: Cash"] = VoiceCommandsMod.menus.branchbank,
	["Bank Heist: Gold"] = VoiceCommandsMod.menus.branchbank,
	["Bank Heist: Random"] = VoiceCommandsMod.menus.branchbank,
	["Jewelry Store"] = VoiceCommandsMod.menus.jewelrystore,
	["Safe House Raid"] = VoiceCommandsMod.menus.safehouseraid,
	["Cook Off"] = VoiceCommandsMod.menus.rats1,
	["Diamond Store"] = VoiceCommandsMod.menus.diamondstore,
	["Art Gallery"] = VoiceCommandsMod.menus.artgallery,
	["Car Shop"] = VoiceCommandsMod.menus.carshop,
	["GO Bank"] = VoiceCommandsMod.menus.gobank,
	["Shadow Raid"] = VoiceCommandsMod.menus.shadowraidmeltdown,
	["The Alesso Heist"] = VoiceCommandsMod.menus.alesso,
	["Transport: Crossroads"] = VoiceCommandsMod.menus.transport,
	["Transport: Downtown"] = VoiceCommandsMod.menus.transport,
	["Transport: Harbor"] = VoiceCommandsMod.menus.transport,
	["Transport: Park"] = VoiceCommandsMod.menus.transport,
	["Transport: Underpass"] = VoiceCommandsMod.menus.transport,
	["Transport: Train Heist"] = VoiceCommandsMod.menus.trainheist,
	["Reservoir Dogs Heist"] = VoiceCommandsMod.menus.reservoirdogs1,
	["Highland Mortuary"] = VoiceCommandsMod.menus.reservoirdogs1,
	["Garnet Group Boutique"] = VoiceCommandsMod.menus.reservoirdogs2,
	
	["Green Bridge"] = VoiceCommandsMod.menus.greenbridge,
	["No Mercy"] = VoiceCommandsMod.menus.nomercy,
	["Undercover"] = VoiceCommandsMod.menus.undercover,
	["Heat Street"] = VoiceCommandsMod.menus.heatstreet,
	["Panic Room"] = VoiceCommandsMod.menus.panicroom,
	["Slaughterhouse"] = VoiceCommandsMod.menus.slaughterhouse,
	["Diamond Heist"] = VoiceCommandsMod.menus.diamondheist,
	["First World Bank"] = VoiceCommandsMod.menus.firstworldbank,
	["Counterfeit"] = VoiceCommandsMod.menus.counterfeit,
	
	["Cursed Kill Room"] = VoiceCommandsMod.menus.cursedkillroom,
	["Safe house Nightmare"] = VoiceCommandsMod.menus.laundromatsafehouse,
	["Prison Nightmare"] = VoiceCommandsMod.menus.prisonnightmare,
	["Lab Rats"] = VoiceCommandsMod.menus.labrats,
	
	["Rats"] = VoiceCommandsMod.menus.rats1,
	["Code for Meth"] = VoiceCommandsMod.menus.rats2,
	["Bus Stop"] = VoiceCommandsMod.menus.rats3,
	["Firestarter"] = VoiceCommandsMod.menus.firestarter1,
	["Airport"] = VoiceCommandsMod.menus.firestarter1,
	["FBI Server"] = VoiceCommandsMod.menus.firestarter2,
	["Trustee Bank"] = VoiceCommandsMod.menus.branchbank, --Firestarter 3
	["Watchdogs"] = VoiceCommandsMod.menus.watchdogs1,
	["Truck Load"] = VoiceCommandsMod.menus.watchdogs1,
	["Boat Load"] = VoiceCommandsMod.menus.watchdogs2,
	
	["Boiling Point"] = VoiceCommandsMod.menus.boilingpoint,
	["Murky Station"] = VoiceCommandsMod.menus.murkystation,
	
	["Dragon Heist"] = VoiceCommandsMod.menus.dragonheist,
	["The Ukrainian Prisoner"] = VoiceCommandsMod.menus.theukrainianprisoner,
	
	["Alaskan Deal"] = VoiceCommandsMod.menus.alaskandeal,
	["The White House"] = VoiceCommandsMod.menus.thewhitehouse,
	["Henry's Rock"] = VoiceCommandsMod.menus.henrysrock,
	["Hell's Island"] = VoiceCommandsMod.menus.hellsisland,
	["Brooklyn Bank"] = VoiceCommandsMod.menus.brooklynbank,
	["Breakin' Feds"] = VoiceCommandsMod.menus.breakinfeds,
	["Shacklethorne Auction"] = VoiceCommandsMod.menus.shacklethorneauction,
	["Beneath the Mountain"] = VoiceCommandsMod.menus.beneaththemountain,
	["Birth of Sky"] = VoiceCommandsMod.menus.birthofsky,
	["Breakfast in Tijuana"] = VoiceCommandsMod.menus.breakfastintijuana,
	["Border Crossing"] = VoiceCommandsMod.menus.bordercrossing,
	["Border Crystals"] = VoiceCommandsMod.menus.bordercrossing,
	
	["The Bomb: Forest"] = VoiceCommandsMod.menus.thebombforest,
	["The Bomb: Dockyard"] = VoiceCommandsMod.menus.thebombdockyard,
	["Scarface Mansion"] = VoiceCommandsMod.menus.scarfacemansion,
	
	["Brooklyn 10-10"] = VoiceCommandsMod.menus.brooklyn1010,
	["The Yacht Heist"] = VoiceCommandsMod.menus.theyachtheist,
	
	["Hotline Miami"] = VoiceCommandsMod.menus.hotlinemiami1,
	["Four Floors"] = VoiceCommandsMod.menus.hotlinemiami2,
	["The Big Bank"] = VoiceCommandsMod.menus.thebigbank,
	["The Diamond"] = VoiceCommandsMod.menus.thediamond,
	["Hoxton Revenge"] = VoiceCommandsMod.menus.hoxtonrevenge,
	["Hoxton Breakout"] = VoiceCommandsMod.menus.hoxtonbreakout1,
	["The Breakout"] = VoiceCommandsMod.menus.hoxtonbreakout1,
	["The Search"] = VoiceCommandsMod.menus.hoxtonbreakout2,
	["Golden Grin Casino"] = VoiceCommandsMod.menus.goldengrincasino,
	
	["Framing Frame"] = VoiceCommandsMod.menus.artgallery,
	["Train Trade"] = VoiceCommandsMod.menus.framingframe2,
	["Framing"] = VoiceCommandsMod.menus.framingframe3,
	["Election Day"] = VoiceCommandsMod.menus.electionday1,
	["Right Track"] = VoiceCommandsMod.menus.electionday1,
	["Swing Vote"] = VoiceCommandsMod.menus.electionday2,
	["Breaking Ballot"] = VoiceCommandsMod.menus.electionday3,
	["Big Oil"] = VoiceCommandsMod.menus.bigoil1,
	["Club House"] = VoiceCommandsMod.menus.bigoil1,
	["Engine Problem"] = VoiceCommandsMod.menus.bigoil2,
	["The Biker Heist"] = VoiceCommandsMod.menus.bikerheist1,
	["Lion's Den"] = VoiceCommandsMod.menus.bikerheist1,
	["Interception"] = VoiceCommandsMod.menus.bikerheist2,
	
	["Meltdown"] = VoiceCommandsMod.menus.shadowraidmeltdown,
	["Ukrainian Job"] = VoiceCommandsMod.menus.jewelrystore,
	["Santa's Workshop"] = VoiceCommandsMod.menus.santasworkshop,
	["White Xmas"] = VoiceCommandsMod.menus.whitexmas,
	["Nightclub"] = VoiceCommandsMod.menus.nightclub,
	["Mallcrasher"] = VoiceCommandsMod.menus.mallcrasher,
	["Goat Simulator"] = VoiceCommandsMod.menus.goatsim1,
	["Dirty work"] = VoiceCommandsMod.menus.goatsim2,
	["Four Stores"] = VoiceCommandsMod.menus.fourstores,
	["San Martín Bank"] = VoiceCommandsMod.menus.sanmartinbank,
	["Buluc's Mansion"] = VoiceCommandsMod.menus.bulucsmansion,
	["Aftershock"] = VoiceCommandsMod.menus.aftershock,
	["Stealing Xmas"] = VoiceCommandsMod.menus.stealingxmas,
	["Midland Ranch"] = VoiceCommandsMod.menus.midlandranch,
	["Lost in Transit"] = VoiceCommandsMod.menus.lostintransit,
}

local twitch = VoiceCommandsMod.menus2.twitch;
local bile = VoiceCommandsMod.menus2.bile;
local boat = VoiceCommandsMod.menus2.boat;
local ilija = VoiceCommandsMod.menus2.ilija;

VoiceCommandsMod.predefined2 = {
	["Cafe Escape"] = twitch,
	["Garage Escape"] = twitch,
	["Overpass Escape"] = { bile, twitch },
	["Park Escape"] = twitch,
	["Street Escape"] = { bile, twitch },
	
	["Cook Off"] = {twitch, bile},
	["Transport: Crossroads"] = twitch,
	["Transport: Downtown"] = {bile, twitch},
	["Transport: Harbor"] = {boat, twitch},
	["Transport: Park"] = twitch,
	["Transport: Underpass"] = twitch,
	["Transport: Train Heist"] = {bile, twitch},
	["GO Bank"] = VoiceCommandsMod.menus2.gobank,
	["The Alesso Heist"] = VoiceCommandsMod.menus2.alesso, --also bile but let's let the pyro guy steal the show
	["Reservoir Dogs Heist"] = twitch,
	["Garnet Group Boutique"] = bile,

	["Counterfeit"] = {VoiceCommandsMod.menus2.counterfeit, bile}, 
	["Diamond Heist"] = bile,
	["No Mercy"] = VoiceCommandsMod.menus2.nomercy,
	["Panic Room"] = {VoiceCommandsMod.menus2.panicroombile, boat}, --yes, boat. idk maybe he drives the truck
	["Undercover"] = VoiceCommandsMod.menus2.undercover,
	["Heat Street"] = VoiceCommandsMod.menus2.heatstreet,
	["Diamond Heist"] = VoiceCommandsMod.menus2.diamondheist,
	["First World Bank"] = VoiceCommandsMod.menus2.firstworldbank,

	["The Ukrainian Prisoner"] = VoiceCommandsMod.menus2.theukrainianprisoner,

	["Border Crossing"] = ilija,
	["Border Crystals"] = ilija,
	["Brooklyn Bank"] = twitch,
	["Henry's Rock"] = twitch, --sure why not
	["Shacklethorne Auction"] = bile,
	["The White House"] = { VoiceCommandsMod.menus2.thewhitehouse },
	["Breakin' Feds"] = { VoiceCommandsMod.menus2.breakinfeds, twitch },
	
	["The Bomb: Dockyard"] = {bile, ilija},
	["The Bomb: Forest"] = {bile, ilija},
	["Scarface Mansion"] = VoiceCommandsMod.menus2.scarfacemansion,
	
	["Rats"] = twitch,
	["Bus Stop"] = bile,
	["Watchdogs"] = {twitch, bile},
	["Boat Load"] = {VoiceCommandsMod.menus2.watchdogs2, ilija}, --also bile even though he isn't the pilot (maybe from day 1 escape?)
	
	["Golden Grin Casino"] = {VoiceCommandsMod.menus2.goldengrincasino}, --also bile and ilija
	["Hotline Miami"] = {bile, ilija}, --also twitch but 3 menus is ridiculous... and he's not even used
	["Hoxton Breakout"] = VoiceCommandsMod.menus2.hoxtonbreakout,
	["Hoxton Revenge"] = bile,
	["The Diamond"] = bile,

	["Engine Problem"] = bile,
	["The Biker Heist"] = ilija,
	["Train Trade"] = ilija,
	
	["Buluc's Mansion"] = {VoiceCommandsMod.menus2.bulucsmansion, bile},
	["Four Stores"] = twitch,
	["Mallcrasher"] = {bile, twitch},
	["Nightclub"] = twitch,
	["San Martín Bank"] = {bile, ilija},
	["Santa's Workshop"] = boat,
	["Stealing Xmas"] = bile,
	["Dirty work"] = twitch,
	
	["Midland Ranch"] = ilija,
	["Lost in Transit"] = ilija,
	
}
