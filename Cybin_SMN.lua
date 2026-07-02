include("organizer-lib")

local res = require("resources")
local Craft = include("Common/Craft")
local Common_Maps = include("Common/Maps")
local Common_Funcs = include("Common/Functions")

FavorMode = false
AutoBP = true

BP_Phys = S {
	"Punch", "Rock Throw", "Barracuda Dive", "Claw", "Axe Kick", "Shock Strike", "Camisado", "Regal Scratch",
 "Poison Nails", "Moonlit Charge", "Crescent Fang", "Rock Buster", "Tail Whip", "Double Punch", "Megalith Throw",
 "Double Slap", "Eclipse Bite", "Mountain Buster", "Spinning Dive", "Predator Claws", "Rush", "Chaotic Strike",
 "Crag Throw", "Volt Strike",
}
BP_Hybrid = S {"Burning Strike", "Flaming Crush"}
BP_Magic = S {
	"Inferno", "Earthen Fury", "Tidal Wave", "Aerial Blast", "Diamond Dust", "Judgment Bolt", "Searing Light",
 "Howling Moon", "Ruinous Omen", "Fire II", "Stone II", "Water II", "Aero II", "Blizzard II", "Thunder II",
 "Thunderspark", "Somnolence", "Meteorite", "Fire IV", "Stone IV", "Water IV", "Aero IV", "Blizzard IV", "Thunder IV",
 "Nether Blast", "Meteor Strike", "Geocrush", "Grand Fall", "Wind Blade", "Heavenly Strike", "Thunderstorm",
 "Level ? Holy", "Holy Mist", "Lunar Bay", "Night Terror", "Conflag Strike",
}
BP_Debuff = S {
	"Lunar Cry", "Mewing Lullaby", "Nightmare", "Lunar Roar", "Slowga", "Ultimate Terror", "Sleepga", "Eerie Eye",
 "Tidal Roar", "Diamond Storm", "Shock Squall", "Pavor Nocturnus",
}
BP_Buff = S {
	"Shining Ruby", "Frost Armor", "Rolling Thunder", "Crimson Howl", "Lightning Armor", "Ecliptic Growl", "Hastega",
 "Noctoshield", "Ecliptic Howl", "Dream Shroud", "Earthen Armor", "Fleet Wind", "Inferno Howl", "Soothing Ruby",
 "Heavenward Howl", "Soothing Current", "Hastega II", "Crystal Blessing",
}
BP_Other = S {
	"Healing Ruby", "Raise II", "Aerial Armor", "Reraise II", "Whispering Wind", "Glittering Ruby", "Earthen Ward",
 "Spring Water", "Healing Ruby II",
}
AvatarList = S {
	"Shiva", "Ramuh", "Garuda", "Leviathan", "Diabolos", "Titan", "Fenrir", "Ifrit", "Carbuncle", "Fire Spirit",
 "Air Spirit", "Ice Spirit", "Thunder Spirit", "Light Spirit", "Dark Spirit", "Earth Spirit", "Water Spirit",
 "Cait Sith", "Alexander", "Odin", "Atomos",
}
Spirit_Ele = {
	Fire = "Fire Spirit",
	Earth = "Earth Spirit",
	Water = "Water Spirit",
	Wind = "Air Spirit",
	Ice = "Ice Spirit",
	Lightning = "Thunder Spirit",
	Light = "Light Spirit",
	Dark = "Dark Spirit",
}
Spirit_Conflict = {
	Fire = "Ice",
	Earth = "Lightning",
	Water = "Fire",
	Wind = "Earth",
	Ice = "Wind",
	Lightning = "Water",
	Light = "Dark",
	Dark = "Light",
}

