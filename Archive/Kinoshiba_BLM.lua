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

	-- Modes
	mode_map = {[1] = "WeaponUnlocked", [2] = "WeaponLocked"}
	mode = 1

	Weapon_map = {[1] = "Wizard", [2] = "Maxentius", [3] = "Marin"}
	Weapon_mode = 1

	Idle_map = {[1] = "Refresh", [2] = "DT"}
	Idle_mode = 1

	TP_map = {[1] = "Normal", [2] = "DT"}
	TP_mode = 1

	-- Precast Sets
	sets.Precast = {}
	sets.Precast.FC = {
		head = "Agwu's Cap", -- 5%
		-- neck = "Voltsurge Torque", -- 4%
		left_ear = "Malignance Earring", -- 4%
		right_ear = "Etiolation Earring", -- 1%
		body = "Agwu's Robe", -- 8%
		hands = "Agwu's Gages", -- 6%
		left_ring = "Medada's Ring", -- 10%
		right_ring = "Weather. Ring", -- 5%
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Agwu's Slops", -- 7%
		feet = "Agwu's Pigaches", -- 4%
	}

	sets.Precast.ElementalMagic = {
		head = "Wicce Petasos +2", -- 16%
		body = "Wicce Coat +2", -- 15%
		feet = "Mallquis Clogs +2", -- 6%
	}

	sets.Precast.EnhancingMagic = {}

	sets.Precast.Impact = {body = "Crepuscular Cloak"}
	-- Midcast Sets
	sets.Midcast = {}
	sets.Midcast.Debuff = {
		main = "Wizard's Rod",
		head = "Wicce Petasos +2",
		ammo = "Ombre Tathlum +1",
		neck = "Src. Stole +1",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Rumination Sash",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.Stun = {
		main = "Wizard's Rod",
		head = "Wicce Petasos +2",
		ammo = "Ombre Tathlum +1",
		neck = "Src. Stole +1",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.LowNuke = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Sroda Tathlum",
		head = "Wicce Petasos +2", -- head="Agwu's Cap",
		neck = "Sibyl Scarf",
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2", -- Spaekona's utility MP back
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Jhakri Ring", -- right_ring="Metamor. Ring +1",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2", -- feet="Agwu's Pigaches",
	}

	sets.Midcast.HighNuke = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ghastly Tathlum +1",
		head = "Wicce Petasos +2", -- head="Agwu's Cap",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2", -- hands="Agwu's Gages",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Jhakri Ring", -- right_ring="Mujin Band",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.Midcast.MagicBurst = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ghastly Tathlum +1",
		head = "Ea Hat +1",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2",
		hands = "Ea Cuffs", -- hands="Agwu's Gages",
		left_ring = "Medada's Ring", -- left_ring="Freke Ring",
		right_ring = "Mujin Band",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1", -- waist="Sacro Cord",
		legs = "Wicce Chausses +2", -- legs="Arch. Tonban +4",
		feet = "Ea Pigaches", -- feet="Agwu's Pigaches",--feet="Wicce Sabots +3",
	}

	sets.Midcast.EleDot = {
		main = "Wizard's rod",
		-- sub="Ammurapi Shield",
		ammo = "Ombre Tathlum +1", -- ammo="Pemphedro Tathlum",
		head = "Mall. Chapeau +2", -- head="Agwu's Cap",--head="Wicce Petasos +3",
		neck = "Src. Stole +1", -- +2
		left_ear = "Malignance Earring",
		right_ear = "Wicce Earring +2",
		body = "Mallquis Saio +2", -- body="Agwu's Robe",--body="Spaekona's Coat +4",
		hands = "Mallquis Cuffs +2", -- hands="Agwu's Gages",--hands="Spae. Gloves +4"
		left_ring = "Medada's Ring", -- left_ring="Stikini Ring +1",
		right_ring = "Jhakri Ring", -- right_ring="Stikini Ring +1",
		back = {
			name = "Taranus's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "INT+10", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		}, -- back="Aurist's Cape +1",
		waist = "Acuity Belt +1",
		legs = "Arch. Tonban +2",
		feet = "Arch Sabots +2",
	}

	sets.Midcast.Cure = {
		main = "Bunzi's Rod", -- 30%
	}

	sets.Midcast.Stoneskin = {
		head = "Mall. Chapeau +2",
		neck = "Src. Stole +1",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.Midcast.Impact = {body = "Crepuscular Cloak"}

	sets.Midcast.Obis = {}
	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	-- sets.Midcast.Obis.Ice = {waist="Hyorin Obi"}
	-- sets.Midcast.Obis.Lightning = {waist="Rairin Obi"}
	-- sets.Midcast.Obis.Light = {waist="Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	sets.Midcast.Dark = {
		-- main="Rubicundity",
		-- sub="Ammurapi Shield",
		ammo = "Ombre Tathlum +1", -- ammo="Pemphedro Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Src. Stole +1", -- neck="Erra Pendant",
		left_ear = "Malignance Earring", -- left_ear="Hirudinea Earring",
		right_ear = "Wicce Earring +2",
		body = "Wicce Coat +2", -- body="Shango Robe",
		hands = "Wicce Gloves +2", -- hands="Merlinic Dastanas", --Oseem Drain/Aspir Potency +10%
		left_ring = "Medada's Ring", -- Evanescence Ring
		right_ring = "Archon Ring",
		back = "Aurist's Cape +1",
		waist = "Acuity Belt +1", -- waist="Fucho-no-Obi",
		legs = "Wicce Chausses +2", -- legs="Spaekona's Tonban +3",
		feet = "Agwu's Pigaches",
	}
	-- Aftercast Sets
	sets.DT = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {}
	sets.Idle.Refresh = {
		main = "Wizard's Rod",
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Wicce Sabots +2",
	}

	sets.Idle.DT = {
		main = "Wizard's Rod",
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Nyame Mail",
		hands = "Wicce Gloves +2",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Wicce Sabots +2",
	}

	sets.Idle.Sublimation = {
		-- waist="Embla Sash",
	}

	sets.TP = {}
	sets.TP.Normal = {
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Src. Stole +1",
		left_ear = "Brutal Earring",
		right_ear = "Suppanomimi",
		body = "Wicce Coat +2",
		hands = "Wicce Gloves +2",
		left_ring = "Rajas Ring",
		right_ring = "Jhakri Ring",
		waist = "Eschan Stone",
		legs = "Wicce Chausses +2",
		feet = "Wicce Sabots +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius"}
	sets.Weapon.Wizard = {main = "Wizard's Rod"}
	sets.Weapon.Marin = {main = "Marin Staff +1", sub = "Enki Strap"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Ombre Tathlum +1",
		head = "Nyame Helm",
		neck = "Src. Stole +1",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Rajas Ring",
		right_ring = "Vehemence Ring",
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS.Myrkr = {
		ammo = "Ghastly Tathlum +1",
		head = "Pixie Hairpin +1",
		neck = {name = "Src. Stole +1", augments = {"Path: A"}},
		left_ear = "Moonshade Earring",
		right_ear = "Etiolation Earring",
		body = "Wicce Coat +2",
		hands = "Nyame Gauntlets",
		left_ring = "Medada's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Taranus's Cape",
			augments = {"MP+60", "Eva.+20 /Mag. Eva.+20", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Acuity Belt +1",
		legs = "Wicce Chausses +2",
		feet = "Nyame Sollerets",
	}

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
	if spell.action_type == "Magic" then
		equip(sets.Precast.FC)
		if spell.skill == "Elemental Magic" then
			equip(sets.Precast.ElementalMagic)
		end
		if spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		end
		if spell.english == "Impact" then
			equip(sets.Precast.Impact)
		end
	end
end

function midcast(spell)
	if sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
	elseif spell.skill == "Elemental Magic" then
		if Common_Maps.Nuke[spell.english] == "LowNuke" then
			equip(sets.Midcast.LowNuke)
		elseif Common_Maps.Nuke[spell.english] == "HighNuke" then
			equip(sets.Midcast.HighNuke)
			if spell.english == "Impact" then
				equip(sets.Midcast.Impact)
			end
		elseif Common_Maps.Nuke[spell.english] == "EleDot" then
			equip(sets.Midcast.EleDot)
		end
		if MagicBurst_Window then
			equip(sets.Midcast.MagicBurst)
		end
		affinity_check(spell.element)
	elseif spell.skill == "Dark Magic" then
		equip(sets.Midcast.Dark)
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
		mode = mode + 1
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		if mode == 2 then -- Disable main and sub in Weapon_Locked mode
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
	send_command("input /macro book 4;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 4")
end

function buff_change(buff, gain, buff_details)
	local buff_name = buff:lower()
	if buff_name == "sublimation: activated" and gain then
		equip(sets.Idle.Sublimation)
	elseif buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
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
