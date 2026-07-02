include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")

function get_sets()
	sets.JA = {}
	sets.JA.Maneuver = {neck = "Buffoon's Collar", body = "Karagoz Farsetto", back = "Visucius's Mantle"}
	sets.JA.Overdrive = {body = "Pitre Tobe"}

	sets.TP = {}

	TH_mode = false
	AutoManeuver = true

	mode_map = {[1] = "Pet", [2] = "Hybrid", [3] = "Player"}
	mode = 1

	TP_map = {[1] = "Normal", [2] = "Bruiser", [3] = "Tank", [4] = "Ranged"}
	TP_mode = 1

	Weapon_map = {[1] = "Ohtas", [2] = "Xiucoatl"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Ohtas = {main = "Ohtas", range = "Animator P", ammo = "Automat. Oil +3"}
	sets.Weapon.Xiucoatl = {main = "Pitre Fists", range = "Animator P", ammo = "Automat. Oil +3"}

	sets.TP.Pet = {}
	sets.TP.Hybrid = {}
	sets.TP.Player = {}

	sets.TP.Pet.Normal = {
		-- Ohtas
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Karagoz Earring", -- Rimeice Earring???
		body = "Taeon Tabard", -- Pitre Tobe +3
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.TP.Hybrid.Normal = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Sroda Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.Player.Normal = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Schere Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring +1",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.Pet.Bruiser = {
		-- Ohtas
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Karagoz Earring",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Taeon Boots",
	}

	sets.TP.Hybrid.Bruiser = sets.TP.Hybrid.Normal

	sets.TP.Player.Bruiser = sets.TP.Player.Normal

	sets.TP.Pet.Tank = {
		-- Ohtas
		head = "Taeon Chapeau", -- Rao Kabuto +1
		neck = "Shulmanu Collar", -- Shepard's Chain
		left_ear = "Enmerkar Earring",
		right_ear = "Karagoz Earring",
		body = "Taeon Tabard", -- Rao Togi +1
		hands = "Rao Kote +1",
		left_ring = "Varar Ring +1", -- Overbearing Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Isa Belt",
		legs = "Taeon Tights", -- Rao Haidate +1
		feet = "Rao Sune-Ate +1",
	}

	sets.TP.Hybrid.Tank = sets.TP.Hybrid.Normal

	sets.TP.Player.Tank = {
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Schere Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring +1",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.Pet.Ranged = {
		-- Xiucoatl
		head = "Taeon Chapeau", -- Pitre Taj +3
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Karagoz Earring", -- Crep. Earring
		body = "Taeon Tabard", -- Pitre Tobe +3
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Taeon Tights", -- Kara. Pantaloni +3
		feet = "Mpaca's Boots",
	}

	sets.TP.Hybrid.Ranged = sets.TP.Hybrid.Normal

	sets.TP.Player.Ranged = sets.TP.Player.Normal

	sets.Overdrive = {}
	sets.Overdrive.Normal = {
		-- Xiucoatl
		head = "Taeon Chapeau", -- Pitre Taj +3
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring", -- Rimeice Earring
		right_ear = "Karagoz Earring",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.Overdrive.Bruiser = sets.Overdrive.Normal

	sets.Overdrive.Tank = sets.Overdrive.Normal

	sets.Overdrive.Ranged = {
		-- Xiucoatl
		head = "Karagoz Cappello",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring", -- Rimeice Earring
		right_ear = "Karagoz Earring",
		body = "Taeon Tabard", -- Pitre Tobe +3
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle", -- back="Dispersal Mantle", --TP Bonus +500
		waist = "Klouskap Sash +1",
		legs = "Taeon Tights", -- Heyoka Subligar +1
		feet = "Mpaca's Boots",
	}

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Schere Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Ephramad's Ring",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Windbuffet Belt +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.WS.PetTP = {
		main = "Pitre Fists",
		head = "Karagoz Cappello",
		neck = "Shulmanu Collar",
		-- left_ear="Burana Earring",
		right_ear = "Karagoz Earring",
		-- body="Pitre Tobe +3",
		hands = "Mpaca's Gloves",
		-- left_ring="Overbearing Ring",
		right_ring = "Thurandaut Ring",
		-- back="Dispersal Mantle", --TP Bonus +500
		waist = "Klouskap Sash +1",
		-- legs="Kara. Pantaloni +3",
		feet = "Mpaca's Boots",
	}

	sets.WS.PetDA = {
		main = "Pitre Fists",
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		-- left_ear="Domes. Earring",
		right_ear = "Karagoz Earring",
		body = "Taeon Tabard",
		hands = "Mpaca's Gloves",
		-- left_ring="C. Palug Ring",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.Idle = {}
	sets.Idle.Hybrid = {
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Sroda Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring +1",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Tali'ah Sera. +2",
		feet = "Tali'ah Crackows +2",
	}

	sets.Idle.Player = {
		head = "Mpaca's Cap",
		neck = "Elite Royal Collar",
		left_ear = "Schere Earring",
		right_ear = "Karagoz Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring +1",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
	if string.find(spell.english, "Maneuver") then
		equip(sets.JA.Maneuver)
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.prefix == "/weaponskill" then
		if mode ~= 1 then
			equip(sets.WS_Default)
			if sets.WS[spell.english] then
				equip(sets.WS[spell.english])
			end
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
	else
		if mode == 1 then
			if buffactive["Overdrive"] then
				equip(sets.Overdrive[TP_map[TP_mode]])
			else
				equip(sets.TP.Pet[TP_map[TP_mode]])
			end
		else
			equip(sets.Idle[mode_map[mode]])
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		if mode == 1 then
			if buffactive["Overdrive"] then
				equip(sets.Overdrive[TP_map[TP_mode]])
			else
				equip(sets.TP.Pet[TP_map[TP_mode]])
			end
		else
			equip(sets.Idle[mode_map[mode]])
		end
	elseif new == "Engaged" then
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	if string.lower(command) == "dt" then
		equip(sets.TP.Player.Tank)
	elseif string.lower(command) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat("TH mode is now: " .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == "Engaged" then
				equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
			else
				equip(sets.Idle[mode_map[mode]])
			end
		end
	elseif string.lower(command) == "weapon" then
		Weapon_mode = Weapon_mode + 1
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	elseif string.lower(command) == "mode" then
		mode = mode + 1
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		equip(sets.Idle[mode_map[mode]])
	elseif string.lower(command) == "automaneuver" then
		AutoManeuver = not AutoManeuver
		windower.add_to_chat("Auto Maneuvers are now: " .. (AutoManeuver and "ON" or "OFF"))
	elseif string.lower(command):contains("petws") then
		local commandType = string.split(command, " ")[2]
		if pet.tp >= 800 then
			if commandType == "tp" then
				equip(sets.WS.PetTP)
			elseif commandType == "da" then
				equip(sets.WS.PetDA)
			end
		else
			if player.status == "Engaged" then
				equip(sets.TP[mode_map[mode]][TP_map[TP_mode]])
				if TH_mode then
					equip(sets.TP.TH)
				end
			else
				if mode == 1 then
					equip(sets.TP.Pet[TP_map[TP_mode]])
				else
					equip(sets.Idle[mode_map[mode]])
				end
			end
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
		end
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 18;wait .1;input /macro set 1")
	elseif player.sub_job == "SAM" then
		send_command("input /macro book 18;wait .1;input /macro set 1")
	elseif player.sub_job == "THF" then
		send_command("input /macro book 18;wait .1;input /macro set 1")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 18;wait .1;input /macro set 1")
	else
		send_command("input /macro book 18;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain, buff_details)
	buff_name = buff:lower()

	if AutoManeuver and string.find(buff_name, "maneuver") and not gain then
		send_command(buff)
	elseif buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end

