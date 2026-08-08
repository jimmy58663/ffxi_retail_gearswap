function init_gear_sets()
	Weapon_Locked = false

	sets.JA.Devotion = {head = "Piety Cap"}
	sets.JA.Martyr = {hands = "Piety Mitts"}
	sets.JA.Benediction = {body = "Piety Bliaut"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Pandit", [3] = "Yagrush", [4] = "LorgMor"}
	Weapon_mode = 3

	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Archduke's Shield"}
	sets.Weapon.Pandit = {main = "Pandit's Staff", sub = "Enki Strap"}
	sets.Weapon.Yagrush = {main = "Yagrush", sub = "Archduke's Shield"}
	sets.Weapon.LorgMor = {main = "Lorg Mor", sub = "Archduke's Shield"}

	sets.TP.Hybrid = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Rep. Plat. Medal",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Volte Cap"}

	sets.WS = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ayanmo Ring",
		right_ring = "Rajas Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "MND+10", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	-- Precast Sets
	sets.Precast.FC = {
		main = "Pandit's Staff", -- 20%,
		sub = "Enki Strap",
		ammo = "Incantor Stone", -- 2%
		head = "Bunzi's Hat", -- 10%
		neck = "Clr. Torque +1", -- 1%
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		hands = "Volte Gloves", -- 6%
		right_ring = "Kishar Ring", -- 4%
		legs = "Pinga Pants", -- 11%
		waist = "Embla Sash", -- 5%
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}}, -- 10%
	}

	sets.Precast.Cure = {
		sub = "Dominie's Grip", -- 2%
		-- head="Theo. Cap +1", --5%
		neck = "Aceso's Choker +1", -- 13%
		legs = "Ebers Pant. +2", -- 14%
	}

	sets.Precast.StatusRemoval = {main = "Yagrush", sub = "Archduke's Shield", legs = "Ebers Pant. +2"}

	sets.Precast.EnhancingMagic = {}

	-- Midcast Sets
	sets.Midcast.Haste = {
		ammo = "Incantor Stone",
		head = "Bunzi's Hat",
		body = "Inyanga Jubbah +2",
		hands = "Bunzi's Gloves",
		legs = "Aya. Cosciales +2",
		feet = "Ebers Duckbills +2",
	}

	sets.Midcast.Debuff = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Hydrocera",
		head = "Ebers Cap +2",
		neck = "Clr. Torque +1",
		right_ear = "Malignance Earring",
		body = "Ebers Bliaut +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Vertigo Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Ebers Duckbills +2",
	}

	sets.Midcast.Stun = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Hydrocera",
		head = "Ebers Cap +2",
		neck = "Clr. Torque +1",
		right_ear = "Malignance Earring",
		body = "Ebers Bliaut +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Vertigo Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Ebers Duckbills +2",
	}

	sets.Midcast.Cure = {
		main = "Daybreak", -- 30%
		sub = "Culminus", -- 10% SIRD
		ammo = "Kalboron Stone",
		head = "Ebers Cap +2", -- 19%
		neck = "Clr. Torque +1", -- 7%
		left_ear = "Roundel Earring", -- 5%
		right_ear = "Orison Earring", -- 2%
		body = "Ebers Bliaut +2", -- Afflatus Solace 16%
		hands = "Ebers Mitts +2", -- 10% DT
		left_ring = "Fountain Ring",
		right_ring = "Murky Ring", -- 10% DT, 3% SIRD
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		}, -- 10%
		waist = "Rumination Sash", -- 10% SIRD
		legs = "Ebers Pant. +2", -- 12% DT, Cure->MP
		feet = "Ebers Duckbills +2", -- 10% DT
	}

	sets.Midcast.Regen = {
		main = "Bolelabunga",
		sub = "Archduke's Shield",
		head = "Inyanga Tiara +2",
		body = "Piety Bliaut",
		hands = "Ebers Mitts +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Theo. Pant. +1",
		feet = "Bunzi's Sabots",
	}

	sets.Midcast.Stoneskin = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Clr. Torque +1",
		body = "Bunzi's Robe",
		hands = "Inyan. Dastanas +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Bunzi's Pants",
		feet = "Ebers Duckbills +2",
	}

	sets.Midcast.Cursna = {
		main = "Yagrush",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Inyanga Tiara +2",
		neck = "Clr. Torque +1",
		left_ear = "Roundel Earring",
		right_ear = "Insomnia Earring",
		body = "Ebers Bliaut +2",
		hands = "Ebers Mitts +2",
		left_ring = "Ephedra Ring",
		right_ring = "Ephedra Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Theo. Pant. +1",
		feet = "Gende. Galosh. +1",
	}

	sets.Midcast.Auspice = {waist = "Embla Sash", feet = "Ebers Duckbills +2"}

	sets.Midcast.StatusRemoval = {
		main = "Yagrush",
		sub = "Archduke's Shield",
		head = "Ebers Cap +2",
		hands = "Ebers Mitts +2",
		legs = "Ebers Pant. +2",
	}

	sets.Midcast.BarElement = {
		head = "Ebers Cap +2",
		body = "Ebers Bliaut +2",
		hands = "Ebers Mitts +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Piety Pantaloons",
		feet = "Ebers Duckbills +2",
	}

	sets.Midcast.BarStatus = {waist = "Embla Sash"}

	-- Aftercast Sets
	sets.Idle = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Ebers Bliaut +2",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.Idle.Sublimation = {waist = "Embla Sash"}

	sets.DT = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	send_command("input /macro book 3;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end
