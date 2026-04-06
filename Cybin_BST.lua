include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	sets.TP = {}

	TH_mode = false

	mode_map = {[1] = "Pet", [2] = "Hybrid", [3] = "Player"}
	mode = 3

	TP_map = {[1] = "Normal", [2] = "Acc", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Naegling", [2] = "DualWield"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Beatific Shield +1"}
	sets.Weapon.DualWield = {main = "Naegling", sub = "Blurred Knife +1"}

	sets.TP.Pet = {}

	sets.TP.Hybrid = {}

	sets.TP.Player = {}

	sets.TP.Pet.Normal = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.Hybrid.Normal = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.Player.Normal = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.Pet.Acc = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.Hybrid.Acc = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.Player.Acc = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Metatron Torment"] = {
		-- neck="Light Gorget",
		waist = "Light Belt",
	}

	sets.Idle = {}
	sets.Idle.Pet = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.Idle.Hybrid = {
		head = "Meghanada Visor +2",
		neck = "Ej Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.Idle.Player = {
		head = "Meghanada Visor +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.DT = {
		head = "Meghanada Visor +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Meg. Cuirie +2",
		hands = "Meg. Gloves +2",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Meg. Chausses +2",
		feet = "Meg. Jam. +2",
	}

	sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
	else
		equip(sets.Idle[mode_map[mode]])
	end
	if Pull_mode then
		equip(sets.Pulling)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle[mode_map[mode]])
	elseif new == "Engaged" then
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
	end
	if Pull_mode then
		equip(sets.Pulling)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	if string.lower(command) == "dt" then
		equip(sets.DT)
	elseif string.lower(command) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat("TH mode is now: " .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == "Engaged" then
				equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
			else
				equip(sets.Idle[mode_map[mode]])
			end
		end
	elseif string.lower(command) == "weapon" then
		Weapon_mode = Weapon_mode + 1
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	elseif string.lower(command) == "mode" then
		mode = mode + 1
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		equip(sets.Idle[mode_map[mode]])
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end
end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 9;wait .1;input /macro set 1")
		Weapon_mode = 2
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 9;wait .1;input /macro set 2")
		Weapon_mode = 2
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 9;wait .1;input /macro set 3")
	elseif player.sub_job == "WAR" then
		send_command("input /macro book 9;wait .1;input /macro set 4")
	else
		send_command("input /macro book 9;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