function get_sets()
	sets.JA = {}
	sets.Avatar = {}
	sets.WS = {}

	sets.WS_Default = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Idle = {
		main = "Gridarvor",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Lugalbanda Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Varar Ring +1",
		right_ring = "Evoker's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Resting = {}

	sets.DT = {
		head = "Nyame Helm",
		neck = "Elite Royal Collar",
		left_ear = "Evans Earring",
		right_ear = "Lugalbanda Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Varar Ring +1",
		right_ring = "Evoker's Ring",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.Avatar.PerpCost = {
		main = "Gridarvor", -- -5
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Con. Horn +1", -- +2
		neck = "Caller's Pendant",
		left_ear = "Evans Earring", -- -2
		right_ear = "Lugalbanda Earring",
		body = "Caller's Doublet +2", -- -4
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Evoker's Ring", -- -1
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1",
		legs = "Con. Spats +1",
		feet = "Convo. Pigaches +2", -- -4
	}

	sets.Avatar.Favor = {
		head = "Caller's Horn +2",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.Skill = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP = {}
	sets.Avatar.BP.Phys = {
		main = "Gridarvor",
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Path B
		neck = "Shulmanu Collar",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1", -- Incarnation Sash
		legs = "Apogee Slacks +1", -- Path D
		feet = "Convo. Pigaches +2",
	}

	sets.Avatar.BP.Magic = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2", -- Apogee Dalmatica Path A
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		}, -- Pet MAcc/Dmg cape
		waist = "Klouskap Sash +1", -- Regal Belt
		legs = "Enticer's Pants",
		feet = "Apogee Pumps", -- Path A
	}

	sets.Avatar.BP.Hybrid = {
		main = "Grioavolr", -- (BPD+9-10, Pet MAB/MAcc 20+)
		sub = "Elan Strap",
		ammo = "Epitaph",
		head = "Apogee Crown", -- Apogee Crown Path A/C. Palug Crown
		neck = "Adad Amulet",
		left_ear = "Gelos Earring",
		right_ear = "Lugalbanda Earring",
		body = "Con. Doublet +2",
		hands = "Merlinic Dastanas",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				"Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20", "Eva.+20 /Mag. Eva.+20", "Pet: \"Regen\"+10",
    "Pet: \"Regen\"+5",
			},
		},
		waist = "Klouskap Sash +1", -- Regal Belt
		legs = "Apogee Slacks +1", -- Path D
		feet = "Apogee Pumps", -- Path A
	}

	sets.Avatar.BP.Buff = {
		head = "Con. Horn +1",
		neck = "Caller's Pendant",
		body = "Caller's Doublet +2",
		hands = "Inyan. Dastanas +2",
		right_ring = "Evoker's Ring",
		legs = "Caller's Spats +2",
		feet = "Convo. Pigaches +2",
	}

	sets.precast = {}
	sets.precast.FC = {
		neck = "Voltsurge Torque", -- 4%
		right_ear = "Malignance Earring", -- 4%
		body = "Inyanga Jubbah +2", -- 14%
		left_ring = "Kishar Ring", -- 4%
	}

	sets.precast.BP = {
		ammo = "Epitaph", -- -5 (II)
		head = "Con. Horn +1", -- -8 (I)
		left_ear = "Evans Earring", -- -2 (I)
		body = "Con. Doublet +2", -- -6 (I)
	}

	sets.precast.Summoning = {}

	sets.midcast = {}
	sets.midcast.Cure = {main = "Chatoyant Staff"}

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
	if midaction() or pet_midaction() then
		return
	end
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end
	equip(sets.precast.FC)
	if (spell.type == "BloodPactRage" or spell.type == "BloodPactWard") and
					not (buffactive["Astral Conduit"] or buffactive["Apogee"]) then
		equip(sets.precast.BP)
	elseif spell.type == "SummonerPact" then
		equip(sets.precast.Summoning)
	end
end

function midcast(spell)
	if pet_midaction() then
		return
	end
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif spell.prefix == "/weaponskill" then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.type == "WhiteMagic" or spell.type == "BlackMagic" then
		if spell.name:match("Cure") or spell.name:match("Cura") then
			equip(sets.midcast.Cure)
		end
	elseif sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	end
end

function aftercast(spell)
	if pet_midaction() then
		return
	end
	if pet.isvalid then
		equip(sets.Avatar.PerpCost)
	else
		equip(sets.Idle)
	end
	if FavorMode then
		equip(sets.Avatar.Favor)
	end
end

function pet_change(pet, gain)
	if gain then
		equip(sets.Avatar.PerpCost)
	else
		equip(sets.Idle)
	end
end

function pet_midcast(spell)
	if (spell.type == "BloodPactRage" or spell.type == "BloodPactWard") then
		if BP_Phys:contains(spell.english) then
			equip(sets.Avatar.BP.Phys)
		elseif BP_Hybrid:contains(spell.english) then
			equip(sets.Avatar.BP.Hybrid)
		elseif BP_Magic:contains(spell.english) then
			equip(sets.Avatar.BP.Magic)
		elseif BP_Buff:contains(spell.english) then
			equip(sets.Avatar.BP.Buff)
		else
			equip(sets.Avatar.Skill)
		end
	end
end

function pet_aftercast(spell)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and AutoBP then
		if (player.mp < 229) then
			send_command("input /ja \"Convert\" <me>")
		end
		send_command(("input /pet \"%s\" <t>"):format(spell.english))
	end
	aftercast(spell)
end

function status_change(new, old)
	if new == "Resting" then
		equip(sets.Resting)
	elseif new == "Idle" then
		if pet.isvalid then
			equip(sets.Avatar.PerpCost)
		else
			equip(sets.Idle)
		end
	end
end

function self_command(command)
	if string.lower(command) == "dt" then
		equip(sets.DT)
	elseif string.lower(command) == "favormode" then
		FavorMode = not FavorMode
		windower.add_to_chat("Favor mode is now: " .. FavorMode and "ON" or "OFF")
	elseif string.lower(command) == "autobp" then
		AutoBP = not AutoBP
		windower.add_to_chat("AutoBP mode is now: " .. AutoBP and "ON" or "OFF")
	elseif string.lower(command:contains("craft")) then
		Craft.handle_command(command)
	elseif command:lower() == "update" then
		Common_Funcs.Update_Gear()
	end

end

function sub_job_change(new, old)
	if player.sub_job == "RDM" then
		send_command("input /macro book 15;wait .1;input /macro set 1")
	else
		send_command("input /macro book 15;wait .1;input /macro set 1")
	end
	send_command("@wait 5;input /lockstyleset 1")
end

function buff_change(buff, gain)
	buff_name = buff:lower()
	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end
end
