function init_gear_sets()
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	TP_map = {[1] = "Hybrid", [2] = "SubtleBlow", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Jolt"}
	Weapon_mode = 1

	sets.Weapon.Jolt = {main = "Jolt Counter"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Asperity Necklace", -- neck = "Mnk. Nodowa +1",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cetl Belt", -- waist = "Moonbow Belt",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.SubtleBlow = {
		-- 35 SB traits 1900 JP
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Asperity Necklace", -- neck = "Mnk. Nodowa +1",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring", -- SB2 5
		body = "Mpaca's Doublet", -- body = "Ken. Samue", -- SB 9
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring", -- SB2 5
		right_ring = "Chirich Ring", -- SB 7, +1 = 10
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cetl Belt", -- waist = "Moonbow Belt", -- SB2 10
		legs = "Mpaca's Hose", -- SB2 5
		feet = "Mpaca's Boots",
	}

	sets.TP.Footwork = {feet = "Anch. Gaiters +3"}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Nyame Helm",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Victory Smite"] = {
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		right_ring = "Mummu Ring",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.WS.Impetus = {}

	sets.WS.Impetus["Victory Smite"] = {
		back = {name = "Segomo's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10"}},
	}

	sets.WS["Tornado Kick"] = {feet = "Anch. Gaiters +3"}

	sets.WS["Dragon Kick"] = {feet = "Anch. Gaiters +3"}

	sets.WS["Final Heaven"] = {legs = "Hiza. Hizayoroi +2"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Hiza. Haramaki +2",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cetl Belt",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cetl Belt",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 2;wait .1;input /macro set 1")
	elseif new == "DNC" then
		send_command("input /macro book 2;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 2;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 2;wait .1;input /macro set 4")
	else
		send_command("input /macro book 2;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end
