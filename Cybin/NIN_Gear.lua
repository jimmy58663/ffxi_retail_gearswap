function init_gear_sets()
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	TP_map = {[1] = "Tank", [2] = "DPS", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "Naegling", [2] = "Tauret"}
	Weapon_mode = 1

	sets.Weapon.Naegling = {main = "Naegling", sub = "Yagyu Darkblade"}
	sets.Weapon.Tauret = {main = "Kaja Knife", sub = "Yagyu Darkblade"}

	sets.TP.Tank = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Epona's Ring",
		right_ring = "Mummu Ring",
		back = "Mecisto. Mantle",
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DPS = {
		ammo = "Date Shuriken",
		head = "Mummu Bonnet +2",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Epona's Ring",
		right_ring = "Mummu Ring",
		back = "Mecisto. Mantle",
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
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
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Mecisto. Mantle",
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Epona's Ring",
		right_ring = "Mummu Ring",
		back = "Mecisto. Mantle",
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		ammo = "Date Shuriken",
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Suppanomimi",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Epona's Ring",
		right_ring = "Mummu Ring",
		back = "Mecisto. Mantle",
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
