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

	TP_map = {[1] = "Tank", [2] = "DPS", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Beatific", [2] = "Blurred", [3] = "Nandaka"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Beatific = {main = "Naegling", sub = "Beatific Shield +1"}
	sets.Weapon.Blurred = {main = "Naegling", sub = "Blurred Shield +1"}
	sets.Weapon.Nandaka = {main = "Tokko Claymore", sub = "Pole Grip"}

	sets.TP.Tank = {
		ammo = "Coiste Bodhar",
		head = "Sulevia's Mask +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		left_ring = "Sulevia's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Sulev. Cuisses +2",
		feet = "Sulev. Leggings +2",
	}

	sets.TP.DPS = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Flamma Korazin +2",
		hands = "Flam. Manopolas +2",
		left_ring = "Flamma Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Flamma Dirs +2",
		feet = "Flam. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Asperity Necklace",
		left_ear = "Moonshade Earring",
		right_ear = "Thrud Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Savage Blade"] = {
		-- legs="Boii Cuisses +1",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Sulevia's Mask +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		left_ring = "Sulevia's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Sulev. Cuisses +2",
		feet = "Sulev. Leggings +2",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Sulevia's Mask +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		left_ring = "Sulevia's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Cetl Belt",
		legs = "Sulev. Cuisses +2",
		feet = "Sulev. Leggings +2",
	}

	sets.TP.DT = sets.DT

	sets.Precast = {}
	sets.Precast.FastCast = {
		ammo = "Incantor stone",
		head = "Creed Armet +2",
		left_ear = "Loquac. Earring",
		body = "Nuevo Coselete",
	}

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	equip(sets.Precast.FastCast)
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
		send_command("input /macro book 7;wait .1;input /macro set 1")
	elseif new == "BLU" then
		send_command("input /macro book 7;wait .1;input /macro set 2")
	elseif new == "DRK" then
		send_command("input /macro book 7;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 7;wait .1;input /macro set 4")
	else
		send_command("input /macro book 7;wait .1;input /macro set 1")
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
