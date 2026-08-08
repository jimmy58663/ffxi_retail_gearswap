function init_gear_sets()
	sets.JA.Meditate = {head = "Wakido Kabuto +1", hands = "Sakonji Kote +1"}
	sets.JA.Hasso = {hands = "Wakido Kote +1"}
	sets.JA.Sekkanoki = {hands = "Kasuga Kote +2"}
	sets.JA["Blade Bash"] = {hands = "Sakonji Kote +1"}
	sets.JA["Third Eye"] = {legs = "Sakonji Haidate +1"}
	sets.JA.Shikikoyo = {legs = "Sakonji Haidate +1"}
	sets.JA["Meikyo Shisui"] = {feet = "Sak. Sune-Ate +1"}

	TP_map = {[1] = "Hybrid", [2] = "MEva", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {
		[1] = "Masamune",
		[2] = "Shining",
		[3] = "Soboro",
		[4] = "Kusanagi",
		-- [5] = "Yoichi",
	}
	Weapon_mode = 1

	sets.Weapon.Masamune = {main = "Masamune", sub = "Utu Grip", ammo = "Coiste Bodhar"}
	sets.Weapon.Shining = {main = "Shining One", sub = "Utu Grip", ammo = "Coiste Bodhar"}
	sets.Weapon.Soboro = {main = "Soboro Sukehiro", sub = "Utu Grip", ammo = "Coiste Bodhar"}
	sets.Weapon.Kusanagi = {main = "Kusanagi", sub = "Utu Grip", ammo = "Coiste Bodhar"}
	sets.Weapon.Yoichi = {main = "Soboro Sukehiro", sub = "Utu Grip", ranged = "Yoichinoyumi", ammo = "Eminent Arrow"}

	sets.TP.Hybrid = {
		head = "Kasuga Kabuto +2", -- +3
		neck = "Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear = "Schere Earring", -- Dedition
		right_ear = "Brutal Earring", -- Kasuga +1/+2
		body = "Kasuga Domaru +2", -- +3
		hands = "Tatena. Gote +1",
		left_ring = "Niqmaddu Ring",
		right_ring = "Gelatinous Ring +1",
		back = {
			name = "Smertrios's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Windbuffet Belt +1",
		legs = "Kasuga Haidate +2", -- +3
		feet = "Ryuo Sune-Ate +1",
	}

	sets.TP.MEva = {
		head = "Kasuga Kabuto +2", -- +3
		neck = "Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear = "Schere Earring", -- Dedition
		right_ear = "Brutal Earring", -- Kasuga +1/+2
		body = "Kasuga Domaru +2", -- +3
		hands = "Nyame Gauntlets",
		left_ring = "Niqmaddu Ring",
		right_ring = "Gelatinous Ring +1",
		back = {
			name = "Smertrios's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Windbuffet Belt +1",
		legs = "Kasuga Haidate +2", -- +3
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Mpaca's Cap",
		neck = {name = "Sam. Nodowa +1", augments = {"Path: A"}}, -- +2
		left_ear = "Moonshade Earring",
		right_ear = "Thrud Earring", -- Kasuga +2
		body = "Nyame Mail", -- body="Sakonji Domaru +2",
		hands = "Kasuga Kote +2", -- +3
		left_ring = "Ephramad's Ring",
		right_ring = "Sroda Ring", -- ~Epaminonda's
		back = {
			name = "Smertrios's Mantle",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Wakido Haidate +3", -- +4
		feet = "Kas. Sune-Ate +2", -- +3/Nyame PathB (R30)
	}

	sets.WS["Namas Arrow"] = {
		head = "Nyame Helm",
		neck = "Light Gorget",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		waist = "Light Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS.Hybrid = {
		head = "Nyame Helm",
		-- neck="Fotia Gorget",
		right_ear = "Schere Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		-- waist="Fotia Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		head = "Kasuga Kabuto +2",
		neck = "Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear = "Schere Earring",
		right_ear = "Brutal Earring",
		body = "Kasuga Domaru +2",
		hands = "Nyame Gauntlets",
		left_ring = "Chirich Ring +1",
		right_ring = "Gelatinous Ring +1",
		back = {
			name = "Smertrios's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Windbuffet Belt +1",
		legs = "Kasuga Haidate +2",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		head = "Kasuga Kabuto +2",
		neck = "Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear = "Schere Earring",
		right_ear = "Brutal Earring",
		body = "Kasuga Domaru +2",
		hands = "Nyame Gauntlets",
		left_ring = "Chirich Ring +1",
		right_ring = "Gelatinous Ring +1",
		back = {
			name = "Smertrios's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Windbuffet Belt +1",
		legs = "Kasuga Haidate +2",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "DNC" then
		send_command("input /macro book 12;wait .1;input /macro set 1")
	elseif new == "DRG" then
		send_command("input /macro book 12;wait .1;input /macro set 2")
	elseif new == "THF" then
		send_command("input /macro book 12;wait .1;input /macro set 2")
	elseif new == "WAR" then
		send_command("input /macro book 12;wait .1;input /macro set 2")
	else
		send_command("input /macro book 12;wait .1;input /macro set 2")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 3")
end
