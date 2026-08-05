function init_gear_sets()
	Weapon_Locked = true

	sets.JA.Saboteur = {hands = "Leth. Ganth. +2"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {
		[1] = "Crocea",
		[2] = "Naegling",
		[3] = "Maxentius",
		[4] = "CroceaDW",
		[5] = "NaeglingDW",
		[6] = "MaxentiusDW",
	}
	Weapon_mode = 4

	sets.Weapon.Crocea = {main = "Crocea Mors", sub = "Genbu's Shield"}
	sets.Weapon.Naegling = {main = "Kaja Sword", sub = "Genbu's Shield"}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Genbu's Shield"}
	sets.Weapon.CroceaDW = {main = "Crocea Mors", sub = "Wizard's Rod"} -- sub="Daybreak"}
	sets.Weapon.NaeglingDW = {main = "Kaja Sword", sub = "Wizard's Rod"}
	sets.Weapon.MaxentiusDW = {main = "Maxentius", sub = "Wizard's Rod"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Dls. Torque +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Lethargy Sayon +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Enlivened Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	sets.Precast.FC = {
		-- 38% traits, 80% cap
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 4%
		left_ring = "Medada's Ring", -- 10%
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
	}

	sets.Precast.Cure = {}

	sets.Precast.ElementalMagic = {}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.EnfeeblingMagic = {head = "Leth. Chappel +1"}

	sets.Midcast.Cure = {main = "Bunzi's Rod"}

	sets.Midcast.Debuff = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.LowNuke = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.HighNuke = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Ea Hat",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Ea Pigaches",
	}

	sets.Midcast.MagicBurst = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Ea Hat +1",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Ea Gauntlets",
		left_ring = "Medada's Ring",
		right_ring = "Mujin Band",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Ea Pigaches",
	}

	sets.Midcast.Stun = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Eschan Stone",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.Buff = {
		head = "Leth. Chappel +1",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		legs = "Leth. Fuseau +1",
		feet = "Leth. Houseaux +1",
	}

	sets.Midcast.Refresh = {legs = "Leth. Fuseau +1"}

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
		head = "Nyame Helm", -- head="Viti. Chapeau +4",
		neck = "Dls. Torque +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets", -- hands="Atro. Gloves +4",
		left_ring = "Vehemence Ring",
		right_ring = "Rajas Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets", -- feet="Leth. Hoseaux +3",
	}

	sets.WS["Sanguine Blade"] = {
		ammo = "Sroda Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Sibyl Scarf", -- neck="Baetyl Pendant",
		-- left_ear="Regal Earring",
		right_ear = "Malignance Earring",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		right_ring = "Archon Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard", -- legs="Leth. Fuseau +3",
	}

	sets.WS["Seraph Blade"] = {
		ammo = "Sroda Tathlum",
		-- head="Leth. Chappel +3",
		neck = "Sibyl Scarf", -- neck="Fotia Gorget",
		right_ear = "Malignance Earring",
		body = "Nyame Mail",
		hands = "Leth Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Weather. Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard",
	}

	sets.WS["Red Lotus Blade"] = {
		ammo = "Sroda Tathlum",
		-- head="Leth. Chappel +3",
		neck = "Sibyl Scarf",
		right_ear = "Malignance Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		-- right_ring="Freke Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}}, -- Should be INT
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
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

	send_command("@wait 5;input /lockstyleset 3")
end
