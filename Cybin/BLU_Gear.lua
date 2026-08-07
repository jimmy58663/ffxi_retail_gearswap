function init_gear_sets()
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

	TP_map = {[1] = "Hybrid", [2] = "Learning"}
	TP_mode = 1

	Weapon_map = {[1] = "Naegling", [2] = "Maxentius", [3] = "Nuke"}
	Weapon_mode = 1

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

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

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

	sub_job_change(player.sub_job, "NON")
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
