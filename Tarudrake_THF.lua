include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Flee = {feet = "Pill. Poulaines +3"}
	sets.JA.Steal = {
		head = "Plun. Bonnet",
		hands = "Pill. Armlets +3",
		legs = "Pill. Culottes +3",
		feet = "Pill. Poulaines +3",
	}
	sets.JA.Mug = {head = "Plun. Bonnet"}
	sets.JA.Hide = {body = "Pillager's Vest +3"}
	sets.JA["Perfect Dodge"] = {hands = "Plun. Armlets"}
	sets.JA.Feint = {legs = "Plun. Culottes"}
	sets.JA["Assassin's Charge"] = {feet = "Plun. Poulaines"}

	sets.TP = {}

	Pull_mode = false
	TH_mode = false

	TP_map = {[1] = "Normal", [2] = "Hybrid", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Tauret", [2] = "Naegling"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Gleti's Knife"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Gleti's Knife"}

	sets.Pulling = {range = "Raider's Bmrng.", ammo = ""}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Gleti's Mask",
		neck = "Asn. Gorget +1",
		left_ear = "Sherida Earring",
		right_ear = "Skulk. Earring +1",
		body = "Pillager's Vest +3",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Epona's Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Pill. Culottes +3",
		feet = "Skulk. Poulaines +2",
	}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Asn. Gorget +1",
		left_ear = "Sherida Earring",
		right_ear = "Skulk. Earring +1",
		body = "Malignance Tabard",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Skulk. Poulaines +2",
	}

	sets.TP.HasteSamba = {left_ear = "Sherida Earring"}

	sets.TP.DT = sets.DT

	sets.TP.TH = {ammo = "Per. Lucky Egg", feet = "Skulk. Poulaines +2"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Pill. Bonnet +3",
		neck = "Asn. Gorget +1",
		left_ear = "Moonshade Earring",
		right_ear = "Sherida Earring",
		body = "Nyame Mail", -- body="Skulker's Vest +3",
		hands = "Nyame Gauntlets",
		left_ring = "Cornelia's Ring",
		right_ring = "Epona's Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard", -- legs="Plun. Culottes +4",
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		left_ear = "Odr Earring",
		hands = "Gleti's Gauntlets",
		right_ring = "Mummu Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Gleti's Breeches",
		feet = "Gleti's Boots",
	}

	sets.WS["Rudra's Storm"] = {right_ring = "Ilabrat Ring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Pill. Poulaines +3",
	}

	sets.DT = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Nyame Gauntlets",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Skulk. Poulaines +2",
	}

	sets.TP.DT = sets.DT

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
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
		if buffactive["Haste Samba"] then
			equip(sets.TP.HasteSamba)
		end
	else
		equip(sets.Idle)
	end
	if Pull_mode then
		equip(sets.Pulling)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	if TH_mode then
		equip(sets.TP.TH)
	end
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
	elseif new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
		if buffactive["Haste Samba"] then
			equip(sets.TP.HasteSamba)
		end
	end
	if Pull_mode then
		equip(sets.Pulling)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	if TH_mode then
		equip(sets.TP.TH)
	end
end

function self_command(command)
	if string.lower(command) == "dt" then
		equip(sets.DT)
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat("TH mode is now: " .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == "Engaged" then
				equip(sets.TP[TP_map[TP_mode]])
			else
				equip(sets.Idle)
			end
		end
	elseif string.lower(command) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif string.lower(command) == "pull" then
		Pull_mode = not Pull_mode
		windower.add_to_chat("Pull mode is now: " .. (Pull_mode and "ON" or "OFF"))
		if Pull_mode then
			equip(sets.Pulling)
		else
			if player.status == "Engaged" then
				equip(sets.TP[TP_map[TP_mode]])
			else
				equip(sets.Idle)
			end
		end
	elseif string.lower(command) == "weapon" then
		Weapon_mode = Weapon_mode + 1
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end
end

function sub_job_change(new, old)
	if player.sub_job == "WAR" then
		send_command("input /macro book 6;wait .1;input /macro set 1")
	elseif player.sub_job == "NIN" then
		send_command("input /macro book 6;wait .1;input /macro set 2")
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 6;wait .1;input /macro set 3")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 6;wait .1;input /macro set 4")
	else
		send_command("input /macro book 6;wait .1;input /macro set 1")
	end
	send_command("@wait 5;input /lockstyleset 4")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
