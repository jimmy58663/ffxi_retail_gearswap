include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA["Burst Affinity"] = {feet = "Hashi. Basmak +2"} -- legs="Assim. Shalwar +3",
	-- sets.JA["Chain Affinity"] = {feet="Assim. Charuqs +2"}
	-- sets.JA.Convergence = {head="Luh. Keffiyeh +3"}
	-- sets.JA.Diffusion = {feet="Luhlaza Charuqs +3"}
	-- sets.JA.Enchainment = {}
	sets.JA.Efflux = {
		back = {
			name = "Rosmerta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		legs = "Hashishin Tayt +2",
	}
	-- sets.JA["Azure Lore"] = {hands="Luh. Bazubands +1"}

	sets.TP = {}
	Movement = false

	TP_map = {[1] = "Hybrid", [2] = "Learning"}
	TP_mode = 1

	Weapon_map = {[1] = "Naegling", [2] = "Maxentius", [3] = "Nuke"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Thibron"}
	sets.Weapon.Maxentius = {main = "Maxentius", sub = "Thibron"}
	sets.Weapon.Nuke = {main = "Bunzi's Rod", sub = "Maxentius"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Brutal Earring",
		left_ring = "Gelatinous Ring +1",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Rosmerta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}

	sets.TP.Learning = {
		ammo = "Coiste Bodhar",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Assim. Bazu. +1",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Brutal Earring",
		left_ring = "Gelatinous Ring +1",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Rosmerta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Oshasha's Treatise",
		head = "Hashishin Kavuk +2",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		left_ring = "Ephramad's Ring",
		right_ring = "Sroda Ring",
		back = {
			name = "Rosmerta's Cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%", "Phys. dmg. taken-10%"},
		},
	}

	sets.WS["Savage Blade"] = {}

	sets.Idle = {
		ammo = "Crepuscular Pebble",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		left_ring = "Gelatinous Ring +1",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Rosmerta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}

	sets.Movement = {legs = "Carmine Cuisses +1"}

	sets.DT = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Hashishin Mintan +2",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		left_ring = "Gelatinous Ring +1",
		right_ring = "Chirich Ring +1",
		back = {
			name = "Rosmerta's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}

	sets.TP.DT = sets.DT

	sets.Precast = {}
	sets.Precast.FC = {
		head = "Jhakri Coronal +2",
		hands = "Jhakri Cuffs +2",
		legs = "Aya. Cosciales +2",
		feet = "Jhakri Pigaches +2",
		neck = "Voltsurge Torque",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {name = "Rosmerta's Cape", augments = {"\"Fast Cast\"+10"}},
	}

	sets.Precast.BlueMagic = {body = "Hashishin Mintan +2"}

	sets.BlueMagic = {}
	sets.BlueMagic.Physical = {
		ammo = "Crepuscular Pebble",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Ethereal Earring",
		left_ring = "Ephramad's Ring",
		right_ring = "Spiral Ring",
		back = {
			name = "Rosmerta's Cape",
			augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%", "Phys. dmg. taken-10%"},
		},
	}
	sets.BlueMagic.Physical.STR = {}
	sets.BlueMagic.Physical.ACC = {}
	sets.BlueMagic.Physical.DEX = {}
	sets.BlueMagic.Physical.VIT = {}
	sets.BlueMagic.Physical.AGI = {}
	sets.BlueMagic.Physical.INT = {}
	sets.BlueMagic.Physical.MND = {}
	sets.BlueMagic.Physical.CHR = {}
	sets.BlueMagic.Physical.HP = {}

	sets.BlueMagic.Magical = {
		ammo = "Crepuscular Pebble",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Rosmerta's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
	}
	sets.BlueMagic.Magical.INT = {}
	sets.BlueMagic.Magical.MND = {}
	sets.BlueMagic.Magical.CHR = {}
	sets.BlueMagic.Magical.VIT = {}
	sets.BlueMagic.Magical.DEX = {}
	sets.BlueMagic.Magical.AGI = {}
	sets.BlueMagic.Magical.ACC = {}
	sets.BlueMagic.Magical.BREATH = {}

	sets.BlueMagic.Healing = {
		ammo = "Crepuscular Pebble",
		head = "Hashishin Kavuk +2",
		body = "Hashishin Mintan +2",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = {
			name = "Rosmerta's Cape",
			augments = {"INT+20", "Mag. Acc+20 /Mag. Dmg.+20", "\"Mag.Atk.Bns.\"+10", "Phys. dmg. taken-10%"},
		},
	}
	sets.BlueMagic.Healing.MND = {}
	sets.BlueMagic.Healing.HP = {}

	sets.BlueMagic.Buffs = {
		ammo = "Crepuscular Pebble",
		head = "Hashishin Kavuk +2",
		body = "Magus Jubbah",
		hands = "Hashi. Bazu. +2",
		legs = "Hashishin Tayt +2",
		feet = "Hashi. Basmak +2",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		left_ring = "Gelatinous Ring +1",
		right_ring = "Murky Ring",
		back = "Cornflower Cape",
	}
	sets.BlueMagic.Buffs.SKILL = {}

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	end
	if spell.prefix == "/magic" then
		equip(sets.Precast.FC)
		if spell.type == "BlueMagic" then
			equip(sets.Precast.BlueMagic)
		end
	end
end

function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.type == "BlueMagic" then
		if Common_Maps.BlueMagic.Physical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Physical[spell.english]
			equip(sets.BlueMagic.Physical)
			equip(sets.BlueMagic.Physical[spell_type])
			if spell.english == "Glutinous Dart" then
				equip(sets.TH)
			end
		elseif Common_Maps.BlueMagic.Magical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Magical[spell.english]
			equip(sets.BlueMagic.Magical)
			equip(sets.BlueMagic.Magical[spell_type])
		elseif Common_Maps.BlueMagic.Healing[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Healing[spell.english]
			equip(sets.BlueMagic.Healing)
			equip(sets.BlueMagic.Healing[spell_type])
		elseif Common_Maps.BlueMagic.Buffs[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Buffs[spell.english]
			equip(sets.BlueMagic.Buffs)
			equip(sets.BlueMagic.Buffs[spell_type])
		end
	elseif spell.english:contains("Dia") then
		equip(sets.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	else
		equip(sets.Idle)
		if Movement then
			equip(sets.Movement)
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
		if Movement then
			equip(sets.Movement)
		end
	elseif new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
	command = string.lower(command)
	local cmd_array = string.split(command, " ")
	if cmd_array[1] == "dt" then
		equip(sets.DT)
	elseif cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
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
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	elseif cmd_array[1] == "craft" then
		Craft.handle_command(command)
	elseif cmd_array[1] == "update" then
		Common_Funcs.Update_Gear()
	elseif cmd_array[1] == "movement" then
		Movement = not Movement
		windower.add_to_chat("Movement mode is now: " .. (Movement and "ON" or "OFF"))
		aftercast()
	elseif cmd_array[1] == "display" then
		if cmd_array[2] == "show" then
			Common_Funcs.Show_Display()
		elseif cmd_array[2] == "hide" then
			Common_Funcs.Hide_Display()
		elseif cmd_array[2] == "toggle" or cmd_array[2] == nil then
			if Common_Funcs.display_box then
				if Common_Funcs.display_box.visible then
					Common_Funcs.display_box:hide()
				else
					Common_Funcs.display_box:show()
					Common_Funcs.Update_Display()
				end
			end
		end
	end
end

function sub_job_change(new, old)
	Weapon_mode = 1
	if new == "DRG" then
		send_command("input /macro book 16;wait .1;input /macro set 1")
	elseif new == "RDM" then
		send_command("input /macro book 16;wait .1;input /macro set 2")
		Weapon_mode = 3
	elseif new == "THF" then
		send_command("input /macro book 16;wait .1;input /macro set 3")
	else
		send_command("input /macro book 1;wait .1;input /macro set 1")
	end
	send_command("input //gs c update")
	send_command("@wait 5;input /lockstyleset 5")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
