include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Devotion = {head = "Piety Cap"}
	sets.JA.Martyr = {hands = "Piety Mitts"}
	sets.JA.Benediction = {body = "Piety Bliaut"}

	-- Modes
	mode_map = {[1] = "Support", [2] = "Melee"}
	mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Pandit", [3] = "LorgMor"}
	Weapon_mode = 1

	Idle_map = {[1] = "Refresh", [2] = "DT"}
	Idle_mode = 1

	TP_map = {[1] = "Normal", [2] = "DT"}
	TP_mode = 1

	Spell_Map = {
		["Blindna"] = "StatusRemoval",
		["Cursna"] = "StatusRemoval",
		["Erase"] = "StatusRemoval",
		["Esuna"] = "StatusRemoval",
		["Paralyna"] = "StatusRemoval",
		["Poisona"] = "StatusRemoval",
		["Sacrifice"] = "StatusRemoval",
		["Silena"] = "StatusRemoval",
		["Stona"] = "StatusRemoval",
		["Viruna"] = "StatusRemoval",
		["Barfire"] = "BarElement",
		["Barblizzard"] = "BarElement",
		["Baraero"] = "BarElement",
		["Barstone"] = "BarElement",
		["Barthunder"] = "BarElement",
		["Barwater"] = "BarElement",
		["Barfira"] = "BarElement",
		["Barblizzara"] = "BarElement",
		["Baraera"] = "BarElement",
		["Barstonra"] = "BarElement",
		["Barthundara"] = "BarElement",
		["Barwatera"] = "BarElement",
		["Barsleep"] = "BarStatus",
		["Barpoison"] = "BarStatus",
		["Barparalyze"] = "BarStatus",
		["Barblind"] = "BarStatus",
		["Barsilence"] = "BarStatus",
		["Barpetrify"] = "BarStatus",
		["Barvirus"] = "BarStatus",
		["Baramnesia"] = "BarStatus",
		["Barsleepra"] = "BarStatus",
		["Barpoisonra"] = "BarStatus",
		["Barparalyzra"] = "BarStatus",
		["Barblindra"] = "BarStatus",
		["Barsilencera"] = "BarStatus",
		["Barpetra"] = "BarStatus",
		["Barvira"] = "BarStatus",
		["Baramnesra"] = "BarStatus",
	}
	-- Precast Sets
	sets.precast = {}
	sets.precast.FC = {
		main = "Pandit's Staff", -- 20%,
		sub = "Enki Strap",
		ammo = "Incantor Stone", -- 2%
		head = "Bunzi's Hat", -- 10%
		neck = "Clr. Torque +1", -- 1%
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		hands = "Volte Gloves", -- 6%
		right_ring = "Kishar Ring", -- 4%
		legs = "Pinga Pants", -- 11%
		waist = "Embla Sash", -- 5%
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}}, -- 10%
	}

	sets.precast.Cure = {
		sub = "Dominie's Grip", -- 2%
		-- head="Theo. Cap +1", --5%
		neck = "Aceso's Choker +1", -- 13%
		legs = "Ebers Pant. +2", -- 14%
	}

	sets.precast.StatusRemoval = {legs = "Ebers Pant. +2"}

	sets.precast.EnhancingMagic = {}
	-- Midcast Sets
	sets.midcast = {}
	sets.midcast.Haste = {
		ammo = "Incantor Stone",
		head = "Bunzi's Hat",
		body = "Inyanga Jubbah +2",
		hands = "Bunzi's Gloves",
		legs = "Aya. Cosciales +2",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.Debuff = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Hydrocera",
		head = "Ebers Cap +2",
		neck = "Clr. Torque +1",
		right_ear = "Malignance Earring",
		body = "Ebers Bliaut +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Vertigo Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.Stun = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Hydrocera",
		head = "Ebers Cap +2",
		neck = "Clr. Torque +1",
		right_ear = "Malignance Earring",
		body = "Ebers Bliaut +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Vertigo Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "MND+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.Cure = {
		main = "Pandit's Staff", -- 50%
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Ebers Cap +2", -- 19%
		neck = "Clr. Torque +1", -- 7%
		left_ear = "Roundel Earring", -- 5%
		right_ear = "Orison Earring", -- 2%
		body = "Ebers Bliaut +2", -- Afflatus Solace 16%
		hands = "Weath. Cuffs +1", -- 9%
		left_ring = "Fountain Ring",
		right_ring = "Zodiac Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		}, -- 10%
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.Regen = {
		main = "Bolelabunga",
		sub = "Archduke's Shield",
		head = "Inyanga Tiara +2",
		body = "Piety Bliaut",
		hands = "Ebers Mitts +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Theo. Pant. +1",
		feet = "Bunzi's Sabots",
	}

	sets.midcast.Stoneskin = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Clr. Torque +1",
		body = "Bunzi's Robe",
		hands = "Inyan. Dastanas +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Bunzi's Pants",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.Cursna = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Inyanga Tiara +2",
		neck = "Clr. Torque +1",
		left_ear = "Roundel Earring",
		right_ear = "Insomnia Earring",
		body = "Ebers Bliaut +2",
		hands = "Ebers Mitts +2",
		left_ring = "Ephedra Ring",
		right_ring = "Ephedra Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Theo. Pant. +1",
		feet = "Gende. Galosh. +1",
	}

	sets.midcast.Auspice = {waist = "Embla Sash", feet = "Ebers Duckbills +2"}

	sets.midcast.StatusRemoval = {head = "Ebers Cap +2", hands = "Ebers Mitts +2", legs = "Ebers Pant. +2"}

	sets.midcast.BarElement = {
		head = "Ebers Cap +2",
		body = "Ebers Bliaut +2",
		hands = "Ebers Mitts +2",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Embla Sash",
		legs = "Piety Pantaloons",
		feet = "Ebers Duckbills +2",
	}

	sets.midcast.BarStatus = {waist = "Embla Sash"}
	-- Aftercast Sets
	sets.DT = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.Idle = {}
	sets.Idle.Refresh = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Ebers Bliaut +2",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.Idle.DT = {
		main = "Pandit's Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "MND+10", "\"Cure\" potency +10%", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.Idle.Sublimation = {waist = "Embla Sash"}

	sets.TP = {}
	sets.TP.Normal = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Rep. Plat. Medal",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Ebers Pant. +2",
		feet = "Ebers Duckbills +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Volte Cap"}

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Archduke's Shield"}
	sets.Weapon.Pandit = {main = "Pandit's Staff", sub = "Enki Strap"}
	sets.Weapon.LorgMor = {main = "Lorg Mor", sub = "Archduke's Shield"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ayanmo Ring",
		right_ring = "Rajas Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "MND+10", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	enable("main", "sub")
	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC)
		if string.find(spell.english, "Cur") then
			equip(sets.precast.Cure)
		end
		if spell.skill == "Enhancing Magic" then
			equip(sets.precast.EnhancingMagic)
		end
		if Spell_Map[spell.english] == "StatusRemoval" then
			equip(sets.precast.StatusRemoval)
		end
	end
