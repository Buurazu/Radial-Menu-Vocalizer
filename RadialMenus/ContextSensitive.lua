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
	["Breaking Ballot"] = "e_electionday_stage3",
	["Framing Frame"] = "e_framing_stage1",
	["Train Trade"] = {"e_framing_stage2"},
	["Framing"] = "e_framing_stage3",
	["Art Gallery"] = "e_framing_stage1",
	["Boiling Point"] = "e_mad_stage1",
	["Overpass Escape"] = "esc_overpass",--where's garage or the other one?
	["Park Escape"] = "esc_park",
	["Street Escape"] = "esc_street",
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
	["Trustee Bank"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
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
	["Ukrainian Job"] = "jewel_a",
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
	["The White House"] = { "l_vit_stage1"},-- "uno_stage1" },
	["Alaskan Deal"] = "l_wwh_stage1",
	["Safe house Nightmare"] = "safe_house",
	["Safe House Raid"] = "safehouse_raid",
	["Holdout"] = "skirmish",
	["Santa's Workshop"] = "v_cane_stage1",
	["Four Stores"] = "v_fourstores_stage1",
	["Aftershock"] = "v_jolly_stage1",
	["Mallcrasher"] = "v_mallcrash_stage1",
	["Stealing Xmas"] = "v_moon_stage1",
	["Nightclub"] = "v_nightclub1_stage1",
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
		text = "We're leaving", stay_open = false, show_text = true,
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

local electionday1 = {
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
		text = "Let's Change the Change", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_ed2_99")
	}
}
local electionday3 = {
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
		text = "I gotta leave!", stay_open = false, show_text = true,
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
local santasworkshop = {
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
local whitexmas = {
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
local alaskandeal = {
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
local watchdogs1 = {
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
local watchdogs2 = {
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
local firestarter1 = {
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
local firestarter2 = {
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
local boilingpoint = {
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
local murkystation = {
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
local thewhitehouse = {
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
local nightclub = {
	{
		text = "Escape will be in an alley nearby", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_11")
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
		text = "Get that safe open", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_nightclub_stage1_09")
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
local fourstores = {
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
local mallcrasher = {
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

local thebigbank = {
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

local goatsim1 = {
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
local goatsim2 = {
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
local sanmartinbank = {
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
local bulucsmansion = {
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

local escapeoverpass = {
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
local escapepark = {
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
local escapestreet = {
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

local aftershock = {
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
local stealingxmas = {
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
local greenbridge = {
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
local bikerheist1 = {
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
local bikerheist2 = {
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
local nomercy = {
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
local thediamond = {
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

local holdout = {
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

local framingframe2 = {
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
local framingframe3 = {
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

local undercover = {
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
local heatstreet = {
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
local panicroom = {
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
local slaughterhouse = {
	{
		text = "Get outta there!", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_pln_dn1_48")
	},
}

--fwb girl: so far so good
--counterfeit Play_pln_pal_80 phone call

local predefined = {
	["Overpass Escape"] = escapeoverpass,
	["Park Escape"] = escapepark,
	["Street Escape"] = escapestreet,
	["Holdout"] = holdout,
	
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
	
	["Green Bridge"] = greenbridge,
	["No Mercy"] = nomercy,
	["Undercover"] = undercover,
	["Heat Street"] = heatstreet,
	["Panic Room"] = panicroom,
	--still need Slaughterhouse, Counterfeit, Diamond Heist, First World Bank
	
	["Cursed Kill Room"] = cursedkillroom,
	["Safe house Nightmare"] = laundromatsafehouse,
	["Prison Nightmare"] = prisonnightmare,
	["Lab Rats"] = labrats,
	
	["Rats"] = rats1,
	["Code for Meth"] = rats2,
	["Bus Stop"] = rats3,
	["Firestarter"] = firestarter1,
	["FBI Server"] = firestarter2,
	["Trustee Bank"] = branchbank, --Firestarter 3
	["Watchdogs"] = watchdogs1,
	["Boat Load"] = watchdogs2,
	
	["Boiling Point"] = boilingpoint,
	["Murky Station"] = murkystation,
	
	--jiu feng go here
	
	--locke go here
	["Alaskan Deal"] = alaskandeal,
	["The White House"] = thewhitehouse,
	--Still need a lot
	
	--butcher
	
	--continental
	
	["Hotline Miami"] = hotlinemiami1,
	["Four Floors"] = hotlinemiami2,
	["The Big Bank"] = thebigbank,
	["The Diamond"] = thediamond,
	--Still need Golden Grin Casino, Hoxton Breakout, Hoxton Revenge
	
	["Framing Frame"] = artgallery,
	["Train Trade"] = framingframe2,
	["Framing"] = framingframe3,
	["Election Day"] = electionday1,
	["Swing Vote"] = electionday2,
	["Breaking Ballot"] = electionday3,
	["Big Oil"] = bigoil1,
	["Engine Problem"] = bigoil2,
	["The Biker Heist"] = bikerheist1,
	["Interception"] = bikerheist2,
	
	["Meltdown"] = shadowraidmeltdown,
	["Ukrainian Job"] = jewelrystore,
	["Santa's Workshop"] = santasworkshop,
	["White Xmas"] = whitexmas,
	["Nightclub"] = nightclub,
	["Mallcrasher"] = mallcrasher,
	["Goat Simulator"] = goatsim1,
	["Dirty work"] = goatsim2,
	["Four Stores"] = fourstores,
	["San Martín Bank"] = sanmartinbank,
	["Buluc's Mansion"] = bulucsmansion,
	["Aftershock"] = aftershock,
	["Stealing Xmas"] = stealingxmas,
}
	
	local job_name = managers.localization:text(tweak_data.narrative.jobs[managers.job:current_real_job_id()].name_id)
	local job_day = managers.job:current_stage()
	if (job_day > 1) then job_name = job_name .. " " .. job_day end
	
	--this should work well for all Day 1 Crime Spree missions
	if (managers.crime_spree:is_active()) then
		job_name = managers.localization:text(managers.crime_spree:get_narrative_tweak_data_for_mission_level(managers.crime_spree:current_mission()).name_id)
	end
	
	--check for Day 2 or Day 3 names (this method works for Day 2+ Crime Sprees and Election Day)
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
				stay_open = false, 	show_text = true
			}
		}
	end
	
	--keep the old keybind ID
	MyModGlobal:Refresh(my_items,"SFX: The Thermal Drill")
