include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Camouflage = {body = "Orion Jerkin +3"}
	sets.JA.Shadowbind = {hands = "Orion Bracers +3"}
	sets.JA.Barrage = {hands = "Orion Bracers +3"}
	sets.JA.Sharpshot = {legs = "Orion Braccae +3"}
	sets.JA.Scavenge = {feet = "Orion Socks +3"}

	sets.TP = {}
	sets.TP.Ranged = {}

	TH_mode = false
	Ranged = true

	TP_map = {[1] = "Normal", [2] = "Acc", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {
		[1] = "Yoichi",
		[2] = "Fomalhaut",
		[3] = "Annihilator",
		[4] = "Naegling",
		[5] = "YoichiDW",
		[6] = "FomalhautDW",
		[7] = "AnnihilatorDW",
	}
	Weapon_mode = 3

	sets.Weapon = {}
	sets.Weapon.Yoichi = {main = "Naegling", sub = "Nusku Shield", range = "Yoichinoyumi", ammo = "Eminent Arrow"}
	sets.Weapon.Fomalhaut = {main = "Naegling", sub = "Nusku Shield", range = "Fomalhaut", ammo = "Chrono Bullet"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Nusku Shield", range = "Ataktos", ammo = "Chrono Bullet"}
	sets.Weapon.Annihilator = {main = "Naegling", sub = "Nusku Shield", range = "Annihilator", ammo = "Chrono Bullet"}
	sets.Weapon.FomalhautDW = {main = "Naegling", sub = "Gleti's Knife", range = "Fomalhaut", ammo = "Chrono Bullet"}
	sets.Weapon.YoichiDW = {main = "Naegling", sub = "Gleti's Knife", range = "Yoichinoyumi", ammo = "Eminent Arrow"}
	sets.Weapon.AnnihilatorDW = {main = "Naegling", sub = "Gleti's Knife", range = "Annihilator", ammo = "Chrono Bullet"} -- Perun +1/Ternion Dagger +1

	sets.TP.Normal = {
		head = "Mummu Bonnet +2",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.Ranged.Normal = {
		head = "Ikenga's Hat",
		neck = "Scout's Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nisroch Jerkin",
		hands = "Ikenga's Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Ikenga's Trousers",
		feet = "Ikenga's Clogs",
	}

	sets.TP.Acc = {
		head = "Mummu Bonnet +2",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Belenus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.Ranged.Acc = {
		head = "Orion Beret +3",
		neck = "Scout's Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Orion Jerkin +3",
		hands = "Orion Bracers +3",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Orion Braccae +3",
		feet = "Orion Socks +3",
	}

	sets.TP.DT = sets.DT

	sets.TP.Ranged.DT = sets.DT

	sets.TP.Ranged.PreShot = {
		-- 10% merits
		head = "Ikenga's Hat", -- 6 (Taeon Chapeau --10)
		neck = "Scout's Gorget", -- 2 (+1/+2)
		body = "Ikenga's Vest", -- 9 (Amini Caban +3)
		hands = "Ikenga's Gloves", -- 7 (Carmine Fin. Ga. +1 --8 + Rapid Shot)
		right_ring = "Crepuscular Ring", -- 3
		back = {name = "Belenus's Cape", augments = {"\"Snapshot\"+10"}},
		waist = "Impulse Belt", -- 3 (Yamaya Belt)
		legs = "Orion Braccae +3", -- 15
		feet = "Meg. Jam. +2", -- 10
	}

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Orion Beret +3",
		neck = "Scout's Gorget", -- neck="Fotia Gorget",
		left_ear = "Enervating Earring", -- left_ear="Ishvara Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail", -- body="Ikenga's Vest",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring", -- right_ring="Regal Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"},
		},
		waist = "Scout's Belt", -- waist="Fotia Belt",
		legs = "Nyame Flanchard", -- legs="Arc. Bracca +4",
		feet = "Nyame Sollerets", -- feet="Amini Bottillons +3",
	}

	sets.WS["Savage Blade"] = {
		neck = "Anu Torque",
		right_ear = "Brutal Earring",
		back = {name = "Belenus's Cape", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
	}

	sets.WS["Namas Arrow"] = {
		neck = "Light Gorget", -- Fotia
		-- body="Amini Caban +3",
		waist = "Light Belt", -- Fotia
	}

	sets.WS.Coronach = {
		-- neck = "Breeze Gorget", -- Fotia/Scout's +2
		-- left_ear = "Ishvara Earring",
		-- right_ear = "Amini Earring +1/2"
		-- body="Amini Caban +3",
		waist = "Breeze Belt", -- Fotia
	}

	sets.Idle = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Nyame Flanchard",
		feet = "Orion Socks +3",
	}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Meghanada Ring",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Scout's Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged.PreShot)
	elseif spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
	if spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged[TP_map[TP_mode]])
		if (buffactive.barrage) then
			equip(sets.TP.Ranged.Acc)
			equip(sets.JA.Barrage)
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
		if Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		else
			equip(sets.TP[TP_map[TP_mode]])
		end
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
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif string.lower(command) == "ranged" then
		Ranged = not Ranged
		windower.add_to_chat("Ranged mode is now: " .. (Ranged and "ON" or "OFF"))
		if player.status == "Engaged" then
			if Ranged then
				equip(sets.TP.Ranged[TP_map[TP_mode]])
				Weapon_mode = 1
			else
				equip(sets.TP[TP_map[TP_mode]])
				Weapon_mode = 3
			end
		else
			equip(sets.Idle)
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat("TH mode is now: " .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == "Engaged" then
				if Ranged then
					equip(sets.TP.Ranged[TP_map[TP_mode]])
				else
					equip(sets.TP[TP_map[TP_mode]])
				end
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
		if Weapon_mode == 1 then
			Ranged = true
		else
			Ranged = false
		end
		if player.status == "Engaged" then
			if Ranged then
				equip(sets.TP.Ranged[TP_map[TP_mode]])
			else
				equip(sets.TP[TP_map[TP_mode]])
			end
		else
			equip(sets.Idle)
		end
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if player.sub_job == "NIN" then
		send_command("input /macro book 11;wait .1;input /macro set 1")
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 11;wait .1;input /macro set 1")
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "WAR" then
		send_command("input /macro book 11;wait .1;input /macro set 2")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 11;wait .1;input /macro set 2")
	else
		send_command("input /macro book 11;wait .1;input /macro set 1")
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
