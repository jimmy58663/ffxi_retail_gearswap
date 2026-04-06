include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Fold = {hands = "Lanun Gants +1"}
	sets.JA["Snake Eye"] = {legs = "Lanun Trews +1"}
	sets.JA["Wild Card"] = {feet = "Lanun Bottes +2"}
	sets.JA["Random Deal"] = {body = "Lanun Frac +2"}
	sets.JA["Quick Draw"] = {
		ammo = "Animikii Bullet",
		head = "Nyame Helm", -- Ikenga's?
		neck = "Comm. Charm +1",
		left_ear = "Moonshade Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets", -- hands="Carmine Fin. Ga. +1",
		-- left_ring="Fenrir Ring +1",
		-- right_ring="Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
		legs = "Nyame Flanchard",
		feet = "Chass. Bottes +2", -- feet="Lanun Bottes +2", --More raw dmg, but no utility
	}

	sets.JA.CorsairRoll = {
		main = {name = "Rostam", augments = {"Path: C"}},
		range = "Compensator",
		head = "Lanun Tricorne +1",
		-- neck="Regal Necklace",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster",
		-- body="Malignance Tabard",
		hands = "Chasseur's Gants +2",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Chas. Culottes +2",
		-- feet="Malignance Boots",
	}

	sets.JA["Caster's Roll"] = {legs = "Chas. Culottes +2"}
	sets.JA["Courser's Roll"] = {feet = "Chass. Bottes +2"}
	sets.JA["Blitzer's Roll"] = {head = "Chass. Tricorne +2"}
	sets.JA["Tactician's Roll"] = {body = "Chasseur's Frac +2"}
	sets.JA["Allies' Roll"] = {hands = "Chasseur's Gants +2"}
	sets.JA.Luzaf = {left_ring = "Luzaf's Ring"}

	rolls = {
		["Corsair's Roll"] = {lucky = 5, unlucky = 9, bonus = "Experience Points"},
		["Ninja Roll"] = {lucky = 4, unlucky = 8, bonus = "Evasion"},
		["Hunter's Roll"] = {lucky = 4, unlucky = 8, bonus = "Accuracy"},
		["Chaos Roll"] = {lucky = 4, unlucky = 8, bonus = "Attack"},
		["Magus's Roll"] = {lucky = 2, unlucky = 6, bonus = "Magic Defense"},
		["Healer's Roll"] = {lucky = 3, unlucky = 7, bonus = "Cure Potency Received"},
		["Drachen Roll"] = {lucky = 4, unlucky = 8, bonus = "Pet Magic Accuracy/Attack"},
		["Choral Roll"] = {lucky = 2, unlucky = 6, bonus = "Spell Interruption Rate"},
		["Monk's Roll"] = {lucky = 3, unlucky = 7, bonus = "Subtle Blow"},
		["Beast Roll"] = {lucky = 4, unlucky = 8, bonus = "Pet Attack"},
		["Samurai Roll"] = {lucky = 2, unlucky = 6, bonus = "Store TP"},
		["Evoker's Roll"] = {lucky = 5, unlucky = 9, bonus = "Refresh"},
		["Rogue's Roll"] = {lucky = 5, unlucky = 9, bonus = "Critical Hit Rate"},
		["Warlock's Roll"] = {lucky = 4, unlucky = 8, bonus = "Magic Accuracy"},
		["Fighter's Roll"] = {lucky = 5, unlucky = 9, bonus = "Double Attack Rate"},
		["Puppet Roll"] = {lucky = 3, unlucky = 7, bonus = "Pet Magic Attack/Accuracy"},
		["Gallant's Roll"] = {lucky = 3, unlucky = 7, bonus = "Defense"},
		["Wizard's Roll"] = {lucky = 5, unlucky = 9, bonus = "Magic Attack"},
		["Dancer's Roll"] = {lucky = 3, unlucky = 7, bonus = "Regen"},
		["Scholar's Roll"] = {lucky = 2, unlucky = 6, bonus = "Conserve MP"},
		["Naturalist's Roll"] = {lucky = 3, unlucky = 7, bonus = "Enh. Magic Duration"},
		["Runeist's Roll"] = {lucky = 4, unlucky = 8, bonus = "Magic Evasion"},
		["Bolter's Roll"] = {lucky = 3, unlucky = 9, bonus = "Movement Speed"},
		["Caster's Roll"] = {lucky = 2, unlucky = 7, bonus = "Fast Cast"},
		["Courser's Roll"] = {lucky = 3, unlucky = 9, bonus = "Snapshot"},
		["Blitzer's Roll"] = {lucky = 4, unlucky = 9, bonus = "Attack Delay"},
		["Tactician's Roll"] = {lucky = 5, unlucky = 8, bonus = "Regain"},
		["Allies' Roll"] = {lucky = 3, unlucky = 10, bonus = "Skillchain Damage"},
		["Miser's Roll"] = {lucky = 5, unlucky = 7, bonus = "Save TP"},
		["Companion's Roll"] = {lucky = 2, unlucky = 10, bonus = "Pet Regain and Regen"},
		["Avenger's Roll"] = {lucky = 4, unlucky = 8, bonus = "Counter Rate"},
	}

	sets.TP = {}
	sets.TP.Ranged = {}

	Ranged = false
	Luzaf = true

	TP_map = {[1] = "Normal", [2] = "Hybrid", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Earp", [2] = "Naegling", [3] = "NaeglingDW", [4] = "OnionDW"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Earp = {
		main = {name = "Lanun Knife", augments = {"Path: A"}},
		sub = "Nusku Shield",
		range = "Earp",
		ammo = "Eminent Bullet",
	}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Nusku Shield", range = "Ataktos", ammo = "Eminent Bullet"}
	sets.Weapon.NaeglingDW = {main = "Naegling", sub = "Gleti's Knife", range = "Ataktos", ammo = "Eminent Bullet"}
	sets.Weapon.OnionDW = {main = "Onion Sword III", sub = "Gleti's Knife", range = "Ataktos", ammo = "Eminent Bullet"}

	sets.TP.Normal = {
		head = "Malignance Chapeau",
		neck = "Iskur Gorget",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Petrov Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.Ranged.Normal = {
		head = "Ikenga's Hat",
		neck = "Iskur Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Ikenga's Vest", -- body="Nisroch Jerkin",
		hands = "Ikenga's Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "\"Store TP\"+10", "Mag. Evasion+15"},
		},
		waist = "Tellen Belt",
		legs = "Chas. Culottes +2",
		feet = "Ikenga's Clogs",
	}

	sets.TP.Hybrid = {
		head = "Malignance Chapeau",
		neck = "Iskur Gorget",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Mummu Ring",
		right_ring = "Petrov Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Nyame Sollerets",
	}

	sets.TP.Ranged.Hybrid = {
		head = "Malignance Chapeau",
		neck = "Iskur Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nisroch Jerkin",
		hands = "Ikenga's Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "\"Store TP\"+10", "Mag. Evasion+15"},
		},
		waist = "Tellen Belt",
		legs = "Chas. Culottes +2",
		feet = "Ikenga's Clogs",
	}

	sets.TP.DT = sets.DT

	sets.TP.Ranged.DT = sets.DT

	sets.TP.Ranged.PreShot = {
		head = "Ikenga's Hat", -- 6 --Chass. Tricorne +2 --(Rapid Shot +18)
		neck = "Comm. Charm +1", -- 3
		body = "Ikenga's Vest", -- 9
		hands = "Lanun Gants +1", -- 9
		right_ring = "Crepuscular Ring", -- 3
		back = {name = "Camulus's Mantle", augments = {"\"Snapshot\"+10"}},
		-- waist="Impulse Belt", --3
		legs = "Laksa. Trews +3", -- 15
		feet = "Meg. Jam. +2", -- 10
	}

	sets.TP.Ranged.TripleShot = {
		head = "Oshosi Mask",
		body = "Chasseur's Frac +2",
		back = {
			name = "Camulus's Mantle",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "\"Store TP\"+10", "Mag. Evasion+15"},
		},
		legs = "Oshosi Trousers",
		feet = "Oshosi Leggings",
	}

	sets.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm", -- head="Lanun Tricorne +4",
		neck = "Iskur Gorget", -- neck="Fotia Gorget",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring", -- right_ear="Ishvara Earring",
		body = "Laksa Frac +3", -- body="Ikenga's Vest", --Augment tp +200
		hands = "Chasseur's Gants +2",
		left_ring = "Cornelia's Ring",
		right_ring = "Petrov Ring", -- right_ring="Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1", -- waist="Fotia Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets", -- feet="Lanun Bottes +2", --+3 and higher
	}

	sets.WS["Savage Blade"] = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		-- right_ear="Ishvara Earring",
		-- body="Nyame Mail", --R20+
		-- right_ring="Regal Ring",
		back = {name = "Camulus's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		feet = "Nyame Sollerets",
	}

	sets.WS["Fast Blade II"] = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		right_ear = "Brutal Earring",
		-- body="Nyame Mail", --R20+
		hands = "Mummu Wrists +2",
		right_ring = "Ilabrat Ring", -- right_ring="Regal Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		feet = "Nyame Sollerets",
	}

	sets.WS["Hot Shot"] = {
		head = "Nyame Helm",
		-- neck="Fotia Gorget",
		-- left_ear="Moonshade Earring",
		right_ear = "Friomisi Earring",
		-- body="Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Meghanada Ring", -- right_ring="Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Fotia Belt",
	}

	sets.WS["Leaden Salute"] = {
		head = "Pixie Haripin +1",
		neck = "Comm. Charm +1",
		-- left_ear="Moonshade Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets",
		left_ring = "Cornelia's Ring", -- right_ring="Dingir Ring",
		right_ring = "Archon Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
	}

	sets.WS["Wildfire"] = {
		head = "Nyame Helm",
		neck = "Comm. Charm +1",
		-- left_ear="Crematio Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets",
		right_ring = "Meghanada Ring", -- right_ring="Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
	}

	sets.Idle = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Mummu Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Mummu Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

