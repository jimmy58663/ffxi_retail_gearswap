include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")

function get_sets()
	sets.JA = {}
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	sets.TP = {}

	TH_mode = false

	TP_map = {[1] = "Normal", [2] = "Acc", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Jolt"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Jolt = {main = "Jolt Counter"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
		neck = "Asperity Necklace",
		waist = "Cetl Belt",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Epona's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
	}

	sets.TP.Acc = {
		ammo = "Honed Tathlum",
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
		neck = "Asperity Necklace",
		waist = "Cetl Belt",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Mummu Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Knobkierrie",
		head = "Nyame Helm",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Victory Smite"] = {
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		right_ring = "Mummu Ring",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.Idle = {
		ammo = "Honed Tathlum",
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
		neck = "Elite Royal Collar",
		waist = "Cetl Belt",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Mummu Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
	}

	sets.DT = {
		ammo = "Honed Tathlum",
		head = "Mummu Bonnet +2",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
		neck = "Elite Royal Collar",
		waist = "Cetl Belt",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Mummu Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
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
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
