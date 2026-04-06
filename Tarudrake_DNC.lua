include("organizer-lib")

local res = require("resources")
local Craft = include("Craft")
local Common_Maps = include("Common_Maps")
local Common_Funcs = include("Common_Funcs")

function get_sets()
	sets.JA = {}
	sets.JA.Samba = {
		head = "Maxixi Tiara +2",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}
	sets.JA.Jig = {legs = "Horos Tights +1", feet = "Maxixi Toe Shoes +2"}
	sets.JA.Step = {head = "Maxixi Tiara +2", hands = "Maxixi Bangles +2"}
	sets.JA.Waltz = {head = "Horos Tiara +1", body = "Maxixi Casaque +2", feet = "Maxixi Toe Shoes +2"}
	sets.JA["Saber Dance"] = {legs = "Horos Tights +1"}
	sets.JA["Fan Dance"] = {hands = "Horos Bangles +1"}
	sets.JA["No Foot Rise"] = {body = "Horos Casaque +1"}
	sets.JA["Violent Flourish"] = {body = "Horos Casaque +1"}
	sets.JA.Trance = {head = "Horos Tiara +1"}

	sets.TP = {}

	TH_mode = false

	TP_map = {[1] = "Normal", [2] = "Hybrid", [3] = "DT"}
	TP_mode = 2

	Weapon_map = {[1] = "TPDagger", [2] = "Tauret"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.TPDagger = {main = "Tauret", sub = "Centovente"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Gleti's Knife"}

	sets.TP.Normal = {
		ammo = "Coiste Bodhar",
		head = "Gleti's Mask",
		neck = "Etoile Gorget +1",
		left_ear = "Odr Earring",
		right_ear = "Sherida Earring",
		body = "Mummu Jacket +2",
		hands = "Mummu Wrists +2",
		left_ring = "Mummu Ring",
		right_ring = "Epona's Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Etoile Gorget +1",
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		body = "Malignance Tabard",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sets.TP.DT = sets.DT

	sets.TP.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {}
	sets.WS_Default = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm", -- head="Maculele Tiara +3",
		neck = "Etoile Gorget +1",
		left_ear = "Moonshade Earring",
		right_ear = "Sherida Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets", -- hands="Maxixi Bangles +4",
		left_ring = "Cornelia's Ring",
		right_ring = "Epona's Ring",
		back = {name = "Senuna's Mantle", augments = {"DEX+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard", -- legs="Maculele Tights +3"
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		head = "Gleti's Mask", -- head="Blistering Sallet +1",
		left_ear = "Odr Earring",
		body = "Gleti's Cuirass",
		hands = "Gleti's Gauntlets",
		right_ring = "Mummu Ring",
		back = {name = "Senuna's Mantle", augments = {"DEX+20", "Accuracy+20 Attack+20", "Crit.hit rate+10"}},
		legs = "Gleti's Breeches",
		feet = "Gleti's Boots",
	}

	sets.WS["Rudra's Storm"] = {right_ring = "Ilabrat Ring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Meg. Gloves +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Meg. Gloves +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
	if spell.skill == "Ability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif string.find(spell.english, "Samba") then
			equip(sets.JA.Samba)
		elseif string.find(spell.english, "Jig") then
			equip(sets.JA.Jig)
		elseif string.find(spell.english, "Step") then
			equip(sets.JA.Step)
		elseif string.find(spell.english, "Waltz") then
			equip(sets.JA.Waltz)
		end
	end
end

function midcast(spell)
	if spell.skill == "Ability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif string.find(spell.english, "Samba") then
			equip(sets.JA.Samba)
		elseif string.find(spell.english, "Jig") then
			equip(sets.JA.Jig)
		elseif string.find(spell.english, "Step") then
			equip(sets.JA.Step)
		elseif string.find(spell.english, "Waltz") then
			equip(sets.JA.Waltz)
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
		equip(sets.TP[TP_map[TP_mode]])
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
		equip(sets.TP[TP_map[TP_mode]])
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
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat("TH mode is now: " .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == "Engaged" then
				equip(sets.TP[TP_map[TP_mode]])
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
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 19;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 19;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 19;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 19;wait .1;input /macro set 4")
	else
		send_command("input /macro book 19;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 5")
end

