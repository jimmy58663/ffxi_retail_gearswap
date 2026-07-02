include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")
local MagicBurst_Window = false
local MagicBurst_Window_Expires = 0
local MagicBurst_Timer_Running = false

function get_sets()
	sets.JA = {}
	sets.JA.Saboteur = {hands = "Leth. Ganth. +2"}

	sets.TP = {}
	-- Modes
	mode_map = {[1] = "Melee", [2] = "Support"}
	mode = 1

	TP_map = {[1] = "Normal", [2] = "Hybrid", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {
		[1] = "Crocea",
		[2] = "Naegling",
		[3] = "Maxentius",
		[4] = "CroceaDW",
		[5] = "NaeglingDW",
		[6] = "MaxentiusDW",
	}
	Weapon_mode = 4

	sets.Weapon = {}
	sets.Weapon.Crocea = {main = "Crocea Mors", sub = "Genbu's Shield"}
	sets.Weapon.Naegling = {main = "Kaja Sword", sub = "Genbu's Shield"}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Genbu's Shield"}
	sets.Weapon.CroceaDW = {main = "Crocea Mors", sub = "Wizard's Rod"} -- sub="Daybreak"}
	sets.Weapon.NaeglingDW = {main = "Kaja Sword", sub = "Wizard's Rod"}
	sets.Weapon.MaxentiusDW = {main = "Maxentius", sub = "Wizard's Rod"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Aya. Zucchetto +2",
		neck = "Dls. Torque +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Lethargy Sayon +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Enlivened Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
	}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Dls. Torque +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Lethargy Sayon +2",
		hands = "Aya. Manopolas +2",
		left_ring = "Enlivened Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	sets.Precast = {}
	sets.Precast.FC = {
		-- 38% traits, 80% cap
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 4%
		left_ring = "Medada's Ring", -- 10%
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
	}

	sets.Precast.Cure = {}

	sets.Precast.ElementalMagic = {}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.EnfeeblingMagic = {head = "Leth. Chappel +1"}

	sets.Midcast = {}
	sets.Midcast.Cure = {main = "Bunzi's Rod"}

	sets.Midcast.Debuff = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.LowNuke = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.HighNuke = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Ea Hat",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Ea Pigaches",
	}

	sets.Midcast.MagicBurst = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Ea Hat",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Ea Gauntlets",
		left_ring = "Medada's Ring",
		right_ring = "Mujin Band",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Obstin. Sash",
		legs = "Jhakri Slops +2",
		feet = "Ea Pigaches",
	}

	sets.Midcast.Stun = {
		main = "Wizard's Rod",
		range = "Kaja Bow",
		head = "Jhakri Coronal +2",
		neck = "Dls. Torque +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Sucellos's Cape", augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Fast Cast\"+10"}},
		waist = "Eschan Stone",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.Midcast.Buff = {
		head = "Leth. Chappel +1",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		legs = "Leth. Fuseau +1",
		feet = "Leth. Houseaux +1",
	}

	sets.Midcast.Refresh = {legs = "Leth. Fuseau +1"}

	sets.Midcast.Obis = {}
	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	-- sets.Midcast.Obis.Ice = {waist="Hyorin Obi"}
	-- sets.Midcast.Obis.Lightning = {waist="Rairin Obi"}
	-- sets.Midcast.Obis.Light = {waist="Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm", -- head="Viti. Chapeau +4",
		neck = "Dls. Torque +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets", -- hands="Atro. Gloves +4",
		left_ring = "Vehemence Ring",
		right_ring = "Rajas Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets", -- feet="Leth. Hoseaux +3",
	}

	sets.WS["Sanguine Blade"] = {
		ammo = "Sroda Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Sibyl Scarf", -- neck="Baetyl Pendant",
		-- left_ear="Regal Earring",
		right_ear = "Malignance Earring",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		right_ring = "Archon Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard", -- legs="Leth. Fuseau +3",
	}

	sets.WS["Seraph Blade"] = {
		ammo = "Sroda Tathlum",
		-- head="Leth. Chappel +3",
		neck = "Sibyl Scarf", -- neck="Fotia Gorget",
		right_ear = "Malignance Earring",
		body = "Nyame Mail",
		hands = "Leth Ganth. +2",
		left_ring = "Medada's Ring",
		-- right_ring="Karieyah Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard",
	}

	sets.WS["Red Lotus Blade"] = {
		ammo = "Sroda Tathlum",
		-- head="Leth. Chappel +3",
		neck = "Sibyl Scarf",
		right_ear = "Malignance Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		-- right_ring="Freke Ring",
		back = {name = "Sucellos's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}}, -- Should be INT
		waist = "Orpheus's Sash",
		legs = "Nyame Flanchard",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Lethargy Sayon +2",
		hands = "Leth. Ganth. +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	enable("main", "sub")
	sub_job_change(player.sub_job, "NON")
end

local function affinity_check(element)
	if element == world.weather_element or element == world.day_element and sets.Midcast.Obis[element] then
		equip(sets.Midcast.Obis[element])
	end
	-- if set.Midcast[element] then equip(set.Midcast[element]) end
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
	if spell.action_type == "Magic" then
		equip(sets.Precast.FC)
		if string.find(spell.english, "Cur") then
			equip(sets.Precast.Cure)
		elseif spell.skill == "Elemental Magic" then
			equip(sets.Precast.ElementalMagic)
		elseif spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		elseif spell.skill == "Enfeebling Magic" then
			equip(sets.Precast.EnfeeblingMagic)
		end
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
		if buffactive["Saboteur"] then
			equip(sets.JA.Saboteur)
		end
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.Midcast.Buff)
		if string.find(spell.english, "Refresh") then
			equip(sets.Midcast.Refresh)
		end
	elseif spell.skill == "Elemental Magic" then
		if Common_Maps.Nuke[spell.english] == "LowNuke" then
			equip(sets.Midcast.LowNuke)
		elseif Common_Maps.Nuke[spell.english] == "HighNuke" then
			equip(sets.Midcast.HighNuke)
		end
		if MagicBurst_Window then
			equip(sets.Midcast.MagicBurst)
		end
		affinity_check(spell.element)
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end
	if string.find(spell.english, "Dia") or string.find(spell.english, "Bio") then
		equip(sets.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	else
		equip(sets.Idle)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
	elseif new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
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
	elseif cmd_array[1] == "mode" then
		if (cmd_array[2] ~= nil) then
			mode = tonumber(cmd_array[2])
		else
			mode = mode + 1
		end
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		if mode == 1 then -- Disable main and sub in Melee mode
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub", "range")
		else
			enable("main", "sub", "range")
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
		if mode == 1 then
			enable("main", "sub", "range")
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub", "range")
		end
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 5;wait .1;input /macro set 1")
		Weapon_mode = 4
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	elseif new == "DRK" then
		send_command("input /macro book 5;wait .1;input /macro set 3")
	else
		send_command("input /macro book 5;wait .1;input /macro set 1")
	end
	if mode == 1 then
		enable("main", "sub", "range")
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		disable("main", "sub", "range")
	else
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	end
	send_command("@wait 5;input /lockstyleset 3")
end

windower.register_event("incoming chunk", function(id, data)
	if id == 0x28 then -- Action Packet
		local packet = windower.packets.parse_action(data)
		if Common_Funcs.Is_In_Party(packet.actor_id) then
			for _, target in pairs(packet.targets) do
				for _, action in pairs(target.actions) do
					-- Check for Skillchain message IDs (usually 288-302, 385-402, etc.)
					if action.has_add_effect and Common_Maps.SkillchainEffects:contains(action.add_effect_message) then
						-- Activate Magic Burst Mode
						MagicBurst_Window = true
						add_to_chat(204, "Skillchain Detected! Magic Burst Window Open.")
						MagicBurst_Window_Expires = os.time() + 10 -- Set the expiration time for the Magic Burst window

						if not MagicBurst_Timer_Running then
							MagicBurst_Timer_Running = true
							coroutine.schedule(function()
								while os.clock() < MagicBurst_Window_Expires do
									coroutine.sleep(0.5)
								end
								MagicBurst_Window = false
								MagicBurst_Timer_Running = false
								add_to_chat(123, "Magic Burst Window Closed.")
							end, 0.5)
						end
					end
				end
			end
		end
	end
end)

function buff_change(buff, gain)
	local buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
