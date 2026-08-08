function init_gear_sets()
	Weapon_Locked = false

	sets.JA.Devotion = {head = "Piety Cap"}
	sets.JA.Martyr = {hands = "Piety Mitts"}
	sets.JA.Benediction = {body = "Piety Bliaut"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Bunzi"}
	Weapon_mode = 2

	sets.Weapon.Maxentius = {main = "Kaja Rod", sub = "Archduke's Shield"}
	sets.Weapon.Bunzi = {main = "Bunzi's Rod", sub = "Archduke's Shield"}

	sets.TP.Hybrid = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ayanmo Ring",
		right_ring = "Rajas Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	-- Precast Sets
	sets.Precast.FC = {
		head = "Bunzi's Hat", -- 10%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		right_ring = "Kishar Ring", -- 4%
		legs = "Aya. Cosciales +2", -- 6%
		back = {name = "Alaunus's Cape", augments = {"\"Fast Cast\"+10"}},
	}

	sets.Precast.Cure = {neck = "Aceso's Choker +1", legs = "Orsn. Pantaln. +2"}

	sets.Precast.StatusRemoval = {legs = "Orsn. Pantaln. +2"}

	sets.Precast.EnhancingMagic = {}

	-- Midcast Sets
	sets.Midcast.Haste = {
		head = "Aya. Zucchetto +2",
		body = "Inyanga Jubbah +2",
		hands = "Inyan. Dastanas +2",
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.Midcast.Debuff = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Inyanga Tiara +2",
		neck = "Phalaina Locket",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Inyanga Jubbah +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Cascade Belt",
		legs = "Inyanga Shalwar +2",
		feet = "Inyan. Crackows +2",
	}

	sets.Midcast.Stun = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Inyanga Tiara +2",
		neck = "Phalaina Locket",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Inyanga Jubbah +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Cascade Belt",
		legs = "Inyanga Shalwar +2",
		feet = "Inyan. Crackows +2",
	}

	sets.Midcast.Cure = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Regen = {
		main = "Bolelabunga",
		sub = "Archduke's Shield",
		head = "Inyanga Tiara +2",
		-- body="Piety Bliaut",
		hands = "Orison Mitts +2",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Theo. Pantaloons",
		feet = "Bunzi's Sabots",
	}

	sets.Midcast.Stoneskin = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Cursna = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Auspice = {feet = "Orsn. Duckbills +2"}

	sets.Midcast.StatusRemoval = {head = "Orison Cap +2", hands = "Orison Mitts +2", legs = "Orsn. Pantaln. +2"}

	sets.Midcast.BarElement = {
		head = "Orison Cap +2",
		body = "Orison Bliaut +2",
		hands = "Orison Mitts +2",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Embla Sash",
		legs = "Orsn. Pantaln. +2",
		feet = "Orsn. Duckbills +2",
	}

	sets.Midcast.BarStatus = {
		-- waist = "Embla Sash"
	}

	-- Aftercast Sets
	sets.Idle = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Inyanga Jubbah +2",
		hands = "Bunzi's Gloves",
		left_ring = "Murky Ring",
		right_ring = "Inyanga Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Bunzi's Pants",
		feet = "Nyame Sollerets",
	}

	sets.Idle.Sublimation = {
		-- waist = "Embla Sash"
	}

	sets.DT = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Murky Ring",
		right_ring = "Inyanga Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Bunzi's Pants",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	send_command("input /macro book 3;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end
