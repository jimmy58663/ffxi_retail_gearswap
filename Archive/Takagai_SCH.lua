include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")

function get_sets()
	sets.JA = {}
	sets.JA["Tabula Rasa"] = {legs = "Peda. Pants +1"}
	sets.JA.Tranquility = {hands = "Peda. Bracers +1"}
	sets.JA.Equanimity = {hands = "Peda. Bracers +1"}
	sets.JA.Altruism = {head = "Peda. M.Board +1"}
	sets.JA.Focalization = {head = "Peda. M.Board +1"}

	-- Modes
	mode_map = {[1] = "Support", [2] = "Melee"}
	mode = 1

	Weapon_map = {[1] = "Maxentius", [2] = "Pedagogy"}
	Weapon_mode = 1

	Idle_map = {[1] = "Refresh", [2] = "DT"}
	Idle_mode = 1

	TP_map = {[1] = "Normal", [2] = "DT"}
	TP_mode = 1

	Nuke_Map = {
		["Fire"] = "LowNuke",
		["Fire II"] = "LowNuke",
		["Fire III"] = "LowNuke",
		["Fire IV"] = "HighNuke",
		["Fire V"] = "HighNuke",
		["Blizzard"] = "LowNuke",
		["Blizzard II"] = "LowNuke",
		["Blizzard III"] = "LowNuke",
		["Blizzard IV"] = "HighNuke",
		["Blizzard V"] = "HighNuke",
		["Aero"] = "LowNuke",
		["Aero II"] = "LowNuke",
		["Aero III"] = "LowNuke",
		["Aero IV"] = "HighNuke",
		["Aero V"] = "HighNuke",
		["Stone"] = "LowNuke",
		["Stone II"] = "LowNuke",
		["Stone III"] = "LowNuke",
		["Stone IV"] = "HighNuke",
		["Stone V"] = "HighNuke",
		["Thunder"] = "LowNuke",
		["Thunder II"] = "LowNuke",
		["Thunder III"] = "LowNuke",
		["Thunder IV"] = "HighNuke",
		["Thunder V"] = "HighNuke",
		["Water"] = "LowNuke",
		["Water II"] = "LowNuke",
		["Water III"] = "LowNuke",
		["Water IV"] = "HighNuke",
		["Water V"] = "HighNuke",
		["Impact"] = "HighNuke",
		["Geohelix"] = "LowNuke",
		["Geohelix II"] = "LowNuke",
		["Hydrohelix"] = "LowNuke",
		["Hydrohelix II"] = "HighNuke",
		["Anemohelix"] = "LowNuke",
		["Anemohelix II"] = "HighNuke",
		["Pyrohelix"] = "LowNuke",
		["Pyrohelix II"] = "HighNuke",
		["Cryohelix"] = "LowNuke",
		["Cryohelix II"] = "HighNuke",
		["Ionohelix"] = "LowNuke",
		["Ionohelix II"] = "HighNuke",
		["Noctohelix"] = "LowNuke",
		["Noctohelix II"] = "HighNuke",
		["Luminohelix"] = "LowNuke",
		["Luminohelix II"] = "HighNuke",
	}
	-- Precast Sets
	sets.precast = {}
	sets.precast.FC = {
		main = "Pedagogy Staff", -- 1%
		sub = "Kaja Grip",
		ammo = "Incantor Stone", -- 2%
		head = "Peda. M.Board +1", -- 11%
		left_ear = "Etiolation Earring", -- 1%
		right_ear = "Malignance Earring", -- 5%
		body = "Agwu's Robe", -- 8%
		hands = "Acad. Bracers +3", -- 9%
		left_ring = "Kishar Ring", -- 4%
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		legs = "Pinga Pants", -- 11%
		waist = "Embla Sash", -- 5%
		feet = "Acad. Loafers +3", -- 12%
	}

	sets.precast.Cure = {
		sub = "Dominie's Grip", -- 2%
	}

	sets.precast.EnhancingMagic = {}

	sets.precast.Impact = {body = "Crepuscular Cloak"}
	-- Midcast Sets
	sets.Midcast = {}
	sets.Midcast.Haste = {
		ammo = "Incantor Stone",
		head = "Acad. Mortar. +3",
		body = "Telchine Chas.",
		hands = "Acad. Bracers +3",
		legs = "Pinga Pants",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.Debuff = {
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar. +3",
		neck = "Argute Stole +1",
		right_ear = "Malignance Earring",
		body = "Acad. Gown +3",
		hands = "Acad. Bracers +3",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.Stun = {
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar. +3",
		neck = "Argute Stole +1",
		right_ear = "Malignance Earring",
		body = "Acad. Gown +3",
		hands = "Acad. Bracers +3",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Chironic Hose",
		feet = "Acad. Loafers +3",
	}

	sets.Midcast.LowNuke = {
		main = "Bunzi's rod",
		sub = "Genbu's Shield",
		ammo = "Hydrocera",
		head = "Agwu's Cap",
		neck = "Argute Stole +1",
		left_ear = "Friomisi Earring",
		right_ear = "Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		left_ring = "Mallquis Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Agwu's Slops",
		feet = "Agwu's Pigaches",
	}

	sets.Midcast.HighNuke = {
		main = "Bunzi's rod",
		sub = "Genbu's Shield",
		ammo = "Hydrocera",
		head = "Agwu's Cap",
		neck = "Argute Stole +1",
		left_ear = "Friomisi Earring",
		right_ear = "Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		left_ring = "Mallquis Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Agwu's Slops",
		feet = "Agwu's Pigaches",
	}

	sets.Midcast.Cure = {
		main = "Daybreak", -- 30%
		sub = "Sors Shield", -- 3%
		hands = "Weath. Cuffs +1", -- 9%
		left_ring = "Naji's Loop", -- 1% 1&2
		legs = "Acad. Pants +3", -- 15%
	}

	sets.Midcast.Regen = {
		-- Telchine augment Enh Mag Duration +10
		main = "Pedagogy Staff",
		sub = "Kaja Grip",
		head = "Telchine Cap",
		body = "Telchine Chas.",
		hands = "Telchine Gloves", -- hands="Arbatel Bracers +3",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Embla Sash",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches",
	}

	sets.Midcast.Stoneskin = {
		main = "Iridal Staff",
		sub = "Enki Strap",
		ammo = "Kalboron Stone",
		head = "Acad. Mortar +3",
		neck = "Argute Stole +1",
		body = "Mallquis Saio +2",
		hands = "Mallquis Cuffs +2",
		back = {name = "Lugh's Cape", augments = {"MND+20", "\"Fast Cast\"+10", "Mag. Acc.+20/Mag. Dmg.+20"}},
		waist = "Belisama's Rope +1",
		legs = "Pinga Pants",
		feet = "Mallquis Clogs +2",
	}

	sets.Midcast.Cursna = {
		left_ring = "Ephedra Ring",
		right_ring = "Ephedra Ring",
		legs = "Acad. Pants +3",
		feet = "Gende. Galosh. +1",
	}

	sets.Midcast.Impact = {body = "Crepuscular Cloak"}

	sets.Midcast.Obis = {}
	-- sets.Midcast.Obis.Fire = {waist="Karin Obi"}
	sets.Midcast.Obis.Earth = {waist = "Dorin Obi"}
	-- sets.Midcast.Obis.Water = {waist="Suirin Obi"}
	-- sets.Midcast.Obis.Wind = {waist="Furin Obi"}
	-- sets.Midcast.Obis.Ice = {waist="Hyorin Obi"}
	-- sets.Midcast.Obis.Lightning = {waist="Rairin Obi"}
	-- sets.Midcast.Obis.Light = {waist="Korin Obi"}
	-- sets.Midcast.Obis.Dark = {waist="Anrin Obi"}

	-- Aftercast Sets
	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {}
	sets.Idle.Refresh = {
		main = "Daybreak",
		sub = "Genbu's Shield",
		ammo = "Kalboron Stone",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Acad. Gown +3",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle.DT = {
		main = "Daybreak",
		sub = "Genbu's Shield",
		ammo = "Kalboron Stone",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"INT+20", "Mag. Acc.+20/Mag. Dmg.+20", "INT+10", "\"Mag. Atk. Bns.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Belisama's Rope +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle.Sublimation = {head = "Acad. Mortar. +3", waist = "Embla Sash"}

	sets.Resting = {main = "Iridal Staff", sub = "Kaja Grip"}

	sets.TP = {}
	sets.TP.Normal = {
		ammo = "Kalboron Stone",
		head = "Jhakri Coronal +2",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Mache Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Lugh's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Eschan Stone",
		legs = "Jhakri Slops +2",
		feet = "Jhakri Pigaches +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Volte Cap"}

	sets.Weapon = {}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Sors Shield"}
	sets.Weapon.Pedagogy = {main = "Pedagogy Staff", sub = "Kaja Grip"}

	sets.WS = {}
	sets.WS_Default = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Jhakri Cuffs +2",
		left_ring = "Vehemence Ring",
		right_ring = "Rajas Ring",
		back = {name = "Lugh's Cape", augments = {"MND+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	enable("main", "sub")
	sub_job_change(player.sub_job, "NON")
end

local function affinity_check(element)
	if element == world.weather_element or element == world.day_element and sets.Midcast.Obis[element] then
		equip(sets.Midcast.Obis[element])
	end
	-- if set.Midcast[element] then equip(set.Midcast[element]) end
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC)
		if string.find(spell.english, "Cur") then
			equip(sets.precast.Cure)
		end
		if spell.skill == "Enhancing Magic" then
			equip(sets.precast.EnhancingMagic)
		end
		if spell.english == "Impact" then
			equip(sets.precast.Impact)
		end
	end
end

function midcast(spell)
	if sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif string.find(spell.english, "Regen") then
		equip(sets.Midcast.Regen)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
	elseif Nuke_Map[spell.english] == "LowNuke" then
		equip(sets.Midcast.LowNuke)
		affinity_check(spell.element)
	elseif Nuke_Map[spell.english] == "HighNuke" then
		equip(sets.Midcast.HighNuke)
		if spell.english == "Impact" then
			equip(sets.Midcast.Impact)
		end
		affinity_check(spell.element)
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
	if string.find(spell.english, "Dia") then
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
		if buffactive["Sublimation: Activated"] then
			equip(sets.Idle.Sublimation)
		end
	end
end

function self_command(command)
	if string.lower(command) == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
	elseif string.lower(command) == "idle" then
		Idle_mode = Idle_mode + 1
		if Idle_mode > #Idle_map then
			Idle_mode = 1
		end
		equip(sets.Idle[Idle_map[Idle_mode]])
		windower.add_to_chat("Idle mode is now: " .. Idle_map[Idle_mode])
	elseif string.lower(command) == "mode" then
		mode = mode + 1
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
	elseif string.lower(command) == "weapon" then
		Weapon_mode = Weapon_mode + 1
		if Weapon_mode > #Weapon_map then
			Weapon_mode = 1
		end
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
		if mode == 2 then
			enable("main", "sub")
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable("main", "sub")
		end
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end
end

function sub_job_change(new, old)
	send_command("input /macro book 20;wait .1;input /macro set 1")
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain, buff_details)
	buff_name = buff:lower()
	if buff_name == "sublimation: activated" and gain then
		equip(sets.Idle.Sublimation)
	elseif buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end

