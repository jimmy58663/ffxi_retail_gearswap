function init_gear_sets()
	Weapon_Locked = false

	sets.JA = {}
	sets.JA["Cardinal Chant"] = {head = "Geo. Galero +3"}
	sets.JA["Life Cycle"] = {body = "Geomancy Tunic +3"}

	TP_map = {[1] = "Normal", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Wizard", [3] = "LorgMor"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = ""}
	sets.Weapon.Wizard = {main = "Wizard's Rod", sub = ""}
	sets.Weapon.LorgMor = {main = "Lorg Mor", sub = ""}

	sets.TP.Normal = {
		head = "Nyame Helm",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Jhakri Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	-- Precast Sets
	sets.precast.FC = {
		head = "Jhakri Coronal +2",
		right_ear = "Malignance Earring", -- 4%
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring", -- 10%
		right_ring = "Jhakri Ring",
		legs = "Geomancy Pants +3", -- 15%
		feet = "Jhakri Pigaches +2",
	}

	sets.precast.ElementalMagic = {
		head = "Mall. Chapeau +2",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.precast.EnhancingMagic = {}

	sets.precast.Impact = {body = "Crepuscular Cloak"}

	-- Midcast Sets
	sets.Midcast.Debuff = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Geo. Galero +3",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Geomancy Tunic +3",
		hands = "Geo. Mitaines +3",
		left_ring = "Medada's Ring",
		right_ring = "Mallquis Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Rumination Sash",
		legs = "Geomancy Pants +3",
		feet = "Geo. Sandals +3",
	}

	sets.Midcast.LowNuke = {
		main = "Wizard's Rod",
		head = "Geo. Galero +3",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		left_ring = "Medada's Ring",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.Midcast.HighNuke = {
		main = "Wizard's Rod",
		head = "Geo. Galero +3",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.MagicBurst = {
		main = "Wizard's Rod",
		head = "Geo. Galero +3",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.Stun = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Geo. Galero +3",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Geomancy Tunic +3",
		hands = "Geo. Mitaines +3",
		left_ring = "Medada's Ring",
		right_ring = "Mallquis Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Eschan Stone",
		legs = "Geomancy Pants +3",
		feet = "Geo. Sandals +3",
	}

	sets.Midcast.Cure = {main = "Bunzi's Rod"}

	sets.Midcast.Stoneskin = {}

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
		neck = "Bagua Charm +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Jhakri Ring",
		right_ring = "Rajas Ring",
		back = {name = "Nantosuelta's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	-- Aftercast Sets
	sets.Idle = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Nyame Helm",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Geomancy Tunic +3",
		hands = "Nyame Gauntlets",
		left_ring = "Jhakri Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Geo. Sandals +3",
	}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Murky Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	send_command("input /macro book 21;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end
