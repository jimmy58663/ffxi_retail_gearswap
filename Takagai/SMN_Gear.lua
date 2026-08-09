function init_gear_sets()
	Weapon_Locked = false
	FavorMode = false
	AutoBP = true

	sets.Avatar = {}
	sets.Avatar.BP = {}

	TP_map = {[1] = "Hybrid"}
	TP_mode = 1

	Weapon_map = {[1] = "Gridarvor", [2] = "Grioavolr", [3] = "Pandit"}
	Weapon_mode = 3

	sets.Weapon.Gridarvor = {main = "Gridarvor", sub = "Elan Strap"}
	sets.Weapon.Grioavolr = {main = "Grioavolr", sub = "Elan Strap"}
	sets.Weapon.Pandit = {main = "Pandit's Staff", sub = "Elan Strap"}

	sets.TP.Hybrid = {
		ammo = "Epitaph",
		head = "Con. Horn +1",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Evoker's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash",
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
	}

	sets.Precast.FC = {
		main = "Pandit's Staff", -- 20%
		head = "Bunzi's Hat", -- 10%
		-- neck="Voltsurge Torque", -- 4%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		left_ring = "Kishar Ring", -- 4%
	}

	sets.Precast.BP = {
		ammo = "Epitaph", -- -5 (II)
		head = "Con. Horn +1", -- -8 (I)
		left_ear = "Evans Earring", -- -2 (I)
		body = "Con. Doublet +2", -- -6 (I)
	}

	sets.Precast.Summoning = {}

	sets.Midcast.Cure = {
		main = "Pandit's Staff", -- 50%
		body = "Bunzi's Robe", -- 15%
		hands = "Weath. Cuffs +1", -- 9%
	}

	sets.WS = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		main = "Pandit's Staff",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Evoker's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash",
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
	}

	sets.DT = {
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Varar Ring +1",
		right_ring = "Evoker's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash",
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
	}

	sets.Avatar.PerpCost = {
		main = "Gridarvor", -- -5
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1", -- +2
		neck = "Caller's Pendant",
		left_ear = "Evans Earring", -- -2
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Inyanga Jubbah +2", -- +1
		hands = "Merlinic Dastanas",
		left_ring = "Gurebu's Ring",
		right_ring = "Evoker's Ring", -- -1
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash",
		legs = "Con. Spats +1",
		feet = "Convo. Pigaches +2", -- -4
	}

	sets.Avatar.Favor = {
		-- head="Caller's Horn +2",
		neck = "Caller's Pendant",
		-- body="Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		-- legs="Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.Skill = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		-- body="Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		-- legs="Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP.Phys = {
		main = "Gridarvor",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Path B
		neck = "Shulmanu Collar",
		left_ear = "Gelos Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Incarnation Sash",
		legs = "Apogee Slacks", -- Path D
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP.Magic = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Con. Doublet +2", -- Apogee Dalmatica Path A
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		}, -- Pet MAcc/Dmg cape
		waist = "Klouskap Sash", -- Regal Belt
		legs = "Enticer's Pants",
		feet = "Convo. Pigaches +2", -- Apogee Pumps Path A
	}

	sets.Avatar.BP.Hybrid = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Kyrene's Earring", -- Lugalbanda Earring
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash", -- Regal Belt
		legs = "Apogee Slacks", -- Path D
		feet = "Convo. Pigaches +2", -- Apogee Pumps Path A
	}

	sets.Avatar.BP.Buff = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		-- body="Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		-- legs="Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if player.sub_job == "RDM" then
		send_command("input /macro book 15;wait .1;input /macro set 1")
	else
		send_command("input /macro book 15;wait .1;input /macro set 1")
	end
	send_command("@wait 5;input /lockstyleset 1")
end
