function init_gear_sets()
	Weapon_Locked = false
	FavorMode = false
	AutoBP = true

	sets.Avatar = {}
	sets.Avatar.BP = {}

	TP_map = {[1] = "Hybrid"}
	TP_mode = 1

	Weapon_map = {[1] = "Gridarvor", [2] = "Grioavolr"}
	Weapon_mode = 1

	sets.Weapon.Gridarvor = {main = "Gridarvor", sub = "Elan Strap"}
	sets.Weapon.Grioavolr = {main = "Grioavolr", sub = "Elan Strap"}

	sets.TP.Hybrid = {
		ammo = "Epitaph",
		head = "Con. Horn +1",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Lugalbanda Earring",
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
		waist = "Klouskap Sash +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Precast.FC = {
		neck = "Voltsurge Torque", -- 4%
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

	sets.Midcast.Cure = {main = "Chatoyant Staff"}

	sets.WS = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		main = "Gridarvor",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Lugalbanda Earring",
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
		waist = "Klouskap Sash +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Lugalbanda Earring",
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
		waist = "Klouskap Sash +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Avatar.PerpCost = {
		main = "Gridarvor", -- -5
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1", -- +2
		neck = "Caller's Pendant",
		left_ear = "Evans Earring", -- -2
		right_ear = "Lugalbanda Earring",
		body = "Caller's Doublet +2", -- -4
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Evoker's Ring", -- -1
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1",
		legs = "Con. Spats +1",
		feet = "Convo. Pigaches +2", -- -4
	}

	sets.Avatar.Favor = {
		head = "Caller's Horn +2",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.Skill = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP.Phys = {
		main = "Gridarvor",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Path B
		neck = "Shulmanu Collar",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1", -- Incarnation Sash
		legs = "Apogee Slacks +1", -- Path D
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP.Magic = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2", -- Apogee Dalmatica Path A
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		}, -- Pet MAcc/Dmg cape
		waist = "Klouskap Sash +1", -- Regal Belt
		legs = "Enticer's Pants",
		feet = "Apogee Pumps", -- Path A
	}

	sets.Avatar.BP.Hybrid = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1", -- Regal Belt
		legs = "Apogee Slacks +1", -- Path D
		feet = "Apogee Pumps", -- Path A
	}

	sets.Avatar.BP.Buff = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
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
