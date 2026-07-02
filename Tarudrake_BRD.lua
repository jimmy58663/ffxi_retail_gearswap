include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Nightingale = {feet = "Bihu Slippers +2"}
	sets.JA.Troubadour = {body = "Bihu Jstcorps. +2"}
	sets.JA["Soul Voice"] = {legs = "Bihu Cannions +2"}

	Weapon_map = {
		[1] = "Tauret",
		[2] = "Naegling",
		[3] = "Carnwenhan",
		[4] = "TauretDW",
		[5] = "NaeglingDW",
		[6] = "NaeglingDWAcc",
		[7] = "CarnwenhanDW",
		[8] = "MpuDW",
	}
	Weapon_mode = 3

	sets.Weapon = {}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Genbu's Shield"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Genbu's Shield"}
	sets.Weapon.Carnwenhan = {main = "Carnwenhan", sub = "Genbu's Shield"}
	sets.Weapon.TauretDW = {main = "Tauret", sub = "Gleti's Knife"}
	sets.Weapon.NaeglingDW = {main = "Naegling", sub = "Centovente"}
	sets.Weapon.NaeglingDWAcc = {main = "Naegling", sub = "Gleti's Knife"}
	sets.Weapon.CarnwenhanDW = {main = "Carnwenhan", sub = "Gleti's Knife"}
	sets.Weapon.MpuDW = {main = "Mpu Gandring", sub = "Gleti's Knife"}

	-- Precast Sets
	sets.Precast = {}
	sets.Precast.FC = {
		head = "Bunzi's Hat", -- 10%
		body = "Inyanga Jubbah +2", -- 14%
		left_ring = "Kishar Ring", -- 4%
		legs = "Aya. Cosciales +2", -- 6%
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		feet = "Fili Cothurnes +2",
	}

	sets.Precast.Cure = {}

	sets.Precast.songs = {}

	sets.Precast.songs.Default = {
		range = "Gjallarhorn",
		head = "Fili Calot +2", -- 15%
		neck = "Aoidos' Matinee", -- 3%
		feet = "Telchine Pigaches", -- 12%
	}

	sets.Precast.songs.Dummy = {range = "Daurdabla"}

	sets.Precast.songs.Honor = {range = "Marsyas"}

	sets.Precast.songs.Harp = {range = "Daurdabla"}

	sets.Precast.songs.Aria = {range = "Loughnashade"}

	sets.Precast.songs.Ballad = {range = "Miracle Cheer"}

	sets.Precast.EnhancingMagic = {}
	-- Midcast Sets
	sets.Midcast = {}
	sets.Midcast.Haste = {
		head = "Bunzi's Hat",
		body = "Inyanga Jubbah +2",
		hands = "Bunzi's Gloves",
		legs = "Aya. Cosciales +2",
		feet = "Bunzi's Sabots",
	}

	sets.Midcast.Debuff = {
		head = "Brioso Roundlet +3",
		neck = "Mnbw. Whistle +1",
		-- left_ear="Regal Earring",
		right_ear = "Crep. Earring", -- Fili Earring
		body = "Brioso Justau. +3",
		hands = "Brioso Cuffs +3",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		-- waist="Null Belt",
		legs = "Brioso Cannions +3",
		feet = "Brioso Slippers +3",
	}

	sets.Midcast.Stun = {
		head = "Brioso Roundlet +3",
		neck = "Mnbw. Whistle +1",
		-- left_ear="Regal Earring",
		right_ear = "Crep. Earring", -- Fili Earring
		body = "Brioso Justau. +3",
		hands = "Brioso Cuffs +3",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		-- waist="Null Belt",
		legs = "Brioso Cannions +3",
		feet = "Brioso Slippers +3",
	}

	sets.Midcast.Cure = {
		main = "Chatoyant Staff", -- 10%
		sub = "Enki Strap",
		ammo = "Clarus Stone",
		head = {name = "Gende. Caubeen", augments = {"Phys. dmg. taken -2%", "\"Cure\" potency +2%"}},
		body = "Bunzi's Robe", -- 10%
		hands = "Bokwus Gloves", -- 13%
		legs = "Bunzi's Pants",
		feet = {name = "Gende. Galoshes", augments = {"Phys. dmg. taken -1%", "\"Cure\" potency +3%"}},
	}

	sets.Midcast.Stoneskin = {
		head = "Bunzi's Hat",
		body = "Bunzi's Robe",
		hands = "Inyan. Dastanas +2",
		waist = "Cascade Belt",
		legs = "Bunzi's Pants",
		feet = "Bunzi's Sabots",
	}

	sets.Midcast.Cursna = {
		head = {name = "Gende. Caubeen", augments = {"Phys. dmg. taken -2%", "\"Cure\" potency +2%"}},
		hands = "Inyan. Dastanas +2",
		left_ring = "Ephedra Ring",
		right_ring = "Ephedra Ring",
		back = "Vita Cape",
		feet = {name = "Gende. Galoshes", augments = {"Phys. dmg. taken -1%", "\"Cure\" potency +3%"}},
	}

	sets.Midcast.songs = {}
	sets.Midcast.songs.Default = {
		main = "Carnwenhan", -- 50% duration
		head = "Fili Calot +2",
		neck = "Mnbw. Whistle +1", -- Songs+3, 30% duration
		body = "Fili Hongreline +2", -- 13% duration
		hands = "Fili Manchettes +2",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Inyanga Shalwar +2", -- 17% duration
		feet = "Brioso Slippers +3", -- 15% duration
	}

	sets.Midcast.songs.Debuff = {
		head = "Brioso Roundlet +3",
		neck = "Mnbw. Whistle +1",
		-- left_ear="", -- Regal
		right_ear = "Crep. Earring", -- Fili Earring
		body = "Brioso Justau. +3",
		hands = "Brioso Cuffs +3",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cascade Belt", -- Null Belt
		legs = "Inyanga Shalwar +2",
		feet = "Brioso Slippers +3",
	}

	sets.Midcast.songs.Paeon = {head = "Brioso Roundlet +3"}
	sets.Midcast.songs.Minuet = {body = "Fili Hongreline +2"}
	sets.Midcast.songs.March = {hands = "Fili Manchettes +2"}
	sets.Midcast.songs.Madrigal = {head = "Fili Calot +2"}
	sets.Midcast.songs.Scherzo = {feet = "Fili Cothurnes +2"}
	sets.Midcast.songs.Dummy = {neck = "Bard's Charm +1"}
	sets.Midcast.songs.Ballad = {legs = "Fili Rhingrave +2"}
	sets.Midcast.songs.Carol = {hands = "Mousai Gages +1"}
	sets.Midcast.songs.Etude = {head = "Mousai Turban +1"}
	sets.Midcast.songs.Lullaby = {
		-- Need 567 skill for 7' radius, 648 skill for 8' radius
		head = "Brioso Roundlet +3",
		neck = "Mnbw. Whistle +1",
		-- left_ear="Gersemi Earring",
		-- right_ear="Darkside Earring",
		body = "Brioso Justau. +3",
		hands = "Brioso Cuffs +3",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		-- waist="Harfner's Sash",
		legs = "Inyanga Shalwar +2",
		feet = "Bihu Slippers +2",
	}
	-- Aftercast Sets
	sets.Idle = {
		range = "Gjallarhorn",
		head = "Fili Calot +2",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Bunzi's Robe",
		hands = "Fili Manchettes +2",
		left_ring = "Inyanga Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cascade Belt",
		legs = "Fili Rhingrave +2",
		feet = "Fili Cothurnes +2",
	}

	sets.Resting = {}

	sets.DT = {
		head = "Fili Calot +2",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Bunzi's Robe",
		hands = "Fili Manchettes +2",
		left_ring = "Ayanmo Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Mag. Acc+20 /Mag. Dmg.+20", "CHR+10", "\"Fast Cast\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Cascade Belt",
		legs = "Fili Rhingrave +2",
		feet = "Bunzi's Sabots",
	}

	sets.TP = {}
	sets.TP.Default = {
		range = {name = "Linos", augments = {"Accuracy+20", "\"Dbl.Atk.\"+2", "Quadruple Attack +3"}},
		head = "Fili Calot +2",
		neck = "Bard's Charm +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Ayanmo Corazza +2",
		hands = "Bunzi's Gloves",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Fili Rhingrave +2",
		feet = "Aya. Gambieras +2",
	}

	sets.TP.HasteSamba = {left_ear = "Mache Earring"}

	sets.WS = {}
	sets.WS_Default = {
		range = {name = "Linos", augments = {"Attack+19", "Weapon skill damage +3%", "STR+6 DEX+6"}},
		head = "Nyame Helm",
		neck = "Bard's Charm +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring", -- right_ear="Ishvara Earring",
		body = "Nyame Mail", -- body="Bihu Jstcorps. +4",
		hands = "Nyame Gauntlets",
		left_ring = "Cornelia's Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {left_ear = "Mache Earring", right_ring = "Mummu Ring"}

	sets.WS["Rudra's Storm"] = {right_ring = "Ilabrat Ring"}

	sets.WS["Mordant Rime"] = {
		left_ear = "Rimeice Earring",
		-- right_ring = "Epaminondas's Ring",
		back = {
			name = "Intarabus's Cape",
			augments = {"CHR+20", "Accuracy+20 Attack+20", "CHR+10", "Weapon skill damage +10%"},
		},
	}

	enable("main", "sub")
	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.Precast.FC)
		if string.find(spell.english, "Cur") then
			equip(sets.Precast.Cure)
		end
		if spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		elseif spell.type == "BardSong" then
			equip(sets.Precast.songs.Default)
			if string.find(spell.english, "Horde Lullaby") then
				equip(sets.Precast.songs.Harp)
			elseif string.find(spell.english, "Herculean Etude") or string.find(spell.english, "Fowl Aubade") or
							string.find(spell.english, "Herb Pastoral") then
				equip(sets.Precast.songs.Dummy)
			elseif string.find(spell.english, "Honor March") then
				equip(sets.Precast.songs.Honor)
			elseif string.find(spell.english, "Aria") then
				equip(sets.Precast.songs.Aria)
			elseif string.find(spell.english, "Ballad") then
				equip(sets.Precast.songs.Ballad)
			end
		end
	end
