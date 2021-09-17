	VoiceCommandsMod.my_items = {}

local predefined = VoiceCommandsMod.predefined2

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
		if (#predefined[job_name] >= 8) then extend(VoiceCommandsMod.my_items, predefined[job_name])
		else
			--multiple accomplices
			for _, a in ipairs(predefined[job_name]) do
				extend(VoiceCommandsMod.my_items, a)
			end
		end
	--if we don't have predefined, fill it with all accomplices, for testing purposes
	--testing is complete
	--[[
	else
		extend(VoiceCommandsMod.my_items, VoiceCommandsMod.menus2.boat)
		extend(VoiceCommandsMod.my_items, VoiceCommandsMod.menus2.twitch)
		extend(VoiceCommandsMod.my_items, VoiceCommandsMod.menus2.bile)
		extend(VoiceCommandsMod.my_items, VoiceCommandsMod.menus2.ilija)]]
	end

	if (#VoiceCommandsMod.my_items == 0) then
		VoiceCommandsMod.my_items = {
			{
				text = "No secondary menu found for\n" .. job_name,
				stay_open = false, 	show_text = true
			}
		}
	end
	
	--keep the old keybind ID
	VoiceCommandsMod:Refresh(VoiceCommandsMod.my_items,"SFX: Bile Death")
