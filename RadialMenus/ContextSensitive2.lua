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


local predefined = {
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
	--No Mercy: Nurse
	["Panic Room"] = {boat, bile}, --yes, boat. idk maybe he drives the truck
	--Undercover: Taxman / Like a Glove?

	["Border Crossing"] = ilija,
	["Border Crystals"] = ilija,
	["Breakin' Feds"] = twitch,
	["Brooklyn Bank"] = twitch,
	["Henry's Rock"] = twitch, --sure why not
	["Shacklethorne Auction"] = bile,
	--The White House: Secret sfx
	
	["The Bomb: Dockyard"] = {bile, ilija},
	["The Bomb: Forest"] = {bile, ilija},
	--Scarface Mansion: Custom Bile lines / boss guy?
	
	["Rats"] = twitch,
	["Bus Stop"] = bile,
	["Watchdogs"] = {twitch, bile},
	["Boat Load"] = {ilija, bile}, --surprisingly no boat, his lines are in the watchdogs file
	--HOWEVER I should make a Watchdogs 2 boat wheel instead of bile
	
	["Golden Grin Casino"] = {bile, ilija},
	["Hotline Miami"] = {bile, ilija}, --also twitch but 3 menus is ridiculous... and he's not even used
	--Hoxton Breakout: do a Twitch + Hoxton menu?
	["Hoxton Revenge"] = bile,
	["The Diamond"] = bile,

	["Engine Problem"] = bile,
	["The Biker Heist"] = ilija,
	["Train Trade"] = ilija,
	
	["Buluc's Mansion"] = bile,
	["Four Stores"] = twitch,
	["Mallcrasher"] = {bile, twitch},
	["Nightclub"] = twitch,
	["San Martín Bank"] = {bile, ilija},
	["Santa's Workshop"] = boat,
	["Stealing Xmas"] = bile,
	--Goat Sim 2: Pilot? Boris?
	
}
	function extend(t1, t2)
		return table.move(t2, 1, #t2, #t1 + 1, t1)
	end
	
	local job_name = managers.localization:text(tweak_data.narrative.jobs[managers.job:current_real_job_id()].name_id)
	local job_day = managers.job:current_stage()
	if (job_day > 1) then job_name = job_name .. " " .. job_day end
	
	--check for Day 2 or Day 3 names (this method works for Crime Spree and Election Day)
	local stage_data = managers.job:current_stage_data()
	local level_data = managers.job:current_level_data()
	local name_id = stage_data.name_id or level_data.name_id
	local day_name = managers.localization:text(name_id)
	if (predefined[day_name]) then job_name = day_name end
	
	if (managers.skirmish:is_skirmish()) then job_name = "Holdout" end
	
	if (predefined[job_name]) then
		--predefined[job_name] is a curated wheel
		if (#predefined[job_name] == 8) then extend(my_items, predefined[job_name])
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
				stay_open = false, 	show_text = true,
				callback = callback(VoiceCommandsMod,VoiceCommandsMod,"say_line","thisissosad")
			}
		}
	end
	
	--keep the old keybind ID
	MyModGlobal:Refresh(my_items,"SFX: Bile Death")
