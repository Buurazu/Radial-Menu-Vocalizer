_G.VoiceCommandsMod = _G.VoiceCommandsMod or {}
VoiceCommandsMod._path = ModPath
VoiceCommandsMod._data_path = SavePath .. 'radial_menu_vocalizer.txt'

VoiceCommandsMod._chat_in_order = {
{"Positive"},"s05x_sin",
{"Bain: Yes!"},"play_pln_gen_dir_08",
{"Bain: No!"},"play_pln_gen_dir_07",
{"Alarms"},"alarm_countdown_ticking_down_10sec","alarm_the_bomb_on_slow_fade",
{"Drills"},"d01x_sin",
{"Heist-Specific (Rats/Cook Off/Lab Rats)", 8},"Play_pln_rat_stage1_20","Play_pln_rat_stage1_22","Play_pln_rat_stage1_24",

{"Callouts", 8},"g80x_plu","g81x_plu","v10","v57","s01x_plu","s02x_plu","s12","s13",
{"Enemy Callouts", 8},	"f30y_any",	"f31y_any",	"f32y_any",	"f33y_any",	"f34y_any",	"f47x_any",	"f44x_any",	"g41x_any",	"g42x_any",
{"MOVE!", 8}, "g18", "g09", "v15", "v09", "whistling_attention", "v04", "v51", "f41_any",
{"Directions", 8},	"f38_any",	"g12",	"g11",	"g08",	"g05",	"g06",	"g03",	"g04",
{"Time to Go", 8}, "g17", "v08", "v17", "g07", "g13", "v07", "v26",

{"Bain: Pagers", 8},"Play_pln_pager_a","play_pln_gen_count_01","play_pln_gen_count_02","play_pln_gen_count_03","play_pln_gen_count_04","play_pln_gen_count_15","play_pln_gen_count_16","Play_pln_pager_g",
{"Bain: MOVE!", 8},	"play_pln_gen_urg_01",	"play_pln_gen_bfr_10",	"Play_pln_hur_01",	"Play_ban_p01",	"Play_pln_ce_01",	"play_pln_gen_fbo_01",	"play_pln_gen_bfr_11",	"Play_pln_vih_01",


}


VoiceCommandsMod.settings = {
	send_chat = false,
	prefix_chat = false,
	no_chat_on_click = false,
	radial_menu_radius = 350,
	radial_menu_deadzone = 30,
	radial_menu_font_size = 12,
	radial_menu_center_font_size = 16,
	cop_selection = "l2n",
	civ_selection = "cm1"
}
for _,v in ipairs(VoiceCommandsMod._chat_in_order) do
	if (type(v) ~= "table") then
		VoiceCommandsMod.settings["rmv_chat_toggle_" .. v] = true
	end
end
for k,v in ipairs(BLT.Keybinds._keybinds) do
	if type(v) == "table" then
		if v["_mod"].name == "Radial Menu Vocalizer" and v["_name"]:find("Radial Menu") then
			local add_text = v["_name"]:sub(14)
			VoiceCommandsMod.settings["rmv_mom_toggle_" .. add_text] = true
		end
	end
end
VoiceCommandsMod.playing_loops = {}

function VoiceCommandsMod:ResetToDefaultValues()
	VoiceCommandsMod.settings.send_chat = false
	VoiceCommandsMod.settings.prefix_chat = false
	VoiceCommandsMod.settings.no_chat_on_click = false
	VoiceCommandsMod.settings.radial_menu_radius = 350
	VoiceCommandsMod.settings.radial_menu_deadzone = 30
	VoiceCommandsMod.settings.radial_menu_font_size = 12
	VoiceCommandsMod.settings.radial_menu_center_font_size = 16
end

function VoiceCommandsMod:Load()
	local file = io.open(VoiceCommandsMod._data_path, 'r')
	if file then
		for k, v in pairs(json.decode(file:read('*all')) or {}) do
			VoiceCommandsMod.settings[k] = v
		end
		file:close()
	end
end

function VoiceCommandsMod:Save()
	local file = io.open(VoiceCommandsMod._data_path, 'w+')
	if file then
		file:write(json.encode(VoiceCommandsMod.settings))
		file:close()
	end
end

