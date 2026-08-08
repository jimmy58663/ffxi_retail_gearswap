function init_gear_sets()
	Weapon_Locked = false

	sets.JA["Tabula Rasa"] = {legs = "Peda. Pants +1"}
	sets.JA.Tranquility = {hands = "Peda. Bracers +1"}
	sets.JA.Equanimity = {hands = "Peda. Bracers +1"}
	sets.JA.Altruism = {head = "Peda. M.Board +1"}
	sets.JA.Focalization = {head = "Peda. M.Board +1"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Pedagogy"}
	Weapon_mode = 1

	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Sors Shield"}
	sets.Weapon.Pedagogy = {main = "Pedagogy Staff", sub = "Kaja Grip"}

	sets.TP.Hybrid = {
		ammo = "Kalboron Stone",
		head = "Jhakri Coronal +2",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Volte Cap"}

	-- Precast Sets
	sets.Precast.FC = {
		main = "Pedagogy Staff", -- 1%
		sub = "Kaja Grip",
		ammo = "Incantor Stone", -- 2%
		head = "Peda. M.Board +1", -- 11%
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 5%
		body = "Agwu's Robe", -- 8%
		hands = "Acad. Bracers +3", -- 9%
		left_ring = "Kishar Ring", -- 4%
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		legs = "Pinga Pants", -- 11%
		waist = "Embla Sash", -- 5%
		feet = "Acad. Loafers +3", -- 12%
	}

	sets.Precast.Cure = {
		sub = "Dominie's Grip", -- 2%
	}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.Impact = {body = "Crepuscular Cloak"}

	-- Midcast Sets
	sets.Midcast.Haste = {
		ammo = "Incantor Stone",
		head = "Acad. Mortar. +3",
		body = "Telchine Chas.",
		hands = "Acad. Bracers +3",
		legs = "Pinga Pants",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.Debuff = {
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar. +3",
		neck = "Argute Stole +1",
		right_ear = "Malignance Earring",
		body = "Acad. Gown +3",
		hands = "Acad. Bracers +3",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.Stun = {
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar. +3",
		neck = "Argute Stole +1",
		right_ear = "Malignance Earring",
		body = "Acad. Gown +3",
		hands = "Acad. Bracers +3",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.LowNuke = {
		main = "Bunzi's rod",
		sub = "Genbu's Shield",
		ammo = "Hydrocera",
		head = "Agwu's Cap",
		neck = "Argute Stole +1",
		left_ear = "Friomisi Earring",
		right_ear = "Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		left_ring = "Mallquis Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Agwu's Slops",
		feet = "Agwu's Pigaches",
	}

	sets.Midcast.HighNuke = {
		main = "Bunzi's rod",
		sub = "Genbu's Shield",
		ammo = "Hydrocera",
		head = "Agwu's Cap",
		neck = "Argute Stole +1",
		left_ear = "Friomisi Earring",
		right_ear = "Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		left_ring = "Mallquis Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Agwu's Slops",
		feet = "Agwu's Pigaches",
	}

	sets.Midcast.MagicBurst = {
		main = "Bunzi's rod",
		sub = "Genbu's Shield",
		ammo = "Hydrocera",
		head = "Agwu's Cap",
		neck = "Argute Stole +1",
		left_ear = "Friomisi Earring",
		right_ear = "Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		left_ring = "Mallquis Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Agwu's Slops",
		feet = "Agwu's Pigaches",
	}

	sets.Midcast.Cure = {
		main = "Daybreak", -- 30%
		sub = "Sors Shield", -- 3%
		hands = "Weath. Cuffs +1", -- 9%
		left_ring = "Naji's Loop", -- 1% 1&2
		legs = "Acad. Pants +3", -- 15%
	}

	sets.Midcast.Regen = {
		-- Telchine augment Enh Mag Duration +10
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		head = "Telchine Cap",
		body = "Telchine Chas.",
		hands = "Telchine Gloves", -- hands="Arbatel Bracers +3",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Embla Sash",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches",
	}

	sets.Midcast.Stoneskin = {
		main = "Iridal Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar +3",
		neck = "Argute Stole +1",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Belisama's Rope +1",
		legs = "Pinga Pants",
		feet = "Mallquis Clogs +2",
	}

	sets.Midcast.Cursna = {
		left_ring = "Ephedra Ring",
		right_ring = "Ephedra Ring",
		legs = "Acad. Pants +3",
		feet = "Gende. Galosh. +1",
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

	sets.WS = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Vehemence Ring",
		right_ring = "Rajas Ring",
		back = {name = "Lugh's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	-- Aftercast Sets
	sets.Idle = {
		main = "Daybreak",
		sub = "Genbu's Shield",
		ammo = "Kalboron Stone",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Acad. Gown +3",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle.Sublimation = {head = "Acad. Mortar. +3", waist = "Embla Sash"}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	send_command("input /macro book 20;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end
