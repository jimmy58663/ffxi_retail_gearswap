function init_gear_sets()
	sets.JA.Camouflage = {body = "Orion Jerkin +3"}
	sets.JA.Shadowbind = {hands = "Orion Bracers +3"}
	sets.JA.Barrage = {
		head = "Orion Beret +3",
		body = "Orion Jerkin +3",
		hands = "Orion Bracers +3",
		legs = "Orion Braccae +3",
		feet = "Orion Socks +3",
	}
	sets.JA.Sharpshot = {legs = "Orion Braccae +3"}
	sets.JA.Scavenge = {feet = "Orion Socks +3"}

	TP_map = {[1] = "Hybrid", [2] = "Ranged", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {
		[1] = "Yoichi",
		[2] = "Fomalhaut",
		[3] = "Annihilator",
		[4] = "Naegling",
		[5] = "YoichiDW",
		[6] = "FomalhautDW",
		[7] = "AnnihilatorDW",
	}
	Weapon_mode = 3

	sets.Weapon = {}
	sets.Weapon.Yoichi = {main = "Naegling", sub = "Nusku Shield", range = "Yoichinoyumi", ammo = "Eminent Arrow"}
	sets.Weapon.Fomalhaut = {main = "Naegling", sub = "Nusku Shield", range = "Fomalhaut", ammo = "Chrono Bullet"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Nusku Shield", range = "Ataktos", ammo = "Chrono Bullet"}
	sets.Weapon.Annihilator = {main = "Naegling", sub = "Nusku Shield", range = "Annihilator", ammo = "Chrono Bullet"}
	sets.Weapon.FomalhautDW = {main = "Naegling", sub = "Gleti's Knife", range = "Fomalhaut", ammo = "Chrono Bullet"}
	sets.Weapon.YoichiDW = {main = "Naegling", sub = "Gleti's Knife", range = "Yoichinoyumi", ammo = "Eminent Arrow"}
	sets.Weapon.AnnihilatorDW = {main = "Naegling", sub = "Gleti's Knife", range = "Annihilator", ammo = "Chrono Bullet"} -- Perun +1/Ternion Dagger +1

	sets.TP.Hybrid = {
		head = "Mummu Bonnet +2",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.Ranged = {
		head = "Ikenga's Hat",
		neck = "Scout's Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nisroch Jerkin",
		hands = "Ikenga's Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Ikenga's Trousers",
		feet = "Ikenga's Clogs",
	}

	sets.TP.DT = sets.DT

	sets.TP.Ranged.PreShot = {
		-- 10% merits
		head = "Ikenga's Hat", -- 6 (Taeon Chapeau --10)
		neck = "Scout's Gorget", -- 2 (+1/+2)
		body = "Ikenga's Vest", -- 9 (Amini Caban +3)
		hands = "Ikenga's Gloves", -- 7 (Carmine Fin. Ga. +1 --8 + Rapid Shot)
		right_ring = "Crepuscular Ring", -- 3
		back = {name = "Belenus's Cape", augments = {"\"Snapshot\"+10"}},
		waist = "Impulse Belt", -- 3 (Yamaya Belt)
		legs = "Orion Braccae +3", -- 15
		feet = "Meg. Jam. +2", -- 10
	}

	sets.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {
		head = "Orion Beret +3",
		neck = "Scout's Gorget", -- neck="Fotia Gorget",
		left_ear = "Enervating Earring", -- left_ear="Ishvara Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail", -- body="Ikenga's Vest",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring", -- right_ring="Regal Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"},
		},
		waist = "Scout's Belt", -- waist="Fotia Belt",
		legs = "Nyame Flanchard", -- legs="Arc. Bracca +4",
		feet = "Nyame Sollerets", -- feet="Amini Bottillons +3",
	}

	sets.WS["Savage Blade"] = {
		neck = "Anu Torque",
		right_ear = "Brutal Earring",
		back = {name = "Belenus's Cape", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
	}

	sets.WS["Namas Arrow"] = {
		neck = "Light Gorget", -- Fotia
		-- body="Amini Caban +3",
		waist = "Light Belt", -- Fotia
	}

	sets.WS.Coronach = {
		-- neck = "Breeze Gorget", -- Fotia/Scout's +2
		-- left_ear = "Ishvara Earring",
		-- right_ear = "Amini Earring +1/2"
		-- body="Amini Caban +3",
		waist = "Breeze Belt", -- Fotia
	}

	sets.Idle = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Nyame Flanchard",
		feet = "Orion Socks +3",
	}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 11;wait .1;input /macro set 1")
		Weapon_mode = 3
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 11;wait .1;input /macro set 1")
		Weapon_mode = 3
	elseif player.sub_job == "WAR" then
		send_command("input /macro book 11;wait .1;input /macro set 2")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 11;wait .1;input /macro set 2")
	else
		send_command("input /macro book 11;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

function check_ammo()
	local pouch_name = "Chr. Bul. Pouch"
	local wardrobe = player.wardrobe6 or {}
	local ammo = player.inventory["Chrono Bullet"] or wardrobe["Chrono Bullet"]
	local ammo_count = (ammo and ammo.count) or 0
	if ammo_count < 5 then
		add_to_chat(122, "Ammo count low (" .. ammo_count .. "). Opening pouch...")
		equip({waist = pouch_name})
		disable("waist")
		coroutine.schedule(function()
			send_command("input /item \"" .. pouch_name .. "\" <me>")
			enable("waist")
			windower.send_command("gs c update")
		end, 11)
	end
end
