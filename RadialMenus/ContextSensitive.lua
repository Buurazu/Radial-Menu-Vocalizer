	my_items = {}

--List of heist names and the dialog bank they're associated with
local dialog_conversion = {
	["Car Shop"] = "b_carshop_stage1",
	["GO Bank"] = "b_csbank_stage1",
	["Diamond Heist"] = "b_dah_stage1",
	["Slaughterhouse"] = "b_dinner_stage1",
	["Diamond Store"] = "b_familyjewels_stage1",
	["Panic Room"] = "b_flat_stage1",
	["Green Bridge"] = "b_glace_stage1",
	["Prison Nightmare"] = "b_help_stage1",
	["Shadow Raid"] = "b_kosugi_stage1",
	["Meltdown"] = "b_kosugi_stage1",
	["Undercover"] = "b_man_stage1",
	["Lab Rats"] = { "b_nails_stage1", "h_rat_stage1" },
	["No Mercy"] = "b_nmh_stage1",
	["Counterfeit"] = "b_pal_stage1",
	["First World Bank"] = "b_red_stage1",
	["Heat Street"] = "b_run_stage1",
	--b_short_stage1 and 2; tutorials
	["Transport: Train Heist"] = { "b_train_stage1" },
	["Transport: Harbor"] = {"b_transport_stage1"},
	["Transport: Crossroads"] = "b_transport_stage1",
	["Transport: Park"] = "b_transport_stage1",
	["Transport: Downtown"] = {"b_transport_stage1"},
	["Transport: Underpass"] = "b_transport_stage1",
	["The Yacht Heist"] = "c_fish_stage1",
	["Brooklyn 10-10"] = "c_spa_stage1",
	--crojob_stage1 with only 3 audio?
	["The Bomb: Dockyard"] = {"crojob_stage2"},
	["The Bomb: Forest"] = {"crojob_stage3"},
	--docks_a?
	["The Alesso Heist"] = { "e_alesso_stage1" },
	["Big Oil"] = {"e_bigoil_stage1"},
	["Engine Problem"] = "e_bigoil_stage2",
	["The Biker Heist"] = {"e_born_stage1"},
	["Interception"] = "e_chew_stage1",
	["Murky Station"] = "e_drk_stage1",
	["Election Day"] = "e_electionday_stage1",
	["Swing Vote"] = "e_electionday_stage2",
	["Breaking Ballot"] = "e_electionday_stage3", --does it work???
	["Framing Frame"] = "e_framing_stage1",
	["Train Trade"] = {"e_framing_stage2"},
	["Framing"] = "e_framing_stage3",
	["Art Gallery"] = "e_framing_stage1",
	["Boiling Point"] = "e_mad_stage1",
	["Escape: Overpass"] = "esc_overpass",--where's garage or the other one?
	["Escape: Park"] = "esc_park",
	["Escape: Street"] = "esc_street",
	--forest_a?
	["Scarface Mansion"] = "friend_stage1",
	["The Big Bank"] = "g_bigbank_stage1",
	["The Diamond"] = "g_diamond_stage1",
	["Hotline Miami"] = {"g_hotline_stage1"},
	["Four Floors"] = {"g_hotline_stage2", "h_firestarter_stage3" }, --thermal drill alert
	["Hoxton Breakout"] = {"g_hoxton_stage1"},
	["The Search"] = "g_hoxton_stage2",
	["Hoxton Revenge"] = "g_hoxton_stage3",
	["Golden Grin Casino"] = {"g_kenaz_stage1"},
	["Firestarter"] = "h_firestarter_stage1",
	["FBI Server"] = "h_firestarter_stage2",
	["Trustee Bank"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },--also branch bank?
	["Bank Heist: Deposit"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Cash"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Gold"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Random"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	--h_greattrain unused
	["Rats"] = "h_rat_stage1",
	["Cook Off"] = "h_rat_stage1",
	["Code for Meth"] = "h_rat_stage2",
	["Bus Stop"] = "h_rat_stage3",
	["Watchdogs"] = {"h_watchdogs_stage1"},
	["Boat Load"] = {"h_watchdogs_stage2"},
	["Cursed Kill Room"] = "halloween17_stage1",
	["Ukrainian Job"] = "jewel_a", --also jewelry store
	["Jewelry Store"] = "jewel_a",
	["San Martín Bank"] = {"l_bex_stage1"},
	["Hell's Island"] = "l_bph_stage1",
	["Brooklyn Bank"] = "l_brb_stage1",
	["Dragon Heist"] = "l_chas_stage1",
	["Henry's Rock"] = "l_des_stage1",
	["Buluc's Mansion"] = "l_fex_stage1",
	["Beneath the Mountain"] = "l_jerry_stage1",
	["Birth of Sky"] = "l_jerry_stage2",
	["Border Crystals"] = {"l_mex_stage1", "l_mex_cook"},
	["Border Crossing"] = {"l_mex_stage1","l_mex_cook"},
	["Breakfast in Tijuana"] = "l_pex_stage1",
	["Reservoir Dogs Heist"] = "l_rvd_wrh_stage1",
	["Garnet Group Boutique"] = "l_rvd_jwl_stage1",
	["Shacklethorne Auction"] = "l_sah_stage1",
	["The Ukrainian Prisoner"] = "l_sand_stage1",
	["Breakin' Feds"] = "l_tag_stage1",
	["The White House"] = { "l_vit_stage1", "uno_stage1" },
	["Alaskan Deal"] = "l_wwh_stage1",
	["Safe house Nightmare"] = "safe_house",
	["Safe House Raid"] = "safehouse_raid",
	["Holdout"] = "skirmish",
	--skirmish (holdout)
	["Santa's Workshop"] = "v_cane_stage1",
	["Four Stores"] = "v_fourstores_stage1",
	["Aftershock"] = "v_jolly_stage1",
	["Mallcrasher"] = "v_mallcrasher_stage1",
	["Stealing Xmas"] = "v_moon_stage1",
	["Nightclub"] = "v_nightclub_stage1",
	["Goat Simulator"] = "v_peta_stage1",
	["Dirty work"] = "v_peta_stage2",
	["White Xmas"] = "v_pines_stage1"
}

local branchbank = {
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
local jewelrystore = {
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
		text = "Driver: We're leaving", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_drv_ukranian_stage1_06")
	}
}
local safehouseraid = {
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
local electionday2 = {
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
		text = "Change the change", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_99")
	}
}
local rats1 = {
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
local rats2 = {
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
local rats3 = {
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
		text = "Pilot: I gotta leave!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_plt_rat_stage3_16")
	},
}

local diamondstore = {
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
local artgallery = {
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
local carshop = {
	{
		text = "Get the car keys!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_19")
	},
	{
		text = "Drive! Go go go!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ch1_31")
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
local gobank = {
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
local shadowraidmeltdown = {
	{
		text = "We're done! Now bail!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1b_18")
	},
	{
		text = "Vlad: The vault!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_02")
	},
	{
		text = "Vlad: Doing okay?", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_05")
	},
	{
		text = "Vault's open!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ko1b_11")
	},
	{
		text = "Vlad wants a word", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_vld_ko1b_01")
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
}
local alesso = {
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
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pyr_al1_49")
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
local transport = {
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
local trainheist = {
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
local reservoirdogs1 = {
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
local reservoirdogs2 = {
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
local cursedkillroom = {}
local laundromatsafehouse = {
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
local labrats = {
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
local prisonnightmare = {
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
local bigoil1 = {
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
local bigoil2 = {
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
local hotlinemiami1 = {
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
local hotlinemiami2 = {
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

--counterfeit Play_pln_pal_80 phone call

--make sure hotline miami 2's has thermal drill, check if it has all branch bank
--is this way of doing this broken in things like Crime Spree? Probably
--Do a different method for Days 2 and 3s
local predefined = {
	["Bank Heist: Deposit"] = branchbank,
	["Bank Heist: Cash"] = branchbank,
	["Bank Heist: Gold"] = branchbank,
	["Bank Heist: Random"] = branchbank,
	["Jewelry Store"] = jewelrystore,
	["Safe House Raid"] = safehouseraid,
	["Cook Off"] = rats1,
	["Diamond Store"] = diamondstore,
	["Art Gallery"] = artgallery,
	["Car Shop"] = carshop,
	["GO Bank"] = gobank,
	["Shadow Raid"] = shadowraidmeltdown,
	["The Alesso Heist"] = alesso,
	["Transport: Crossroads"] = transport,
	["Transport: Downtown"] = transport,
	["Transport: Harbor"] = transport,
	["Transport: Park"] = transport,
	["Transport: Underpass"] = transport,
	["Transport: Train Heist"] = trainheist,
	["Reservoir Dogs Heist"] = reservoirdogs1,
	["Garnet Group Boutique"] = reservoirdogs2,
	
	--classics go here
	
	["Cursed Kill Room"] = cursedkillroom,
	["Safe house Nightmare"] = laundromatsafehouse,
	["Prison Nightmare"] = prisonnightmare,
	["Lab Rats"] = labrats,
	
	["Rats"] = rats1,
	["Code for Meth"] = rats2,
	["Bus Stop"] = rats3,
	["Trustee Bank"] = branchbank, --Firestarter 3
	
	["Hotline Miami"] = hotlinemiami1,
	["Four Floors"] = hotlinemiami2,
	
	["Framing Frame"] = artgallery,
	["Swing Vote"] = electionday2,
	["Big Oil"] = bigoil1,
	["Engine Problem"] = bigoil2,
	
	["Meltdown"] = shadowraidmeltdown,
	["Ukrainian Job"] = jewelrystore,
}
	
	local job_name = managers.localization:text(tweak_data.narrative.jobs[managers.job:current_real_job_id()].name_id)
	local job_day = managers.job:current_stage()
	if (job_day > 1) then job_name = job_name .. " " .. job_day end
	
	--check for Day 2 or Day 3 mission names (this method works for Crime Spree and Election Day)
	local stage_data = managers.job:current_stage_data()
	local level_data = managers.job:current_level_data()
	local name_id = stage_data.name_id or level_data.name_id
	local day_name = managers.localization:text(name_id)
	if (predefined[day_name] or dialog_conversion[day_name]) then job_name = day_name end
	
	if (managers.skirmish:is_skirmish()) then job_name = "Holdout" end
	
	if (predefined[job_name]) then my_items = predefined[job_name]
	elseif (dialog_conversion[job_name]) then
		local dialogs = dialog_conversion[job_name]
		if (type(dialogs) ~= "table") then dialogs = { dialogs } end
		for _, d in ipairs(dialogs) do
			for _, s in ipairs(VoiceCommandsMod.dialogs[d]) do
				table.insert(my_items, 
				{ text = s, stay_open = false, show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line",s)
				})
			end
		end
	end
	
	if (#my_items == 0) then
		my_items = {
			{
				text = "No sounds found for\n" .. job_name,
				stay_open = false, 	show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","thisissosad")
			}
		}
	end
	
	--keep the old keybind ID
	MyModGlobal:Refresh(my_items,"SFX: The Thermal Drill")
