function init_gear_sets()
	sets.JA.Flee = {feet = "Pill. Poulaines +1"}
	sets.JA.Steal = {
		head = "Plun. Bonnet",
		hands = "Pill. Armlets +3",
		legs = "Pill. Culottes +3",
		feet = "Pill. Poulaines +3",
	}
	sets.JA.Mug = {head = "Plun. Bonnet"}
	sets.JA.Hide = {body = "Pillager's Vest +3"}
	sets.JA["Perfect Dodge"] = {hands = "Plun. Armlets"}
	sets.JA.Feint = {legs = "Plun. Culottes"}
	sets.JA["Assassin's Charge"] = {feet = "Plun. Poulaines"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Tauret", [2] = "Naegling"}
	Weapon_mode = 1

	sets.Weapon.Tauret = {main = "Tauret", sub = "Gleti's Knife"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Gleti's Knife"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Mummu Bonnet +2",
		neck = "Asperity Necklace",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Epona's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.HasteSamba = {left_ear = "Sherida Earring"}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", feet = "Skulk. Poulaines +2"}

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Asperity Necklace",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		right_ring = "Mummu Ring",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.WS["Rudra's Storm"] = {right_ring = "Ilabrat Ring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Mummu Bonnet +2",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring +1",
		right_ring = "Moonlight Ring",
		back = "Aptitude Mantle +1",
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Mummu Bonnet +2",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring +1",
		right_ring = "Moonlight Ring",
		back = "Aptitude Mantle +1",
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 6;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 6;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 6;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 6;wait .1;input /macro set 4")
	else
		send_command("input /macro book 6;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end