end

function midcast(spell)
	if spell.type == "BardSong" then
		equip(sets.Midcast.songs.Default)
		if string.find(spell.english, "Requiem") or string.find(spell.english, "Lullaby") or
						string.find(spell.english, "Elegy") or string.find(spell.english, "Threnody") or
						string.find(spell.english, "Nocturne") then
			equip(sets.Midcast.songs.Debuff)
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
		end
		if sets.Midcast.songs[spell.english] then
			equip(sets.Midcast.songs[spell.english])
		elseif string.find(spell.english, "Herculean Etude") or string.find(spell.english, "Fowl Aubade") or
						string.find(spell.english, "Herb Pastoral") then
			equip(sets.Midcast.songs.Dummy)
		elseif string.find(spell.english, "Paeon") then
			equip(sets.Midcast.songs.Paeon)
		elseif string.find(spell.english, "Lullaby") then
			equip(sets.Midcast.songs.Lullaby)
		elseif string.find(spell.english, "Minuet") then
			equip(sets.Midcast.songs.Minuet)
		elseif string.find(spell.english, "March") then
			equip(sets.Midcast.songs.March)
		elseif string.find(spell.english, "Madrigal") then
			equip(sets.Midcast.songs.Madrigal)
		elseif string.find(spell.english, "Scherzo") then
			equip(sets.Midcast.songs.Scherzo)
		elseif string.find(spell.english, "Ballad") then
			equip(sets.Midcast.songs.Ballad)
		elseif string.find(spell.english, "Carol") then
			equip(sets.Midcast.songs.Carol)
		elseif string.find(spell.english, "Etude") then
			equip(sets.Midcast.songs.Etude)
		end
	elseif sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP.Default)
		if (player.sub_job == "NIN" and buffactive["Haste Samba"]) then
			equip(sets.TP.HasteSamba)
		end
	else
		equip(sets.Idle)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if new == "Engaged" then
		equip(sets.TP.Default)
		if (player.sub_job == "NIN" and buffactive["Haste Samba"]) then
			equip(sets.TP.HasteSamba)
		end
	elseif new == "Resting" then
		equip(sets.Resting)
	elseif new == "Idle" then
		equip(sets.Idle)
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if cmd_array[1] == "weapon" then
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
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	send_command("input /macro book 10;wait .1;input /macro set 1")
	if new == "DNC" or new == "NIN" then
		Weapon_mode = 7
	else
		Weapon_mode = 3
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
