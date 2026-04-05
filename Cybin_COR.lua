include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Maps = include('Common_Maps')
local Common_Funcs = include('Common_Funcs')

function get_sets()

    sets.JA = {}
    sets.JA.Fold = {hands="Lanun Gants +3"}
	sets.JA['Snake Eye'] = {legs="Lanun Trews +3"}
    sets.JA['Wild Card'] = {feet="Lanun Bottes +3"}
    sets.JA['Random Deal'] = {body="Lanun Frac +3"}
	sets.JA['Quick Draw'] = {
		ammo="Chrono Bullet",
		head="Laksa. Tricorne",
		left_ear="Hecate's Earring",
        right_ear="Novio Earring",
		--body="Chasseur's Frac +3",
		--hands="Chasseaur's Gants +3",
		--legs="Chas. Culottes +3",
		feet="Laksa. Bottes",
	}

	sets.JA.CorsairRoll = {
        head="Comm. Tricorne",
        --neck="Regal Necklace",
        --left_ear="Odnowa Earring +1",
        right_ear="Etiolation Earring",
		--body="Malignance Tabard",
        --hands="Chasseur's Gants +3",
        left_ring="Gelatinous Ring +1",
        right_ring="Murky Ring",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
        waist="Plat. Mog. Belt",
		--legs="Desultor Tassets",
        --feet="Malignance Boots",
    }

    sets.JA["Caster's Roll"] = {legs="Chas. Culottes +3"}
    sets.JA["Courser's Roll"] = {feet="Chass. Bottes +2"}
    sets.JA["Blitzer's Roll"] = {head="Chass. Tricorne +2"}
    sets.JA["Tactician's Roll"] = {body="Chasseur's Frac +2"}
    sets.JA["Allies' Roll"] = {hands="Chasseur's Gants +3"}
	sets.JA.Compensator = {
		main={ name="Lanun Knife", augments={'Path: C',}},
		range="Compensator",
	}
	sets.JA.Luzaf = {left_ring="Luzaf's Ring"}

	rolls = {
        ["Corsair's Roll"] =    {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"] =        {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"] =     {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"] =        {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"] =      {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"] =     {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Drachen Roll"] =      {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"] =       {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"] =       {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"] =        {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"] =      {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"] =     {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"] =      {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"] =    {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"] =    {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Puppet Roll"] =       {lucky=3, unlucky=7, bonus="Pet Magic Attack/Accuracy"},
        ["Gallant's Roll"] =    {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"] =     {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"] =     {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"] =    {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Naturalist's Roll"] = {lucky=3, unlucky=7, bonus="Enh. Magic Duration"},
        ["Runeist's Roll"] =    {lucky=4, unlucky=8, bonus="Magic Evasion"},
        ["Bolter's Roll"] =     {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"] =     {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"] =    {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"] =    {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] =  {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies' Roll"] =      {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"] =      {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] =  {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"] =    {lucky=4, unlucky=8, bonus="Counter Rate"},
    }

    sets.TP = {}
	sets.TP.Ranged = {}
	TH_mode = false

	Ranged = true
	Compensator = false
	Luzaf = true

	TP_map = {
		[1] = "Normal",
		[2] = "Hybrid",
		[3] = "DT",
	}
    TP_mode = 2

	Weapon_map = {
		[1] = "Fomalhaut",
		[2] = "Naegling",
		[3] = "DualWield",
		[4] = "RangedDW",
	}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Fomalhaut = {main={ name="Lanun Knife", augments={'Path: A',}}, sub="Nusku Shield", range="Fomalhaut", ammo="Chrono Bullet"}
	sets.Weapon.Naegling = {main="Naegling", sub="Nusku Shield", range="Ataktos", ammo="Chrono Bullet"}
	sets.Weapon.DualWield = {main="Naegling", sub="Gleti's Knife", range="Ataktos", ammo="Chrono Bullet"}
	sets.Weapon.RangedDW = {main="Naegling", sub="Kaja Knife", range="Fomalhaut", ammo="Chrono Bullet"}

    sets.TP.Normal = {
		head="Mummu Bonnet +2",
        neck="Ej Necklace",
		left_ear="Suppanomimi",
        right_ear="Brutal Earring",
		body="Mummu Jacket +2",
        hands="Mummu Wrists +2",
        left_ring="Petrov Ring",
        right_ring="Epona's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Sailfi Belt +1",
		legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
    }

	sets.TP.Ranged.Normal = {
		head="Ikenga's Hat",
		neck="Comm. Charm +1",
		left_ear="Crep. Earring",
        right_ear="Enervating Earring",
		body="Nisroch Jerkin",
		hands="Ikenga's Gloves",
		left_ring="Meghanada Ring",
		right_ring="Crepuscular Ring",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
		waist="Impulse Belt",
		legs="Ikenga's Trousers",
		feet="Ikenga's Clogs",
	}

    sets.TP.Hybrid = {
		head="Nyame Helm",
        neck="Ej Necklace",
		left_ear="Suppanomimi",
        right_ear="Brutal Earring",
		body="Nyame Mail",
        hands="Nyame Gauntlets",
        left_ring="Mummu Ring",
        right_ring="Chirich Ring +1",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
        feet="Nyame Sollerets",
    }

	sets.TP.Ranged.Hybrid = {
		head="Ikenga's Hat",
		neck="Comm. Charm +1",
		left_ear="Crep. Earring",
        right_ear="Enervating Earring",
		body="Nisroch Jerkin",
		hands="Ikenga's Gloves",
		left_ring="Meghanada Ring",
		right_ring="Crepuscular Ring",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
		waist="Impulse Belt",
		legs="Ikenga's Trousers",
		feet="Ikenga's Clogs",
	}

    sets.TP.DT = sets.DT

	sets.TP.Ranged.DT = sets.DT

	sets.TP.Ranged.PreShot = {
		head="Ikenga's Hat", --6
		neck="Comm. Charm +1", --3
		body="Ikenga's Vest", --9
		hands="Ikenga's Gloves", --7
		right_ring="Crepuscular Ring", --3
		back={name="Camulus's Mantle", augments={'"Snapshot"+10'}},
		waist="Impulse Belt", --3
		legs="Ikenga's Trousers", --8
		feet="Meg. Jam. +2", -- 10
	}

	sets.TP.Ranged.TripleShot = {
		body = "Chasseur's Frac +3"
	}

	sets.TP.TH = {head="Wh. Rarab Cap +1",}

    sets.WS = {}

	sets.WS_Default = {
		head="Nyame Helm",
        neck="Comm. Charm +1",
		left_ear="Moonshade Earring",
        right_ear="Enervating Earring",
		body="Ikenga's Vest",
        hands="Meg. Gloves +2",
        left_ring="Ephramad's Ring",
        right_ring="Rajas Ring",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
		waist="Svelt. Gouriz +1",
		legs="Nyame Flanchard",
        feet="Nyame Sollerets", --feet="Lanun Bottes +4"
	}

	sets.WS["Savage Blade"] = {
        head="Nyame Helm",
		right_ear="Brutal Earring",
		left_ring="Petrov Ring",
		body="Nyame Mail",
        hands="Nyame Gauntlets", --hands="Chasseur's Gants +3",
		back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
        feet="Nyame Sollerets",
	}

	sets.WS["Leaden Salute"] = {
		--head="Pixie Hairpin +1",
		hands="Nyame Gauntlets",
		right_ear="Novio Earring",
		right_ring="Meghanada Ring",
		legs="Laksa. Trews",
	}

    sets.Idle = {
		head="Nyame Helm",
        neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
        right_ear="Alabaster Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
        left_ring="Murky Ring",
        right_ring="Chirich Ring +1",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
        feet="Nyame Sollerets",
    }

    sets.DT = {
        head="Nyame Helm",
        neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
        right_ear="Alabaster Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
        left_ring="Murky Ring",
        right_ring="Chirich Ring +1",
		back={name="Camulus's Mantle", augments={'AGI+20','Rng. Acc.+20 Rng. Atk.+20','"Store TP"+10'}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
        feet="Nyame Sollerets",
    }

    sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
    if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if Compensator then
			equip(sets.JA.Compensator)
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged.PreShot)
	elseif spell.english == "Spectral Jig" and buffactive.sneak then
		send_command('cancel sneak')
	end
end

function midcast(spell)
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if Compensator then
			equip(sets.JA.Compensator)
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	end

	if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged[TP_map[TP_mode]])
		if buffactive["Triple Shot"] then
			equip(sets.TP.Ranged.TripleShot)
		end
	elseif spell.prefix == '/weaponskill' then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
    end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        if Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		else
			equip(sets.TP[TP_map[TP_mode]])
		end

		if TH_mode then
			equip(sets.TP.TH)
		end
    else
        equip(sets.Idle)
    end

	equip(sets.Weapon[Weapon_map[Weapon_mode]])

	if spell.type == "CorsairRoll" or spell.english == "Double-Up" and not spell.interrupted then
		display_roll_info(spell)
	end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle)
    elseif new == 'Engaged' then
        if Ranged then
			equip(sets.TP.Ranged[TP_map[TP_mode]])
		else
			equip(sets.TP[TP_map[TP_mode]])
		end

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
		windower.add_to_chat('TP mode is now: ' .. TP_map[TP_mode])
		if Pull_mode then
			equip(sets.Pulling)
		end
	elseif string.lower(command) == "ranged" then
		Ranged = not Ranged
		windower.add_to_chat('Ranged mode is now: ' .. (Ranged and "ON" or "OFF"))
		if player.status == 'Engaged' then
			if Ranged then
				equip(sets.TP.Ranged[TP_map[TP_mode]])
				Weapon_mode = 1
			else
				equip(sets.TP[TP_map[TP_mode]])
				Weapon_mode = 2
			end
		else
			equip(sets.Idle)
		end
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat('TH mode is now: ' .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == 'Engaged' then
				if Ranged then
					equip(sets.TP.Ranged[TP_map[TP_mode]])
				else
					equip(sets.TP[TP_map[TP_mode]])
				end
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
		windower.add_to_chat('Weapon mode is now: ' .. Weapon_map[Weapon_mode])
		if Weapon_mode == 1 then
			Ranged = true
		else
			Ranged = false
		end

		if player.status == 'Engaged' then
			if Ranged then
				equip(sets.TP.Ranged[TP_map[TP_mode]])
			else
				equip(sets.TP[TP_map[TP_mode]])
			end
		else
			equip(sets.Idle)
		end
	elseif string.lower(command) == "compensator" then
		Compensator = not Compensator
		windower.add_to_chat('Compensator mode is now: ' .. (Compensator and "ON" or "OFF"))
	elseif string.lower(command) == "luzaf" then
		Luzaf = not Luzaf
		windower.add_to_chat('Luzaf mode is now: ' .. (Luzaf and "ON" or "OFF"))
	end
elseif command:lower() == 'update' then
	Common_Funcs.Update_Gear()

end

function display_roll_info(spell)
	local rollinfo = rolls[spell.english]
	if rollinfo then
		windower.add_to_chat(104, spell.english .. " provides: " .. rollinfo.bonus .. " L: " .. rollinfo.lucky .. " U: " .. rollinfo.unlucky)
	end
end

function sub_job_change(new,old)
	if player.sub_job == "NIN" then
	    send_command('input /macro book 17;wait .1;input /macro set 1')
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "DNC" then
		send_command('input /macro book 17;wait .1;input /macro set 1')
		Ranged = false
		Weapon_mode = 3
	elseif player.sub_job == "WAR" then
		send_command('input /macro book 17;wait .1;input /macro set 2')
	elseif player.sub_job == "DRG" then
		send_command('input /macro book 17;wait .1;input /macro set 2')
	else
		send_command('input /macro book 17;wait .1;input /macro set 1')
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command('@wait 5;input /lockstyleset 1')
end