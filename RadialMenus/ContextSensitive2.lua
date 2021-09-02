	my_items = {}

local boat = {
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
local twitch = {
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
local bile = {
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
local ilija = {
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

local gobank = {
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
local alesso = {
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
local watchdogs2 = {
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

local heisters = { "Dallas", "Chains", "Wolf", "Hoxton", "Houston", "Wick", "Clover", "Dragan", "Jacket", "Bonnie", "Sokol", "Jiro",
				"Bodhi", "Jimmy", "Sydney", "Rust", "Scarface", "Sangres", "Joy", "Ethan", "Hila", "Duke" }
local thewhitehouse = {
	{
		text = "Death", stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_uno_09")
	}
}
for _, h in ipairs(heisters) do
	table.insert(thewhitehouse,
	{
		text = h, stay_open = false, show_text = true,
		callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","Play_dnt_uno_01_" .. h)
	})
end

local bulucsmansion = {
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
local nomercy = {
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
local undercover = {
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
local heatstreet = {
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
local panicroombile = {
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

local predefined = {
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
	["GO Bank"] = gobank,
	["The Alesso Heist"] = alesso, --also bile but let's let the pyro guy steal the show
	["Reservoir Dogs Heist"] = twitch,
	["Garnet Group Boutique"] = bile,

	["Counterfeit"] = bile, 
	["Diamond Heist"] = bile,
	["No Mercy"] = nomercy,
	["Panic Room"] = {panicroombile, boat}, --yes, boat. idk maybe he drives the truck
	["Undercover"] = undercover,
	["Heat Street"] = heatstreet,

	["Border Crossing"] = ilija,
	["Border Crystals"] = ilija,
	["Breakin' Feds"] = twitch,
	["Brooklyn Bank"] = twitch,
	["Henry's Rock"] = twitch, --sure why not
	["Shacklethorne Auction"] = bile,
	["The White House"] = { thewhitehouse },
	
	["The Bomb: Dockyard"] = {bile, ilija},
	["The Bomb: Forest"] = {bile, ilija},
	--Scarface Mansion: Custom Bile lines / boss guy?
	
	["Rats"] = twitch,
	["Bus Stop"] = bile,
	["Watchdogs"] = {twitch, bile},
	["Boat Load"] = {watchdogs2, ilija}, --also bile even though he isn't the pilot (maybe from day 1 escape?)
	
	["Golden Grin Casino"] = {bile, ilija},
	["Hotline Miami"] = {bile, ilija}, --also twitch but 3 menus is ridiculous... and he's not even used
	--Hoxton Breakout: do a Twitch + Hoxton menu?
	["Hoxton Revenge"] = bile,
	["The Diamond"] = bile,

	["Engine Problem"] = bile,
	["The Biker Heist"] = ilija,
	["Train Trade"] = ilija,
	
	["Buluc's Mansion"] = {bulucsmansion, bile},
	["Four Stores"] = twitch,
	["Mallcrasher"] = {bile, twitch},
	["Nightclub"] = twitch,
	["San Martín Bank"] = {bile, ilija},
	["Santa's Workshop"] = boat,
	["Stealing Xmas"] = bile,
	["Dirty work"] = twitch,
	
}
	function extend(t1, t2)
		return table.move(t2, 1, #t2, #t1 + 1, t1)
	end
	
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
	if (predefined[day_name]) then job_name = day_name end
	
	if (managers.skirmish:is_skirmish()) then job_name = "Holdout" end
	
	if (predefined[job_name]) then
		--predefined[job_name] is a curated wheel
		if (#predefined[job_name] >= 8) then extend(my_items, predefined[job_name])
		else
			--multiple accomplices
			for _, a in ipairs(predefined[job_name]) do
				extend(my_items, a)
			end
		end
	--if we don't have predefined, fill it with all accomplices, for testing purposes
	--testing is complete
	--[[
	else
		extend(my_items, boat)
		extend(my_items, twitch)
		extend(my_items, bile)
		extend(my_items, ilija)]]
	end

	if (#my_items == 0) then
		my_items = {
			{
				text = "No secondary menu found for\n" .. job_name,
				stay_open = false, 	show_text = true
			}
		}
	end
	
	--keep the old keybind ID
	MyModGlobal:Refresh(my_items,"SFX: Bile Death")