end

function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.midcast.Cure)
	elseif string.find(spell.english, "Regen") then
		equip(sets.midcast.Regen)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.midcast.Debuff)
	elseif Spell_Map[spell.english] == "StatusRemoval" then
		equip(sets.midcast.StatusRemoval)
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
	if string.find(spell.english, "Dia") then
		equip(sets.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	else
		equip(sets.Idle[Idle_map[Idle_mode]])
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	elseif new == "Idle" or new == "Resting" then
		equip(sets.Idle[Idle_map[Idle_mode]])
		if buffactive["Sublimation: Activated"] then
			equip(sets.Idle.Sublimation)
		end
	end
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
	elseif cmd_array[1] == "idle" then
		Idle_mode = Idle_mode + 1
		if Idle_mode > #Idle_map then
			Idle_mode = 1
		end
		equip(sets.Idle[Idle_map[Idle_mode]])
		windower.add_to_chat("Idle mode is now: " .. Idle_map[Idle_mode])
	elseif cmd_array[1] == "mode" then
		if type(cmd_array[2]) == "string" then
			for index, name in pairs(mode_map) do
				if name:lower() == cmd_array[2] then
					mode = index
				end
			end
		else
			mode = mode + 1
		end
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		if mode == 2 then -- Disable main and sub in Melee mode
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		else
			enable("main", "sub")
		end
	elseif cmd_array[1] == "weapon" then
		if type(cmd_array[2]) == "string" then
			for index, name in pairs(Weapon_map) do
				if name:lower() == cmd_array[2] then
					Weapon_mode = index
				end
			end
		else
			Weapon_mode = Weapon_mode + 1
		end
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		if mode == 2 then
			enable("main", "sub")
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		end
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	send_command("input /macro book 3;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end

