function init_gear_sets()
	Weapon_Locked = true

	sets.JA.Saboteur = {hands = "Leth. Ganth. +2"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Crocea", [2] = "Naegling", [3] = "Tauret", [4] = "CroceaDW", [5] = "NaeglingDW", [6] = "TauretDW"}
	Weapon_mode = 1

	sets.Weapon.Crocea = {main = "Vitiation Sword", sub = "Genbu's Shield"}
	sets.Weapon.Naegling = {main = "Kaja Sword", sub = "Genbu's Shield"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Genbu's Shield"}
	sets.Weapon.CroceaDW = {main = "Vitiation Sword", sub = "Daybreak"}
	sets.Weapon.NaeglingDW = {main = "Kaja Sword", sub = "Maxentius"}
	sets.Weapon.TauretDW = {main = "Tauret", sub = "Maxentius"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		neck = "Anu Torque",
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring",
		back = "Estoqueur's Cape",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Bunzi's Pants",
		feet = "Malignance Boots",
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

	sets.Midcast.Refresh = {}

	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	-- sets.Midcast.Obis.Ice = {waist="Hyorin Obi"}
	-- sets.Midcast.Obis.Lightning = {waist="Rairin Obi"}
	-- sets.Midcast.Obis.Light = {waist="Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Anu Torque",
		left_ear = "Malignance Earring",
		right_ear = {name = "Moonshade Earring", augments = {"\"Mag.Atk.Bns.\"+4", "TP Bonus +250"}},
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Vertigo Ring",
		right_ring = "Jhakri Ring",
		back = "Estoqueur's Cape",
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Sanguine Blade"] = {right_ear = "Friomisi Earring"}

	sets.WS["Seraph Blade"] = {}

	sets.WS["Red Lotus Blade"] = {}

	sets.WS["Savage Blade"] = {left_ear = "Sherida Earring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = "Estoqueur's Cape",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Bunzi's Pants",
		feet = "Malignance Boots",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = "Estoqueur's Cape",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 5;wait .1;input /macro set 1")
		Weapon_mode = 4
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
