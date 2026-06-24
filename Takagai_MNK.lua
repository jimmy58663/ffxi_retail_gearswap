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

	TP_map = {[1] = "Normal", [2] = "SubtleBlow", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Godhands", [2] = "Karambit"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Godhands = {main = "Godhands"}
	sets.Weapon.Karambit = {main = "Kaja Knuckles"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Mnk. Nodowa +1",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Moonbow Belt",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.SubtleBlow = {
		-- 35 SB traits 1900 JP
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Mnk. Nodowa +1",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring", -- SB2 5
		body = "Ken. Samue", -- SB 9
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring", -- SB2 5
		right_ring = "Chirich Ring", -- SB 7, +1 = 10
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Moonbow Belt", -- SB2 10
		legs = "Mpaca's Hose", -- SB2 5
		feet = "Mpaca's Boots",
	}

	sets.TP.Footwork = {feet = "Anch. Gaiters +3"}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS.Impetus = {}

	sets.WS_Default = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Mnk. Nodowa +1",
		left_ear = "Moonshade Earring",
		right_ear = "Sherida Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Petrov Ring",
		back = {name = "Segomo's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10"}},
		waist = "Moonbow Belt",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.WS["Victory Smite"] = {
		right_ring = "Mummu Ring",
		back = {name = "Segomo's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Crit.hit rate+10"}},
	}

	sets.WS.Impetus["Victory Smite"] = {
		back = {name = "Segomo's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10"}},
	}

	sets.WS["Tornado Kick"] = {feet = "Anch. Gaiters +3"}

	sets.WS["Dragon Kick"] = {feet = "Anch. Gaiters +3"}

	sets.WS["Final Heaven"] = {legs = "Hiza. Hizayoroi +2"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Hiza. Haramaki +2",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Moonbow Belt",
		legs = "Mpaca's Hose",
		feet = "Malignance Boots",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Mache Earring",
		right_ear = "Sherida Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Niqmaddu Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Segomo's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Moonbow Belt",
		legs = "Mpaca's Hose",
		feet = "Malignance Boots",
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
			if buffactive["Impetus"] then
				if sets.WS.Impetus[spell.english] then
					equip(sets.WS.Impetus[spell.english])
				end
			end
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
		if buffactive["Footwork"] then
			equip(sets.TP.Footwork)
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
		if buffactive["Footwork"] then
			equip(sets.TP.Footwork)
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
		send_command("input /macro book 2;wait .1;input /macro set 1")
	elseif new == "DNC" then
		send_command("input /macro book 2;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 2;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 2;wait .1;input /macro set 4")
	else
		send_command("input /macro book 2;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 3")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
