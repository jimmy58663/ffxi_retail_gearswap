include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")

function get_sets()
	sets.JA = {}
	-- sets.JA.Devotion = {head="Piety Cap",}
	-- sets.JA.Martyr = {hands="Piety Mitts",}
	-- sets.JA.Benediction = {body="Piety Bliaut",}

	-- Modes
	mode_map = {[1] = "Support", [2] = "Melee"}
	mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Bunzi"}
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
		head = "Bunzi's Hat", -- 10%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		right_ring = "Kishar Ring", -- 4%
		legs = "Aya. Cosciales +2", -- 6%
		back = {name = "Alaunus's Cape", augments = {"\"Fast Cast\"+10"}},
	}

	sets.precast.Cure = {neck = "Aceso's Choker +1", legs = "Orsn. Pantaln. +2"}

	sets.precast.StatusRemoval = {legs = "Orsn. Pantaln. +2"}

	sets.precast.EnhancingMagic = {}
	-- Midcast Sets
	sets.Midcast = {}
	sets.Midcast.Haste = {
		head = "Aya. Zucchetto +2",
		body = "Inyanga Jubbah +2",
		hands = "Inyan. Dastanas +2",
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.Midcast.Debuff = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Inyanga Tiara +2",
		neck = "Phalaina Locket",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Inyanga Jubbah +2",
		hands = "Inyan. Dastanas +2",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Cascade Belt",
		legs = "Inyanga Shalwar +2",
		feet = "Inyan. Crackows +2",
	}

	sets.Midcast.Cure = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Regen = {
		main = "Bolelabunga",
		sub = "Archduke's Shield",
		head = "Inyanga Tiara +2",
		-- body="Piety Bliaut",
		hands = "Orison Mitts +2",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Theo. Pantaloons",
		feet = "Bunzi's Sabots",
	}

	sets.Midcast.Stoneskin = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Cursna = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Aceso's Choker +1",
		left_ear = "Orison Earring",
		right_ear = "Malignance Earring",
		body = "Orison Bliaut +2",
		hands = {name = "Telchine Gloves", augments = {"\"Cure\" potency +7%"}},
		left_ring = "Inyanga Ring",
		right_ring = "Kishar Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		legs = "Orsn. Pantaln. +2",
		feet = "Nyame Sollerets",
	}

	sets.Midcast.Auspice = {feet = "Orsn. Duckbills +2"}

	sets.Midcast.StatusRemoval = {head = "Orison Cap +2", hands = "Orison Mitts +2", legs = "Orsn. Pantaln. +2"}

	sets.Midcast.BarElement = {
		head = "Orison Cap +2",
		body = "Orison Bliaut +2",
		hands = "Orison Mitts +2",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20/Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Embla Sash",
		legs = "Orsn. Pantaln. +2",
		feet = "Orsn. Duckbills +2",
	}

	sets.Midcast.BarStatus = {
		-- waist="Embla Sash",
	}

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Volte Cap",
	}
	-- Aftercast Sets
	sets.DT = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Murky Ring",
		right_ring = "Inyanga Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Bunzi's Pants",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {}
	sets.Idle.Refresh = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Inyanga Jubbah +2",
		hands = "Bunzi's Gloves",
		left_ring = "Murky Ring",
		right_ring = "Inyanga Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Bunzi's Pants",
		feet = "Nyame Sollerets",
	}

	sets.Idle.DT = {
		main = "Bunzi's Rod",
		sub = "Archduke's Shield",
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		left_ring = "Murky Ring",
		right_ring = "Inyanga Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Bunzi's Pants",
		feet = "Nyame Sollerets",
	}

	sets.Idle.Sublimation = {
		-- waist="Embla Sash",
	}

	sets.TP = {}
	sets.TP.Normal = {
		ammo = "Kalboron Stone",
		head = "Bunzi's Hat",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Kaja Rod", sub = "Archduke's Shield"}
	sets.Weapon.Bunzi = {main = "Bunzi's Rod", sub = "Archduke's Shield"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ayanmo Ring",
		right_ring = "Rajas Ring",
		back = {name = "Alaunus's Cape", augments = {"MND+20", "Eva.+20 /Mag. Eva.+20", "\"Cure\" potency +10%"}},
		-- waist="Austerity Belt",
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
	if sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif string.find(spell.english, "Regen") then
		equip(sets.Midcast.Regen)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
	elseif Spell_Map[spell.english] == "StatusRemoval" then
		equip(sets.Midcast.StatusRemoval)
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
	end
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if string.lower(cmd_array[1]) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
	elseif string.lower(cmd_array[1]) == "idle" then
		Idle_mode = Idle_mode + 1
		if Idle_mode > #Idle_map then
			Idle_mode = 1
		end
		equip(sets.Idle[Idle_map[Idle_mode]])
		windower.add_to_chat("Idle mode is now: " .. Idle_map[Idle_mode])
	elseif string.lower(cmd_array[1]) == "mode" then
		if (cmd_array[2] ~= nil) then
			mode = tonumber(cmd_array[2])
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
	elseif string.lower(command) == "weapon" then
		Weapon_mode = Weapon_mode + 1
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		if mode == 2 then
			enable("main", "sub")
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		end
	elseif string.lower(command:contains("craft")) then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	send_command("input /macro book 3;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
