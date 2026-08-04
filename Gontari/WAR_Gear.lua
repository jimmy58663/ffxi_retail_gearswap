function init_gear_sets()
	sets.JA.Berserk = {
		-- body = "Pumm. Lorica +3",
		back = {
			name = "Cichol's Mantle",
			augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20", "Phys. dmg. taken-10%"},
		},
		-- feet = "Agoge Calligae",
	}
	-- sets.JA.Aggressor = {body = "Agoge Lorica +1"}
	-- sets.JA.Warcry = {head = "Agoge Mask +2"}
	-- sets.JA["Blood Rage"] = {body = "Boii Lorica +2"}
	-- sets.JA["Mighty Strikes"] = {hands = "Agoge Mufflers"}
	sets.JA.Tomahawk = {ammo = "Thr. Tomahawk"} -- feet = "Agoge Calligae"}
	-- sets.JA["Warrior's Charge"] = {legs = "Agoge Cuisses"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {
		[1] = "Naegling",
		[2] = "Shining",
		[3] = "Loxotic",
		-- [4] = 'Chango',
	}
	Weapon_mode = 1

	Abyssea_Weapon = false
	Abyssea_Weapon_map = {
		[1] = "Dagger",
		[2] = "Sword",
		[3] = "GSword",
		[4] = "Scythe",
		[5] = "Polearm",
		[6] = "Katana",
		[7] = "GKatana",
		[8] = "Club",
		[9] = "Staff",
	}
	Abyssea_Weapon_mode = 1

	sets.Weapon.Naegling = {main = "Naegling", sub = "Blurred Shield +1"}
	sets.Weapon.Shining = {main = "Shining One", sub = "Utu Grip"}
	sets.Weapon.Loxotic = {main = "Loxotic Mace +1", sub = "Blurred Shield +1"}
	-- sets.Weapon.Chango = {main="Chango",sub="Utu Grip",}

	sets.Weapon.Abyssea = {}
	sets.Weapon.Abyssea.Dagger = {main = "Qutrub Knife"}
	sets.Weapon.Abyssea.Sword = {main = "Joyeuse"}
	sets.Weapon.Abyssea.GSword = {main = "Mercurial Sword"}
	sets.Weapon.Abyssea.Scythe = {main = "Bounty Sickle"}
	sets.Weapon.Abyssea.Polearm = {main = "Quint Spear"}
	sets.Weapon.Abyssea.Katana = {main = "Yagyu Shortblade"}
	sets.Weapon.Abyssea.GKatana = {main = "Shinai"}
	sets.Weapon.Abyssea.Club = {main = "Burrower's Wand"}
	sets.Weapon.Abyssea.Staff = {main = "Earth Staff"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "War. Beads +1",
		left_ear = "Schere Earring",
		right_ear = "Boii Earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Cichol's Mantle",
			augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20", "Phys. dmg. taken-10%"},
		},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Nyame Helm", -- head="Agoge Mask +3",
		neck = "War. Beads +1",
		left_ear = "Moonshade Earring",
		right_ear = "Thrud Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Niqmaddu Ring",
		right_ring = "Beithir Ring",
		back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Metatron Torment"] = {
		-- neck="Light Gorget",
		-- waist = "Light Belt",
	}

	sets.WS["Upheaval"] = {
		-- neck="Light Gorget",
		-- waist = "Light Belt",
	}

	sets.WS["Savage Blade"] = {
		-- legs = "Boii Cuisses +2"
	}

	sets.WS["Judgement"] = {
		-- legs = "Boii Cuisses +2"
	}

	sets.Idle = {
		ammo = "Staunch Tathlum +1",
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Cichol's Mantle",
			augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.DT = {
		ammo = "Staunch Tathlum +1",
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Cichol's Mantle",
			augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.Midcast.Phalanx = {
		-- head="Valorous Mask",
		-- body="Valorous Mail",
		hands = "Souv. Handsch. +1",
		legs = "Sakpata's Cuisses",
		feet = "Souveran Schuhs +1",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 1;wait .1;input /macro set 1")
	elseif player.sub_job == "SAM" then
		send_command("input /macro book 1;wait .1;input /macro set 2")
	elseif player.sub_job == "THF" then
		send_command("input /macro book 1;wait .1;input /macro set 3")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 1;wait .1;input /macro set 4")
		-- Weapon_mode = 2
	else
		send_command("input /macro book 1;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 2")
end
