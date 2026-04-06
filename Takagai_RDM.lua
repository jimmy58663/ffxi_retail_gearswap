include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	sets.TP = {}

	TH_mode = false

	TP_map = {[1] = "Normal", [2] = "Acc", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Crocea", [2] = "Naegling", [3] = "Tauret", [4] = "CroceaDW", [5] = "NaeglingDW", [6] = "TauretDW"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Crocea = {main = "Vitiation Sword", sub = "Genbu's Shield"}
	sets.Weapon.Naegling = {main = "Kaja Sword", sub = "Genbu's Shield"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Genbu's Shield"}
	sets.Weapon.CroceaDW = {main = "Vitiation Sword", sub = "Daybreak"}
	sets.Weapon.NaeglingDW = {main = "Kaja Sword", sub = "Maxentius"}
	sets.Weapon.TauretDW = {main = "Tauret", sub = "Maxentius"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		legs = "Bunzi's Pants",
		feet = "Malignance Boots",
		neck = "Anu Torque",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring",
		back = "Estoqueur's Cape",
	}

	sets.TP.Acc = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		legs = "Bunzi's Pants",
		feet = "Malignance Boots",
		neck = "Anu Torque",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = "Estoqueur's Cape",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Anu Torque",
		waist = "Eschan Stone",
		left_ear = "Malignance Earring",
		right_ear = {name = "Moonshade Earring", augments = {"\"Mag.Atk.Bns.\"+4", "TP Bonus +250"}},
		left_ring = "Vertigo Ring",
		right_ring = "Jhakri Ring",
		back = "Estoqueur's Cape",
	}

	sets.WS["Sanguine Blade"] = {right_ear = "Friomisi Earring"}

	sets.WS["Savage Blade"] = {right_ear = "Sherida Earring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		legs = "Bunzi's Pants",
		feet = "Malignance Boots",
		neck = "Elite Royal Collar",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = "Estoqueur's Cape",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Bunzi's Hat",
		body = "Bunzi's Robe",
		hands = "Bunzi's Gloves",
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
		neck = "Elite Royal Collar",
		waist = {name = "Sailfi Belt +1", augments = {"Path: A"}},
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = "Estoqueur's Cape",
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
		if TH_mode then
			equip(sets.TP.TH)
		end
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
		if TH_mode then
			equip(sets.TP.TH)
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	if string.lower(command) == "dt" then
		equip(sets.DT)
	elseif string.lower(command) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
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
	if new == "NIN" then
		send_command("input /macro book 5;wait .1;input /macro set 1")
		Weapon_mode = 4
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	elseif new == "SAM" then
		send_command("input /macro book 5;wait .1;input /macro set 2")
	elseif new == "BLU" then
		send_command("input /macro book 5;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 5;wait .1;input /macro set 4")
	elseif new == "DRK" then
		send_command("input /macro book 5;wait .1;input /macro set 5")
	else
		send_command("input /macro book 5;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
