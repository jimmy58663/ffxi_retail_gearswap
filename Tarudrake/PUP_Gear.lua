function init_gear_sets()
	AutoManeuver = true
	AutoPetWS = true

	sets.JA.Maneuver = {neck = "Bfn. Collar +1", body = "Kara. Farsetto +1", back = "Visucius's Mantle"}
	sets.JA.Overdrive = {body = "Pitre Tobe +2"}

	PetRole_map = {[1] = "HybridDD", [2] = "Bruiser", [3] = "Turtle", [4] = "Ranged", [5] = "Nuker", [6] = "Healer"}
	PetRole = 1

	TP_map = {[1] = "Hybrid", [2] = "Player"}
	TP_mode = 1

	Weapon_map = {[1] = "Ohtas", [2] = "Xiucoatl"}
	Weapon_mode = 1

	sets.Weapon.Ohtas = {main = "Ohtas", range = "Animator P", ammo = "Automat. Oil +3"}
	sets.Weapon.Xiucoatl = {main = "Pitre Fists", range = "Animator P", ammo = "Automat. Oil +3"}

	sets.TP.Hybrid = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Sroda Earring",
		right_ear = "Kara. Earring +1",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.Player = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Mache Earring",
		right_ear = "Kara. Earring +1",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.Overdrive = {}
	sets.Overdrive.HybridDD = {
		-- Xiucoatl
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring", -- Rimeice Earring
		right_ear = "Kara. Earring +1",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.Overdrive.Bruiser = sets.Overdrive.HybridDD

	sets.Overdrive.Turtle = sets.Overdrive.HybridDD

	sets.Overdrive.Ranged = {
		-- Xiucoatl
		head = "Karagoz Cappello",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring", -- Rimeice Earring
		right_ear = "Kara. Earring +1",
		body = "Pitre Tobe +2",
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle", -- back="Dispersal Mantle", --TP Bonus +500
		waist = "Klouskap Sash",
		legs = "Taeon Tights", -- Heyoka Subligar +1
		feet = "Mpaca's Boots",
	}

	sets.Overdrive.Nuker = sets.Idle.Pet.Nuker

	sets.Overdrive.Healer = sets.Idle.Pet.Healer

	sets.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {
		head = "Mpaca's Cap",
		neck = "Shulmanu Collar",
		left_ear = "Mache Earring",
		right_ear = "Kara. Earring +1",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Cornelia's Ring",
		right_ring = "Niqmaddu Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.WS.PetTP = {
		main = "Pitre Fists",
		head = "Karagoz Cappello",
		neck = "Shulmanu Collar",
		-- left_ear="Burana Earring",
		right_ear = "Kara. Earring +1",
		body = "Pitre Tobe +2",
		hands = "Mpaca's Gloves",
		-- left_ring="Overbearing Ring",
		right_ring = "Thurandaut Ring",
		-- back="Dispersal Mantle", --TP Bonus +500
		waist = "Klouskap Sash",
		-- legs="Kara. Pantaloni +3",
		feet = "Mpaca's Boots",
	}

	sets.WS.PetDA = {
		main = "Pitre Fists",
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		-- left_ear="Domes. Earring",
		right_ear = "Kara. Earring +1",
		body = "Taeon Tabard",
		hands = "Mpaca's Gloves",
		-- left_ring="C. Palug Ring",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.Idle = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Mache Earring",
		right_ear = "Kara. Earring +1",
		body = "Malignance Tabard",
		hands = "Mpaca's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Mpaca's Hose",
		feet = "Malignance Boots",
	}

	sets.Idle.Pet.HybridDD = {
		-- Ohtas
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Kara. Earring +1", -- Rimeice???
		body = "Pitre Tobe +2",
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Mpaca's Boots",
	}

	sets.Idle.Pet.Bruiser = {
		-- Ohtas
		head = "Taeon Chapeau",
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Kara. Earring +1",
		body = "Taeon Tabard",
		hands = "Taeon Gloves",
		left_ring = "Varar Ring +1", -- C. Palug Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Incarnation Sash",
		legs = "Taeon Tights",
		feet = "Taeon Boots",
	}

	sets.Idle.Pet.Turtle = {
		-- Ohtas
		head = "Taeon Chapeau", -- Rao Kabuto +1
		neck = "Shulmanu Collar", -- Shepard's Chain
		left_ear = "Enmerkar Earring",
		right_ear = "Kara. Earring +1",
		body = "Taeon Tabard", -- Rao Togi +1
		hands = "Taeon Gloves", -- Rao Kote +1
		left_ring = "Varar Ring +1", -- Overbearing Ring
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash", -- Isa Belt
		legs = "Taeon Tights", -- Rao Haidate +1
		feet = "Taeon Boots", -- Rao Sun-Ate +1
	}

	sets.Idle.Pet.Ranged = {
		-- Xiucoatl
		head = "Taeon Chapeau", -- Pitre Taj +3
		neck = "Shulmanu Collar",
		left_ear = "Enmerkar Earring",
		right_ear = "Kara. Earring +1", -- Crep. Earring
		body = "Pitre Tobe +2",
		hands = "Mpaca's Gloves",
		left_ring = "Varar Ring +1",
		right_ring = "Thurandaut Ring",
		back = "Visucius's Mantle",
		waist = "Klouskap Sash",
		legs = "Taeon Tights", -- Kara. Pantaloni +3
		feet = "Mpaca's Boots",
	}

	sets.Idle.Pet.Nuker = {
		-- Xiucoatl

	}

	sets.Idle.Pet.Healer = {
		-- Xiucoatl

	}

	sub_job_change(player.sub_job, "NON")
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
