	my_items = {}

--List of heist names and the dialog bank they're associated with (not needed when custom menus are complete)
--[[
local dialog_conversion = {
	["Cafe Escape"] = { "generic"},
	--accomplice_boat, driver_1, driver_2, heli_1, sniper
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
	--b_short_stage1_1, b_short_stage1_2, b_short_stage2_1, b_short_stage2_2; tutorials
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
	["Overpass Escape"] = "esc_overpass",
	["Park Escape"] = "esc_park",
	["Street Escape"] = "esc_street",
	--forest_a?
	["Scarface Mansion"] = "friend_stage1",
	["The Big Bank"] = "g_bigbank_stage1",
	["The Diamond"] = "g_diamond_stage1",
	["Hotline Miami"] = {"g_hotline_stage1"},
	["Four Floors"] = {"g_hotline_stage2", "h_firestarter_stage3" }, --thermal drill
	["Hoxton Breakout"] = {"g_hoxton_stage1"},
	["The Search"] = "g_hoxton_stage2",
	["Hoxton Revenge"] = "g_hoxton_stage3",
	["Golden Grin Casino"] = {"g_kenaz_stage1"},
	--generic
	["Firestarter"] = "h_firestarter_stage1",
	["FBI Server"] = "h_firestarter_stage2",
	["Trustee Bank"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Deposit"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Cash"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Gold"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	["Bank Heist: Random"] = {"h_firestarter_stage3", "misc_sidejobs_doghaters" },
	--h_greattrain_stage1 through stage3; unused
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
	--legacy, narrator, planner_generic
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
]]
local dialog_conversion = {}

local predefined = VoiceCommandsMod.predefined1

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
