function init_gear_sets()
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	TP_map = {[1] = "Tank", [2] = "DPS", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Gokotai", [2] = "Naegling", [3] = "Tauret"}
	Weapon_mode = 1

	sets.Weapon.Gokotai = {main = "Kaja Katana", sub = "Yagyu Darkblade"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Yagyu Darkblade"}
	sets.Weapon.Tauret = {main = "Kaja Knife", sub = "Yagyu Darkblade"}

	sets.TP.Tank = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Ninja Nodowa +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Petrov Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Andartia's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DPS = {
		ammo = "Date Shuriken",
		head = "Mpaca's Cap",
		neck = "Ninja Nodowa +1",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mpaca's Doublet",
		hands = "Mpaca's Gloves",
		left_ring = "Petrov Ring",
		right_ring = "Rajas Ring",
		back = {
			name = "Andartia's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mpaca's Hose",
		feet = "Mpaca's Boots",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.Precast.FC = {}

	sets.Midcast.Utsusemi = {
		back = {
			name = "Andartia's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		feet = "Hattori Kyahan +1",
	}

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Ninja Nodowa +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Petrov Ring",
		right_ring = "Beithir Ring",
		back = {name = "Andartia's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Andartia's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Andartia's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "RUN" then
		send_command("input /macro book 13;wait .1;input /macro set 1")
	elseif new == "DNC" then
		send_command("input /macro book 13;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 13;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 13;wait .1;input /macro set 4")
	else
		send_command("input /macro book 13;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 4")
end
