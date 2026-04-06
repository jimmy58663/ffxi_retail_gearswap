include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Souleater = {head = "Ig. Burgeonet +2"}
	sets.JA["Weapon Bash"] = {hands = "Ig. Gauntelets +2"}
	sets.JA["Arcane Circle"] = {feet = "Ig. Sollerets +2"}
	sets.JA["Last Resort"] = {
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		feet = "Fall. Sollerets +2",
	}
	sets.JA["Diabolic Eye"] = {hands = "Fall. Fin. Gaunt. +2"}
	sets.JA["Dark Seal"] = {head = "Fall. Burgeonet +2"}
	sets.JA["Blood Weapon"] = {body = "Fall. Cuirass +2"}

	sets.TP = {}

	TP_map = {[1] = "Normal", [2] = "Hybrid", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Apocalypse", [2] = "Nandaka", [3] = "Naegling", [4] = "Loxotic"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Apocalypse = {main = "Apocalypse", sub = "Utu Grip"}
	sets.Weapon.Nandaka = {main = "Kaja Claymore", sub = "Utu Grip"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Blurred Shield +1"}
	sets.Weapon.Loxotic = {main = "Loxotic Mace +1", sub = "Blurred Shield +1"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Abyssal Beads +1",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Flamma Dirs +2",
		feet = "Flam. Gambieras +2",
	}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Abyssal Beads +1",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.TP.DT = sets.DT

	sets.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Knobkierrie",
		head = "Ratri Sallet",
		neck = "Abyssal Beads +1",
		left_ear = "Moonshade Earring",
		right_ear = "Heath. Earring +1",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Sroda Ring",
		back = {name = "Ankou's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Torcleaver"] = {
		back = {name = "Ankou's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
	}

	sets.WS["Herculean Slash"] = {
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		back = {name = "Ankou's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
	}

	sets.WS["Resolution"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.WS["Entropy"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.WS["Guillotine"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.DT = {
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.TP.DT = sets.DT

	sets.Absorb = {
		head = "Ig. Burgeonet +2",
		neck = "Erra Pendant",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
	}

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.english:contains("Dia") or spell.english:contains("Bio") then
		equip(sets.TH)
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.skill == "Dark Magic" then
		if string.find(spell.english, "Absorb") then
			equip(sets.Absorb)
		end
		if buffactive["Dark Seal"] then
			equip(sets.JA["Dark Seal"])
		end
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
	if cmd_array[1] == "dt" then
		equip(sets.DT)
	elseif cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
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
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 8;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 8;wait .1;input /macro set 2")
	elseif new == "THF" then
		send_command("input /macro book 8;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 8;wait .1;input /macro set 4")
	else
		send_command("input /macro book 8;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 4")
end
