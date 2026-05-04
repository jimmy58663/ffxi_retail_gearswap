include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	-- sets.JA["Burst Affinity"] = {legs="Assim. Shalwar +3",feet="Hashi. Basmak +1"}
	-- sets.JA["Chain Affinity"] = {feet="Assim. Charuqs +2"}
	-- sets.JA.Convergence = {head="Luh. Keffiyeh +3"}
	-- sets.JA.Diffusion = {feet="Luhlaza Charuqs +3"}
	-- sets.JA.Enchainment = {}
	-- sets.JA.Efflux = {back=gear.da_jse_back,legs="Hashishin Tayt +1"}
	-- sets.JA["Azure Lore"] = {hands="Luh. Bazubands +1"}

	sets.TP = {}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Melee", [2] = "Maxentius", [3] = "Nuke"}
	Weapon_mode = 3

	sets.Weapon = {}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Thibron"}
	sets.Weapon.Maxentius = {main = "Kaja Rod", sub = "Naegling"}
	sets.Weapon.Nuke = {main = "Naegling", sub = "Kaja Rod"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Aya. Zucchetto +2",
		body = "Ayanmo Corazza +2",
		hands = "Aya. Manopolas +2",
		legs = "Aya. Cosciales +2",
		feet = "Aya. Gambieras +2",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Brutal Earring",
		left_ring = "Murky Ring",
		right_ring = "Chirich Ring +1",
		back = {name = "Mecisto. Mantle", augments = {"Cap. Point+41%", "MND+3", "Rng.Acc.+3", "DEF+1"}},
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Oshasha's Treatise",
		head = "Nyame Helm",
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
		back = "Cornflower Cape",
	}

	sets.WS["Savage Blade"] = {}

	sets.Idle = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Jhakri Robe +2",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		left_ring = "Murky Ring",
		right_ring = "Chirich Ring +1",
		back = "Cornflower Cape",
	}

	sets.DT = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Elite Royal Collar",
		waist = "Sailfi Belt +1",
		left_ear = "Alabaster Earring",
		right_ear = "Etiolation Earring",
		left_ring = "Murky Ring",
		right_ring = "Chirich Ring +1",
		back = "Cornflower Cape",
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
	}

	sets.Precast.BlueMagic = {body = "Mavi Mintan +1"}

	sets.BlueMagic = {}
	sets.BlueMagic.Physical = {}
	sets.BlueMagic.Magical = {}
	sets.BlueMagic.Healing = {}
	sets.BlueMagic.Buffs = {}

	sets.BlueMagic.Physical.Default = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = "Cornflower Cape",
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

	sets.BlueMagic.Magical.Default = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = "Cornflower Cape",
	}
	sets.BlueMagic.Magical.INT = {}
	sets.BlueMagic.Magical.MND = {}
	sets.BlueMagic.Magical.CHR = {}
	sets.BlueMagic.Magical.VIT = {}
	sets.BlueMagic.Magical.DEX = {}
	sets.BlueMagic.Magical.AGI = {}
	sets.BlueMagic.Magical.ACC = {}
	sets.BlueMagic.Magical.BREATH = {}

	sets.BlueMagic.Healing.Default = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
		back = "Cornflower Cape",
	}
	sets.BlueMagic.Healing.MND = {}
	sets.BlueMagic.Healing.HP = {}

	sets.BlueMagic.Buffs.Default = {
		ammo = "Crepuscular Pebble",
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		neck = "Sibyl Scarf",
		waist = "Sailfi Belt +1",
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		left_ring = "Kishar Ring",
		right_ring = "Jhakri Ring",
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
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.type == "BlueMagic" then
		if Common_Maps.BlueMagic.Physical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Physical[spell.english]
			equip(sets.BlueMagic.Physical.Default)
			equip(sets.BlueMagic.Physical[spell_type])
			if spell.english == "Glutinous Dart" then
				equip(sets.TH)
			end
		elseif Common_Maps.BlueMagic.Magical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Magical[spell.english]
			equip(sets.BlueMagic.Magical.Default)
			equip(sets.BlueMagic.Magical[spell_type])
		elseif Common_Maps.BlueMagic.Healing[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Healing[spell.english]
			equip(sets.BlueMagic.Healing.Default)
			equip(sets.BlueMagic.Healing[spell_type])
		elseif Common_Maps.BlueMagic.Buffs[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Buffs[spell.english]
			equip(sets.BlueMagic.Buffs.Default)
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
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
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
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if player.sub_job == "DRG" then
		send_command("input /macro book 16;wait .1;input /macro set 1")
	elseif player.sub_job == "RDM" then
		send_command("input /macro book 16;wait .1;input /macro set 2")
	elseif player.sub_job == "THF" then
		send_command("input /macro book 16;wait .1;input /macro set 3")
	else
		send_command("input /macro book 1;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 5")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
