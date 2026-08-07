function init_gear_sets()
	sets.JA["Divine Emblem"] = {feet = "Chev. Sabatons +2"}
	sets.JA["Shield Bash"] = {hands = "Cab. Gauntlets +2"}
	sets.JA["Holy Circle"] = {feet = "Rev. Leggings"}
	sets.JA.Cover = {head = "Rev. Coronet"}
	sets.JA.Sentinel = {feet = "Valor Leggings"}

	TP_map = {[1] = "Tank", [2] = "DPS", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Burtgang", [2] = "Naegling", [3] = "Caliburnus", [4] = "Sakpata"}
	Weapon_mode = 1

	sets.Weapon.Burtgang = {main = "Burtgang"}
	sets.Weapon.Sakpata = {main = "Sakpata's Sword"}
	sets.Weapon.Naegling = {main = "Naegling"}
	sets.Weapon.Caliburnus = {main = "Caliburnus"}

	Shield_map = {[1] = "Duban", [2] = "Aegis", [3] = "Blurred"}
	Shield_mode = 1

	sets.Shield = {}
	sets.Shield.Duban = {sub = "Duban"}
	sets.Shield.Aegis = {sub = "Aegis"}
	sets.Shield.Blurred = {sub = "Blurred Shield +1"}

	EnmitySpells = S {"Flash", "Foil", "Head Butt", "Jettatura"}
	-- Long Cast Enmity Spells: 'Geist Wall','Sheep Song','Blank Gaze','Cold Wave','Soporific','Frightful Roar','Stinking Gas','Cocoon',

	sets.TP.Tank = {
		ammo = "Staunch Tathlum +1",
		head = "Chev. Armet +2",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Chev. Earring +1",
		body = "Chev. Cuirass +2",
		hands = "Chev. Gauntlets +2",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Chev. Cuisses +2",
		feet = "Chev. Sabatons +2",
	}

	sets.TP.DPS = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Rep. Plat. Medal",
		left_ear = "Brutal Earring",
		right_ear = "Chev. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Rudianos's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.Precast.FastCast = {
		head = "Chev. Armet +2", -- 8%
		back = {name = "Rudianos's Mantle", augments = {"\"Fast Cast\"+10%"}},
		feet = "Chev. Sabatons +2", -- 10%
	}

	sets.Precast.Cure = {
		neck = "Diemer Gorget", -- 4%
		body = "Jumalik Mail", -- 10%
	}

	sets.Midcast.SIRD = { -- 102% SIRD, 47% PDT, 38% MDT, 58 Enmity, +478 HP, +163 MP
		-- Merits 10%
		ammo = "Staunch Tathlum +1", -- 11% SIRD (3% DT)
		head = {name = "Loess Barbuta +1", priority = 10}, -- (20% DT, 19-24 Enmity) +105 HP +105 MP
		neck = "Moonlight Necklace", -- 15% SIRD (15 Enmity)
		-- left_ear="Tuisto Earring",
		-- right_ear="Trux Earring", -- 5 Enmity
		body = {name = "Chev. Cuirass +2", priority = 11}, -- 15/20% SIRD (2.3-10.5% DT, 14/16 Enmity)
		hands = {name = "Souv. Handsch. +1", priority = 13}, -- 9 Enmity (5% MDT) +239 HP +14 MP
		-- left_ring="Apeile Ring +1", -- 5-9 Enmity
		right_ring = "Murky Ring", -- 3% SIRD (10% DT) +30 MP
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
			priority = 10,
		}, -- 10 Enmity
		waist = "Creed Baudrier", -- 5 Enmity +40 HP
		legs = {name = "Founder's Hose", augments = {"MND+6", "Mag. Acc.+10", "Attack+7", "Breath dmg. taken -2%"}}, -- 30% SIRD +54 HP
		feet = "Odyssean Greaves", -- 23% SIRD +20 HP, +14 MP
	}

	sets.Midcast.Enmity = { -- 67 Enmity, 48% PDT, 38% MDT, +631 HP, +163 MP
		ammo = "Staunch Tathlum +1", -- (3% DT)
		head = {name = "Loess Barbuta +1", priority = 10}, -- +19-24 Enmity (20% DT) +105 HP +105 MP
		neck = "Moonlight Necklace", -- +15 Enmity --neck="Unmoving Collar +1", -- 10 Enmity +200 HP
		left_ear = "Cryptic Earring", -- 4 Enmity
		-- right_ear="Trux Earring", -- 5 Enmity
		body = {name = "Chev. Cuirass +2", priority = 11}, -- 14 Enmity (2.3-10.5% DT) --body="Souv. Cuirass +1", -- 20 Enmity (10% DT)
		hands = {name = "Souv. Handsch. +1", priority = 13}, -- 9 Enmity (5% MDT) +239 HP +14 MP
		-- left_ring="Apeile Ring +1", -- 5-9 Enmity
		right_ring = "Murky Ring", -- (10% DT) +30 MP
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
			priority = 10,
		}, -- +10
		waist = "Creed Baudrier", -- 5 Enmity
		-- legs="Souv. Diechlings +1", -- 9 Enmity (4% DT)
		feet = {name = "Souveran Schuhs +1", priority = 12}, -- 9 Enmity (5% PDT) +227 HP +14 MP--feet="Chev. Sabatons +2/3", -- 13/15 Enmity
	}

	sets.Midcast.Cure = {
		right_ear = "Chev. Earring +1", -- 11% Cure Pot
		body = "Jumalik Mail", -- 15% Cure Pot
		waist = "Audumbla Sash", -- 10% SIRD (4% PDT)
	}

	sets.Midcast.Enhancing = {
		hands = "Regal Gauntlets", -- 20% duration
	}

	sets.Midcast.Phalanx = {
		-- main = "Sakpata's Sword", -- +5
		-- sub = "Priwen", -- +3
		hands = "Souv. Handsch. +1", -- +5
		legs = "Sakpata's Cuisses", -- +5
		feet = "Souveran Schuhs +1", -- +5
	}

	sets.Midcast.Enlight = {head = "Jumalik Helm"}

	sets.Midcast["Enlight II"] = sets.Midcast.Enlight

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		left_ear = "Moonshade Earring",
		right_ear = "Thrud Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Beithir Ring",
		right_ring = "Petrov Ring",
		back = {name = "Rudianos's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Savage Blade"] = {
		-- legs="Boii Cuisses +1",
	}

	sets.WS["Atonement"] = {
		-- ammo="Sapience Orb",
		-- neck="Fotia Gorget",
		left_ear = "Cryptic Earring",
		left_ring = "Eihwaz Ring",
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
		},
		-- waist="Fotia Belt",
	}

	sets.Idle = {
		ammo = "Staunch Tathlum +1",
		head = "Chev. Armet +2",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Chev. Earring +1",
		body = "Chev. Cuirass +2",
		hands = "Chev. Gauntlets +2",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Chev. Cuisses +2",
		feet = "Chev. Sabatons +2",
	}

	sets.DT = {
		ammo = "Staunch Tathlum +1",
		head = "Chev. Armet +2",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Chev. Earring +1",
		body = "Chev. Cuirass +2",
		hands = "Chev. Gauntlets +2",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Rudianos's Mantle",
			augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Chev. Cuisses +2",
		feet = "Chev. Sabatons +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "SCH" then
		send_command("input /macro book 7;wait .1;input /macro set 1")
	elseif new == "BLU" then
		send_command("input /macro book 7;wait .1;input /macro set 2")
	elseif new == "NIN" then
		send_command("input /macro book 7;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 7;wait .1;input /macro set 4")
	else
		send_command("input /macro book 7;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]], sets.Shield[Shield_map[Shield_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end