local function check_cards()
	local cards = player.inventory["Trump Card"]
	local card_count = (cards and cards.count) or 0
	local case = player.inventory["Trump Card Case"]
	if card_count < 5 and case then
		add_to_chat(122, "Trump Card count low (" .. card_count .. "). Opening case...")
		send_command("input /item \"Trump Card Case\" <me>")
	end
end

local function check_ammo()
	local ammo = player.inventory["Eminent Bullet"]
	local ammo_count = (ammo and ammo.count) or 0
	local pouch = player.inventory["Em. Bul. Pouch"]
	if ammo_count < 5 and pouch then
		add_to_chat(122, "Ammo count low (" .. ammo_count .. "). Opening pouch...")
		send_command("input /item \"Em. Bul. Pouch\" <me>")
	end
end

function precast(spell)
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged.PreShot)
		if player.equipment.ammo == "Animikii Bullet" then
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			cancel_spell()
		end
	elseif spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
end

function midcast(spell)
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	end
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.english:contains("Dia") then
		equip(sets.TH)
	elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged[TP_map[TP_mode]])
		if buffactive["Triple Shot"] then
			equip(sets.TP.Ranged.TripleShot)
		end
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		if Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		else
			equip(sets.TP[TP_map[TP_mode]])
		end
	else
		equip(sets.Idle)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" and not spell.interrupted then
		display_roll_info(spell)
	end
	check_cards()
	check_ammo()
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
	elseif new == "Engaged" then
		if Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		else
			equip(sets.TP[TP_map[TP_mode]])
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if cmd_array[1] == "dt" then
		equip(sets.DT)
	elseif cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif cmd_array[1] == "ranged" then
		Ranged = not Ranged
		windower.add_to_chat("Ranged mode is now: " .. (Ranged and "ON" or "OFF"))
		if Ranged then
			Weapon_mode = 1
		else
			Weapon_mode = 3
		end
		if player.status == "Engaged" and Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		elseif player.status == "Engaged" then
			equip(sets.TP[TP_map[TP_mode]])
		else
			equip(sets.Idle)
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
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
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		if Weapon_mode == 1 then
			Ranged = true
		else
			Ranged = false
		end
	elseif cmd_array[1] == "luzaf" then
		Luzaf = not Luzaf
		windower.add_to_chat("Luzaf mode is now: " .. (Luzaf and "ON" or "OFF"))
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function display_roll_info(spell)
	local rollinfo = rolls[spell.english]
	if rollinfo then
		windower.add_to_chat(104, spell.english .. " provides: " .. rollinfo.bonus .. " L: " .. rollinfo.lucky .. " U: " ..
						                     rollinfo.unlucky)
	end
end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 17;wait .1;input /macro set 1")
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 17;wait .1;input /macro set 1")
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "WAR" then
		send_command("input /macro book 17;wait .1;input /macro set 2")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 17;wait .1;input /macro set 2")
	else
		send_command("input /macro book 17;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