VoiceCommandsMod._chat_conversion = {
	Play_pln_pager_a = "Pick up that pager!",
	play_pln_gen_count_01 = "That's one!",
	play_pln_gen_count_02 = "That's two!",
	play_pln_gen_count_03 = "That's three!",
	play_pln_gen_count_04 = "That's four!",
	play_pln_gen_count_15 = "Just two more!",
	play_pln_gen_count_16 = "Just one more!",
	Play_pln_pager_g = "No more pagers!",
	
	g80x_plu = "I need a Doctor Bag/FAK!",
	g81x_plu = "I need an Ammo Bag!",
	v10 = "I found a keycard!",
	v57 = "I found a crowbar!",
	s01x_plu = "Ammo Bag!",
	s02x_plu = "Doctor Bag!",
	s12 = "First Aid Kit!",
	s13 = "Body Bag Case!",
	
	f30y_any = "Bulldozer!",
	f31y_any = "Shield!",
	f32y_any = "Taser!",
	f33y_any = "Cloaker!",
	f34y_any = "Sniper!",
	f44x_any = "Turret!",
	f47x_any = "Medic!",
	--g40x_any = "Smoke!",
	g41x_any = "Flashbang!",
	g42x_any = "Tear gas!",
	
	f38_any = "Follow me!",
	g12 = "This is the right way!",
	g11 = "That's the wrong way!",
	g08 = "Get inside!",
	g05 = "Up!",
	g06 = "Down!",
	g03 = "Left!",
	g04 = "Right!",
	
	play_pln_gen_urg_01 = "Move move move!",
	play_pln_gen_bfr_10 = "Clock's ticking, people!",
	Play_pln_hur_01 = "Pronto, people!",
	Play_ban_p01 = "This is the point of no return!",
	Play_pln_ce_01 = "Ready to go?",
	play_pln_gen_fbo_01 = "Onto the next step!",
	play_pln_gen_bfr_11 = "Let's finish this thing strong!",
	Play_pln_vih_01 = "Escape's here!",
	
	v09 = "Next objective!",
	v15 = "Open the door!",
	v51 = "Move the loot!",
	v04 = "Found it!",
	whistling_attention = "*whistle*",
	f41_any = "Get up!",
	g18 = "Move!",
	g09 = "Hurry!",
	
	s05x_sin = "Thanks!",
	play_pln_gen_dir_08 = "Yes!",
	play_pln_gen_dir_07 = "No!",
	alarm_countdown_ticking_down_10sec = "10 seconds left!",
	alarm_the_bomb_on_slow_fade = "Alarm!!!",
	d01x_sin = "Drill's jammed!",
	
	Play_pln_rat_stage1_20 = "Muriatic Acid!",
	Play_pln_rat_stage1_22 = "Caustic Soda!",
	Play_pln_rat_stage1_24 = "Hydrogen Chloride!",
	
	g17 = "Time to go!",
	v08 = "We're done!",
	v17 = "Let's go, team!",
	g07 = "We gotta get out!",
	g13 = "Let's go!",
	v07 = "It's finished!",
	v26 = "There's our escape!",
	
	
}

VoiceCommandsMod._loop_conversion = {
	dsp_radio_checking_1 = { 15, "dsp_stop_all" },
	goat_fan_woosh = { 15, "goat_fan_woosh_stop" },
	goat_sleep = { 10, "goat_sleep_stop" },
	goat_jump = { 10, "Stop_all_music" }, --no specific stop cue for some goat sfx?
	goat_hang_scaffold = { 10, "Stop_all_music" },
	goat_lick = { 10, "Stop_all_music" },
	goat_says_meh_loop = { 10, "Stop_all_music" },
	alarm_fire = { 15, "alarm_fire_stop" },
	alarm_countdown_loop = { 15, "alarm_countdown_loop_stop" },
	Play_cpl_ch1_02 = { 60, "Stop_cpl_ch1_02"},
	Play_man_ch1_01 = { 60, "Stop_man_ch1_01"},
	Play_rcp_ch1_01 = { 60, "Stop_rcp_ch1_01"},
	Play_party_girls = { 60, "Stop_party_girls"},
	Play_wife_husband = { 60, "Stop_wife_husband"},
	Play_gangster_conversation = { 60, "Stop_gangster_conversation"},
	Play_mch_brn_01 = { 15, "Stop_mch_brn_01"},
	Play_bm_fwb_01 = { 60, "Stop_bm_fwb_01"},
	Play_fe2_fwb_01 = { 60, "Stop_fe2_fwb_01"},
	Play_be2_fwb_01 = { 60, "Stop_be2_fwb_01"},
	Play_mc1_fwb_01 = { 60, "Stop_mc1_fwb_01"},
	Play_dock_convo_sand = { 60, "Stop_dock_convo_sand"},
	Play_buyers_chas = { 60, "Stop_buyers_chas"},
	Play_triad_gangsters = { 60, "Stop_triad_gangsters"},
	Play_npc_tag_poi_01 = { 60, "Stop_npc_tag_poi_01"},
	Play_mc1_pex_01 = { 30, "Stop_mc1_pex_01" },
	Play_mc2_pex_01 = { 45, "Stop_mc2_pex_01" },
	Play_civ_trai_01 = { 45, "Stop_civ_trai_01" },
}

--this function plays the voiceline that is passed to it as an argument
function VoiceCommandsMod:say_line(id)
	if (not managers.player or not managers.player:local_player() or not managers.player:local_player():sound()) then return end
	managers.player:local_player():sound():say(id,true,true)
	if (VoiceCommandsMod.settings.send_chat and VoiceCommandsMod._chat_conversion[id] ~= nil and
		VoiceCommandsMod.settings["rmv_chat_toggle_" .. id] and
		(not VoiceCommandsMod.mouse_was_clicked or not VoiceCommandsMod.settings.no_chat_on_click)) then
		if (VoiceCommandsMod.settings.prefix_chat) then
			managers.chat:send_message(1,'?',"[RMV] " .. VoiceCommandsMod._chat_conversion[id])
		else
			managers.chat:send_message(1,'?',VoiceCommandsMod._chat_conversion[id])
		end
	end
	if (VoiceCommandsMod._loop_conversion[id] ~= nil) then
		local current_time = TimerManager:game():time()
		table.insert(VoiceCommandsMod.playing_loops,
			{ current_time + VoiceCommandsMod._loop_conversion[id][1], VoiceCommandsMod._loop_conversion[id][2] })
	end
