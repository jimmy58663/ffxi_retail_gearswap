function init_gear_sets()
	Weapon_Locked = true

	-- sets.JA.Saboteur = {hands = "Leth. Ganth. +2"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Naegling", [2] = "Tauret", [3] = "NaeglingDW", [4] = "TauretDW"}
	Weapon_mode = 1

	sets.Weapon.Naegling = {main = "Naegling", sub = "Genbu's Shield"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Genbu's Shield"}
	sets.Weapon.NaeglingDW = {main = "Naegling", sub = "Kaja Knife"}
	sets.Weapon.TauretDW = {main = "Tauret", sub = "Malignance"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Aya. Zucchetto +2",
		neck = "Anu Torque",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Ayanmo Corazza +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring +1",
		back = {name = "Mecisto. Mantle", augments = {"Cap. Point+41%", "MND+3", "Rng.Acc.+3", "DEF+1"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.Precast.FC = {
		-- 38% traits, 80% cap
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 4%
	}

	sets.Precast.Cure = {}

	sets.Precast.ElementalMagic = {}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.EnfeeblingMagic = {}

	sets.Midcast.Cure = {main = "Bunzi's Rod"}

	sets.Midcast.Debuff = {}

	sets.Midcast.LowNuke = {}

	sets.Midcast.HighNuke = {}

	sets.Midcast.MagicBurst = {}

	sets.Midcast.Stun = {}

	sets.Midcast.Buff = {}

	sets.Midcast.Refresh = {legs = "Leth. Fuseau +1"}

	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	sets.Midcast.Obis.Ice = {waist = "Hyorin Obi"}
	sets.Midcast.Obis.Lightning = {waist = "Rairin Obi"}
	sets.Midcast.Obis.Light = {waist = "Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Anu Torque",
		left_ear = {name = "Moonshade Earring", augments = {"\"Mag.Atk.Bns.\"+4", "TP Bonus +250"}},
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Guantlets",
		left_ring = "Petrov Ring",
		right_ring = "Rajas Ring",
		back = {name = "Mecisto. Mantle", augments = {"Cap. Point+41%", "MND+3", "Rng.Acc.+3", "DEF+1"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Sanguine Blade"] = {}

	sets.WS["Seraph Blade"] = {}

	sets.WS["Red Lotus Blade"] = {}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Aya. Zucchetto +2",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Ayanmo Corazza +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring +1",
		back = {name = "Mecisto. Mantle", augments = {"Cap. Point+41%", "MND+3", "Rng.Acc.+3", "DEF+1"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Aya. Zucchetto +2",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Ayanmo Corazza +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring +1",
		back = {name = "Mecisto. Mantle", augments = {"Cap. Point+41%", "MND+3", "Rng.Acc.+3", "DEF+1"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 5;wait .1;input /macro set 1")
		Weapon_mode = 3
	elseif new == "DRK" then
		send_command("input /macro book 5;wait .1;input /macro set 3")
	else
		send_command("input /macro book 5;wait .1;input /macro set 1")
	end

	if Weapon_Locked then
		Common_Funcs.Unlock_Weapon()
		Weapon_Locked = true
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	Common_Funcs.Apply_Weapon_Lock_State()

	send_command("@wait 5;input /lockstyleset 1")
end
