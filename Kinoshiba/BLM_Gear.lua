function init_gear_sets()
	Weapon_Locked = false

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Wizard", [2] = "Maxentius", [3] = "Marin"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius"}
	sets.Weapon.Wizard = {main = "Wizard's Rod"}
	sets.Weapon.Marin = {main = "Marin Staff +1", sub = "Enki Strap"}

	sets.TP.Normal = {
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Src. Stole +1",
		left_ear = "Brutal Earring",
		right_ear = "Suppanomimi",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Rajas Ring",
		right_ring = "Jhakri Ring",
		waist = "Eschan Stone",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	-- Precast Sets
	sets.Precast.FC = {
		head = "Agwu's Cap", -- 5%
		-- neck = "Voltsurge Torque", -- 4%
		left_ear = "Malignance Earring", -- 4%
		right_ear = "Etiolation Earring", -- 1%
		body = "Agwu's Robe", -- 8%
		hands = "Agwu's Gages", -- 6%
		left_ring = "Medada's Ring", -- 10%
		right_ring = "Weather. Ring", -- 5%
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Agwu's Slops", -- 7%
		feet = "Agwu's Pigaches", -- 4%
	}

	sets.Precast.ElementalMagic = {
		-- 38% traits, 80% cap
		head = "Wicce Petasos +2", -- 16%
		body = "Wicce Coat +2", -- 15%
		feet = "Mallquis Clogs +2", -- 6%
	}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.Impact = {body = "Crepuscular Cloak"}

	-- Midcast Sets
	sets.Midcast.Debuff = {
		main = "Wizard's Rod",
		head = "Wicce Petasos +2",
		ammo = "Ombre Tathlum +1",
		neck = "Src. Stole +1",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Rumination Sash",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.LowNuke = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Sroda Tathlum",
		head = "Wicce Petasos +2", -- head="Agwu's Cap",
		neck = "Sibyl Scarf",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2", -- Spaekona's utility MP back
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Jhakri Ring", -- right_ring="Metamor. Ring +1",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2", -- feet="Agwu's Pigaches",
	}

	sets.Midcast.HighNuke = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ghastly Tathlum +1",
		head = "Wicce Petasos +2", -- head="Agwu's Cap",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2", -- hands="Agwu's Gages",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Jhakri Ring", -- right_ring="Mujin Band",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.MagicBurst = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ghastly Tathlum +1",
		head = "Ea Hat +1",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Ea Cuffs", -- hands="Agwu's Gages",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Mujin Band",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1", -- waist="Sacro Cord",
		legs = "Wicce Chausses +2", -- legs="Arch. Tonban +4",
		feet = "Ea Pigaches", -- feet="Agwu's Pigaches",--feet="Wicce Sabots +3",
	}

	sets.Midcast.Stun = {
		main = "Wizard's Rod",
		head = "Wicce Petasos +2",
		ammo = "Ombre Tathlum +1",
		neck = "Src. Stole +1",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.EleDot = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ombre Tathlum +1", -- ammo="Pemphedro Tathlum",
		head = "Mall. Chapeau +2", -- head="Agwu's Cap",--head="Wicce Petasos +3",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Mallquis Saio +2", -- body="Agwu's Robe",--body="Spaekona's Coat +4",
		hands = "Mallquis Cuffs +2", -- hands="Agwu's Gages",--hands="Spae. Gloves +4"
		left_ring = "Medada's Ring", -- left_ring="Stikini Ring +1",
		right_ring = "Jhakri Ring", -- right_ring="Stikini Ring +1",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		}, -- back="Aurist's Cape +1",
		waist = "Acuity Belt +1",
		legs = "Arch. Tonban +2",
		feet = "Arch Sabots +2",
	}

	sets.Midcast.Cure = {
		main = "Bunzi's Rod", -- 30%
	}

	sets.Midcast.Stoneskin = {
		head = "Mall. Chapeau +2",
		neck = "Src. Stole +1",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.Midcast.Impact = {body = "Crepuscular Cloak"}

	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	-- sets.Midcast.Obis.Ice = {waist="Hyorin Obi"}
	-- sets.Midcast.Obis.Lightning = {waist="Rairin Obi"}
	-- sets.Midcast.Obis.Light = {waist="Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	sets.Midcast.Dark = {
		-- main="Rubicundity",
		-- sub="Ammurapi Shield",
		ammo = "Ombre Tathlum +1", -- ammo="Pemphedro Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Src. Stole +1", -- neck="Erra Pendant",
		left_ear = "Malignance Earring", -- left_ear="Hirudinea Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2", -- body="Shango Robe",
		hands = "Wicce Gloves +2", -- hands="Merlinic Dastanas", --Oseem Drain/Aspir Potency +10%
		left_ring = "Medada's Ring", -- Evanescence Ring
		right_ring = "Archon Ring",
		back = "Aurist's Cape +1",
		waist = "Acuity Belt +1", -- waist="Fucho-no-Obi",
		legs = "Wicce Chausses +2", -- legs="Spaekona's Tonban +3",
		feet = "Agwu's Pigaches",
	}

	sets.WS = {
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Src. Stole +1",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Rajas Ring",
		right_ring = "Vehemence Ring",
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS.Myrkr = {
		ammo = "Ghastly Tathlum +1",
		head = "Pixie Hairpin +1",
		neck = {name = "Src. Stole +1", augments = {"Path: A"}},
		left_ear = "Moonshade Earring",
		right_ear = "Etiolation Earring",
		body = "Wicce Coat +2",
		hands = "Nyame Gauntlets",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Nyame Sollerets",
	}

	-- Aftercast Sets
	sets.Idle = {
		main = "Wizard's Rod",
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Wicce Sabots +2",
	}

	sets.Idle.Sublimation = {
		-- waist="Embla Sash",
	}

	sets.DT = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	send_command("input /macro book 4;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 4")
end