end
function VoiceCommandsMod:say_line_thirdperson(id)
	if (not managers.player or not managers.player:player_unit() or not managers.player:player_unit():sound_source()) then return end
	managers.player:player_unit():sound_source():set_switch("int_ext", "third")
	VoiceCommandsMod:say_line(id)
	--I think this works fine?
	managers.player:player_unit():sound_source():set_switch("int_ext", "first")
end

function VoiceCommandsMod:say_line_cop(id)
	VoiceCommandsMod:say_line(VoiceCommandsMod.settings.cop_selection .. "_" .. id)
end
function VoiceCommandsMod:select_cop(id)
	VoiceCommandsMod.settings.cop_selection = id
	VoiceCommandsMod.Save()
end
function VoiceCommandsMod:say_line_civ(id)
	VoiceCommandsMod:say_line(VoiceCommandsMod.settings.civ_selection .. "_" .. id)
end
function VoiceCommandsMod:select_civ(id)
	VoiceCommandsMod.settings.civ_selection = id
	VoiceCommandsMod.Save()
end

function VoiceCommandsMod:select_menu(id)
	dofile(id)
	currentkey = nil
end

VoiceCommandsMod = VoiceCommandsMod or class()

function VoiceCommandsMod:SetMyRadialMenu(menu) --"setter" function
	VoiceCommandsMod.my_radial_menu = menu
	if not managers.hud then 
		return
	end
	managers.hud:add_updator("checkradialkey", callback(self, self, "Update"))
end

function VoiceCommandsMod:Refresh(items, id)
	VoiceCommandsMod:CreateTheMenu()
	VoiceCommandsMod.my_radial_menu:clear_items()
	for index, value in ipairs(items) do
		VoiceCommandsMod.my_radial_menu:add_item(value,true)
	end
	VoiceCommandsMod.my_radial_menu:populate_items()
	VoiceCommandsMod.my_radial_menu:Show()
	
	--find what keypress we should watch for letting go
	currentkey = self:GetBLTKeybind(id)
	
end

function VoiceCommandsMod:GetBLTKeybind(id,...)
	for k,v in pairs(BLT.Keybinds._keybinds) do
		if type(v) == "table" then
			if v["_id"] == id then
				if v["_key"] and v["_key"]["pc"] then
					return tostring(v["_key"]["pc"])
				else
					return
				end
			end
		end
	end
	
	if BLT.Keybinds._potential_keybinds then
		for k,v in pairs(BLT.Keybinds._potential_keybinds) do
			if type(v) == "table" then
				if v["id"] == id then
					if v["pc"] then 
						return tostring(v["pc"])
					else
						return
					end
				end
			end
		end
	end
end

function VoiceCommandsMod:Update(t, dt)
	if (not VoiceCommandsMod.my_radial_menu:active()) then
		currentkey = nil
	end
	-- Check for our hotkey having been released
	if (VoiceCommandsMod.my_radial_menu:active() and currentkey ~= nil) then
		if (self:CheckKeyDown(currentkey) == false) then
			VoiceCommandsMod.my_radial_menu:mouse_clicked(VoiceCommandsMod.my_radial_menu._base,Idstring("-1"),0,0)
			currentkey = nil
		end
	end
	
	--check for ending loops (just check the front of the queue)
	local current_time = TimerManager:game():time()
	if (VoiceCommandsMod.playing_loops[1] and VoiceCommandsMod.playing_loops[1][1] < current_time) then
		VoiceCommandsMod:say_line(VoiceCommandsMod.playing_loops[1][2])
		table.remove(VoiceCommandsMod.playing_loops,1)
	end
end

function VoiceCommandsMod:CheckKeyDown(key)
	if not (managers and managers.hud) or managers.hud._chat_focus then
		return false
	end
	
	key = tostring(key)
	if key:find("mouse ") then 
		if not key:find("wheel") then 
			key = key:sub(7)
		end
		return Input:mouse():down(Idstring(key))
	else
		return Input:keyboard():down(Idstring(key))
	end
end

function VoiceCommandsMod:CreateTheMenu()
	params = {
		name = "VoiceCommandsMenu",
		radius = VoiceCommandsMod.settings.radial_menu_radius,
		deadzone = VoiceCommandsMod.settings.radial_menu_deadzone,
		block_all_input = false,
		font_size = VoiceCommandsMod.settings.radial_menu_font_size,
		center_font_size = VoiceCommandsMod.settings.radial_menu_center_font_size,
	}

	VoiceCommandsMod.my_radial_menu = RadialMouseMenu:new(params,callback(VoiceCommandsMod,VoiceCommandsMod,"SetMyRadialMenu"))
end