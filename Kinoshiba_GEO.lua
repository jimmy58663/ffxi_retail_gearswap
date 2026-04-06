include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")
local MagicBurstWindow = false

function get_sets()
	sets.JA = {}
	sets.JA["Cardinal Chant"] = {head = "Geo. Galero +3"}
	sets.JA["Life Cycle"] = {body = "Geomancy Tunic +3"}

	-- Modes
	mode_map = {[1] = "Support", [2] = "Melee"}
	mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Wizard", [3] = "LorgMor"}
	Weapon_mode = 1

	Idle_map = {[1] = "Refresh", [2] = "Pet", [3] = "DT"}
	Idle_mode = 1

	TP_map = {[1] = "Normal", [2] = "DT"}
	TP_mode = 1

	LowTierNukes = S {
		"Stone",
		"Water",
		"Aero",
		"Fire",
		"Blizzard",
		"Thunder",
		"Stone II",
		"Water II",
		"Aero II",
		"Fire II",
		"Blizzard II",
		"Thunder II",
		"Stonega",
		"Waterga",
		"Aeroga",
		"Firaga",
		"Blizzaga",
		"Thundaga",
		"Geohelix",
		"Hydrohelix",
		"Anemohelix",
		"Pyrohelix",
		"Cryohelix",
		"Ionohelix",
		"Noctohelix",
		"Luminohelix",
		"Stonera",
		"Watera",
		"Aera",
		"Fira",
		"Blizzara",
		"Thundara",
	}
	-- Precast Sets
	sets.precast = {}
	sets.precast.FC = {
		head = "Jhakri Coronal +2",
		right_ear = "Malignance Earring", -- 4%
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring", -- 10%
		right_ring = "Jhakri Ring",
		legs = "Geomancy Pants +3", -- 15%
		feet = "Jhakri Pigaches +2",
	}

	sets.precast.Cure = {}

	sets.precast.ElementalMagic = {
		head = "Mall. Chapeau +2",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.precast.EnhancingMagic = {}

	sets.precast.Impact = {body = "Crepuscular Cloak"}
	-- Midcast Sets
	sets.midcast = {}
	sets.midcast.Haste = {}

	sets.midcast.Debuff = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Geo. Galero +3",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Geomancy Tunic +3",
		hands = "Geo. Mitaines +3",
		left_ring = "Medada's Ring",
		right_ring = "Mallquis Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Rumination Sash",
		legs = "Geomancy Pants +3",
		feet = "Geo. Sandals +3",
	}

	sets.midcast.Stun = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Geo. Galero +3",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Malignance Earring",
		body = "Geomancy Tunic +3",
		hands = "Geo. Mitaines +3",
		left_ring = "Medada's Ring",
		right_ring = "Mallquis Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Eschan Stone",
		legs = "Geomancy Pants +3",
		feet = "Geo. Sandals +3",
	}

	sets.midcast.LowNuke = {
		main = "Wizard's Rod",
		head = "Geo. Galero +3",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		left_ring = "Medada's Ring",
		legs = "Mallquis Trews +2",
		feet = "Mallquis Clogs +2",
	}

	sets.midcast.HighNuke = {
		main = "Wizard's Rod",
		head = "Geo. Galero +3",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Medada's Ring",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.midcast.Cure = {main = "Bunzi's Rod"}

	sets.midcast.Stoneskin = {}

	sets.midcast.Impact = {body = "Crepuscular Cloak"}
	-- Aftercast Sets
	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Murky Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {}
	sets.Idle.Refresh = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Nyame Helm",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Geomancy Tunic +3",
		hands = "Nyame Gauntlets",
		left_ring = "Jhakri Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Geo. Sandals +3",
	}

	sets.Idle.DT = {
		main = "Wizard's Rod",
		sub = "",
		range = "Dunna",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Jhakri Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"VIT+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10", "Pet: \"Regen\"+5"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Resting = {}

	sets.TP = {}
	sets.TP.Normal = {
		head = "Nyame Helm",
		neck = "Bagua Charm +1",
		left_ear = "Alabaster Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Jhakri Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Nantosuelta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DT = sets.DT

	sets.TH = {
		ammo = "Per. Lucky Egg",
		-- head="Wh. Rarab Cap +1",
	}

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = ""}
	sets.Weapon.Wizard = {main = "Wizard's Rod", sub = ""}
	sets.Weapon.LorgMor = {main = "Lorg Mor", sub = ""}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm",
		neck = "Bagua Charm +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Jhakri Ring",
		right_ring = "Rajas Ring",
		back = {name = "Nantosuelta's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	enable("main", "sub")
	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC)
		if string.find(spell.english, "Cur") then
			equip(sets.precast.Cure)
		end
		if spell.skill == "Enhancing Magic" then
			equip(sets.precast.EnhancingMagic)
		elseif spell.skill == "Elemental Magic" then
			equip(sets.precast.ElementalMagic)
		end
		if spell.english == "Impact" then
			equip(sets.precast.Impact)
		end
	end
end

function midcast(spell)
	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.midcast.Debuff)
	elseif spell.skill == "Elemental Magic" then
		if LowTierNukes:contains(spell.english) then
			equip(sets.midcast.LowNuke)
		else
			equip(sets.midcast.HighNuke)
			if spell.english == "Impact" then
				equip(sets.midcast.Impact)
			end
		end
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
	if spell.english:contains("Dia") or spell.english:contains("Bio") then
		equip(sets.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	else
		equip(sets.Idle[Idle_map[Idle_mode]])
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	elseif new == "Resting" then
		equip(sets.Resting)
	elseif new == "Idle" then
		equip(sets.Idle[Idle_map[Idle_mode]])
	end
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
	elseif cmd_array[1] == "idle" then
		Idle_mode = Idle_mode + 1
		if Idle_mode > #Idle_map then
			Idle_mode = 1
		end
		equip(sets.Idle[Idle_map[Idle_mode]])
		windower.add_to_chat("Idle mode is now: " .. Idle_map[Idle_mode])
	elseif cmd_array[1] == "mode" then
		if type(cmd_array[2]) == "string" then
			for index, name in pairs(mode_map) do
				if name:lower() == cmd_array[2] then
					mode = index
				end
			end
		else
			mode = mode + 1
		end
		if mode > #mode_map then
			mode = 1
		end
		windower.add_to_chat("Mode is now: " .. mode_map[mode])
		if mode == 2 then -- Disable main and sub in Melee mode
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		else
			enable("main", "sub")
		end
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
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		if mode == 2 then
			enable("main", "sub")
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		else
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
		end
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	send_command("input /macro book 21;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
