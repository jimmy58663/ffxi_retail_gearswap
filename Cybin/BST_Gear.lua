function init_gear_sets()
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	TP_map = {[1] = "Pet", [2] = "Hybrid", [3] = "Player"}
	TP_mode = 1

	Weapon_map = {[1] = "Naegling", [2] = "DualWield"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Beatific Shield +1"}
	sets.Weapon.DualWield = {main = "Naegling", sub = "Blurred Knife +1"}

	sets.TP.Pet = {
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

	sets.TP.Hybrid = {
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

	sets.TP.Player = {
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

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
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

	sets.WS.Pet = {}

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

	sets.Idle = {
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

	sub_job_change(player.sub_job, "NON")
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
