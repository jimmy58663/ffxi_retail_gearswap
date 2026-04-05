include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Maps = include('Common_Maps')
local Common_Funcs = include('Common_Funcs')

function get_sets()
    sets.JA = {}
	sets.JA.Nightingale = {feet="Bihu Slippers +2"}
    sets.JA.Troubadour = {body="Bihu Jstcorps. +2"}
    sets.JA['Soul Voice'] = {legs="Bihu Cannions +2"}
	
	mode_map = {
		[1] = "Support",
		[2] = "Melee",
	}
	mode = 1
	
	Weapon_map = {
		[1] = 'Tauret',
		[2] = 'Naegling',
		[3] = 'TauretDW',
		[4] = 'NaeglingDW',
		[5] = 'NaeglingDWAcc',
		[6] = 'MpuDW',
	}
	Weapon_mode = 4

	sets.Weapon = {}
	sets.Weapon.Tauret = {main="Tauret", sub="Genbu's Shield"}
	sets.Weapon.Naegling = {main="Naegling", sub="Genbu's Shield"}
	sets.Weapon.TauretDW = {main="Tauret", sub="Gleti's Knife"}
	sets.Weapon.NaeglingDW = {main="Naegling", sub="Centovente"}
	sets.Weapon.NaeglingDWAcc = {main="Naegling", sub="Gleti's Knife"}
	sets.Weapon.MpuDW = {main="Mpu Gandring", sub="Gleti's Knife"}

    -- Precast Sets
	sets.precast = {}
    
    sets.precast.FC = {
		head="Bunzi's Hat", --10%
		body="Inyanga Jubbah +2", --14%
		left_ring="Kishar Ring", --4%
		legs="Aya. Cosciales +2", --6%
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		feet="Fili Cothurnes +2",
	}
        
    sets.precast.Cure = {
		
    }
	
	sets.precast.songs = {}
	sets.precast.songs.Default = {
		--range="Miracle Cheer",
		range="Gjallarhorn",
		head="Fili Calot +2", --15%
		neck="Aoidos' Matinee", --3%
		feet="Telchine Pigaches", --12%
	}

	sets.precast.songs.Dummy = {
		range="Daurdabla"
	}

	sets.precast.songs.Honor = {
		range="Marsyas"
	}

	sets.precast.songs.Harp = {
		range="Daurdabla"
	}

	sets.precast.songs.Aria = {
		range="Loughnashade"
	}

	sets.precast.songs.Ballad = {
		range="Miracle Cheer"
	}
    
    sets.precast.EnhancingMagic = {}
    
    -- Midcast Sets
    sets.midcast = {}
        
    sets.midcast.Haste = {
		--ammo="Incantor Stone",
		head="Bunzi's Hat",
		body="Inyanga Jubbah +2",
		hands="Bunzi's Gloves",
		legs="Aya. Cosciales +2",
		feet="Bunzi's Sabots",
	}

    sets.midcast.Debuff = {
		main="Kaja Staff",
		sub="Enki Strap",
		head="Brioso Roundlet +2",
		neck="Mnbw. Whistle +1",
		body="Brioso Justau. +2",
		hands="Inyan. Dastanas +2", --"Brioso Cuffs +3",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		legs="Brioso Cannions +2",
		feet="Brioso Slippers +2",
	}

	sets.midcast.Stun = {
		main="Naegling",
		sub="Genbu's Shield",
		--ammo="Clarus Stone",
		head="Brioso Roundlet +2",
		neck="Mnbw. Whistle +1",
		body="Brioso Justau. +2",
		hands="Inyan. Dastanas +2", --"Brioso Cuffs +3",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		legs="Brioso Cannions +2",
		feet="Brioso Slippers +2",
	}
        
    sets.midcast.Cure = {
		main="Chatoyant Staff", -- 10%
		sub="Enki Strap",
		ammo="Clarus Stone",
		head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -2%','"Cure" potency +2%',}},
		body="Bunzi's Robe", -- 10%
		hands="Bokwus Gloves", --13%
		legs="Bunzi's Pants",
		feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -1%','"Cure" potency +3%',}},
	}
        
    sets.midcast.Stoneskin = {
		main="Chatoyant Staff",
		sub="Enki Strap",
		ammo="Clarus Stone",
		head="Bunzi's Hat",
		left_ear="Star Earring",
		body="Bunzi's Robe",
		hands="Inyan. Dastanas +2",
		left_ring="Star Ring",
		right_ring="Star Ring",
		back="Sunbeam Cape",
		waist="Cascade Belt",
		legs="Bunzi's Pants",
		feet="Bunzi's Sabots",
	}
    
    sets.midcast.Cursna = {
		main="Chatoyant Staff",
		sub="Enki Strap",
		ammo="Clarus Stone",
		head={ name="Gende. Caubeen", augments={'Phys. dmg. taken -2%','"Cure" potency +2%',}},
		hands="Inyan. Dastanas +2",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
		back="Vita Cape",
		feet={ name="Gende. Galoshes", augments={'Phys. dmg. taken -1%','"Cure" potency +3%',}},
	}
    
	sets.midcast.songs = {}
	sets.midcast.songs.Default = {
		main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
		sub="Genbu's Shield",
		neck="Mnbw. Whistle +1",
		head="Fili Calot +2",
		body="Fili Hongreline +2",
		hands="Fili Manchettes +2",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +2",
	}

	sets.midcast.songs.Debuff = {
		main="Kaja Staff",
		sub="Enki Strap",
		head="Brioso Roundlet +2",
		--left_ear="",
		--right_ear="",
		body="Fili Hongreline +2",
		hands="Fili Manchettes +2",
		left_ring="Inyanga Ring",
		right_ring="Stikini Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		waist="Cascade Belt",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +2",
	}

	sets.midcast.songs.Paeon = {head="Brioso Roundlet +2",}
	sets.midcast.songs.Lullaby = {hands="Brioso Cuffs +2",}
	sets.midcast.songs.Minuet = {body="Fili Hongreline +2",}
	sets.midcast.songs.March = {hands="Fili Manchettes +2",}
	sets.midcast.songs.Madrigal = {head="Fili Calot +2",}
	sets.midcast.songs.Scherzo = {feet="Fili Cothurnes +2",}
	sets.midcast.songs.Dummy = {neck="Bard's Charm +1",}
	sets.midcast.songs.Ballad = {legs="Fili Rhingrave +2",}
	sets.midcast.songs.Carol = {hands="Mousai Gages +1",}
	sets.midcast.songs.Etude = {head="Mousai Turban +1",}
    
    --Aftercast Sets
	sets.Idle = {}
    
	sets.Idle.Support = {
		main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
		sub="Genbu's Shield",
		range="Gjallarhorn",
		head="Fili Calot +2",
		neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
		right_ear="Alabaster Earring",
		body="Bunzi's Robe",
		hands="Fili Manchettes +2",
		left_ring="Inyanga Ring",
		right_ring="Murky Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		waist="Cascade Belt",
		legs="Fili Rhingrave +2",
		feet="Fili Cothurnes +2",
	}
	
	sets.Idle.Melee = {
		range="Gjallarhorn",
		head="Fili Calot +2",
		neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
		right_ear="Alabaster Earring",
		body="Ayanmo Corazza +2",
		hands="Bunzi's Gloves",
		left_ring="Chirich Ring",
		right_ring="Murky Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Fili Rhingrave +2",
		feet="Fili Cothurnes +2",
	}
	
	sets.Resting = {
	}
	
	sets.DT = {
		head="Fili Calot +2",
		neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
		right_ear="Alabaster Earring",
		body="Bunzi's Robe",
		hands="Fili Manchettes +2",
		left_ring="Ayanmo Ring",
		right_ring="Murky Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		waist="Cascade Belt",
		legs="Fili Rhingrave +2",
		feet="Bunzi's Sabots",
	}
        
	sets.TP = {}
    sets.TP.Default = {
		range={ name="Linos", augments={'Accuracy+20','"Dbl.Atk."+2','Quadruple Attack +3',}},
		head="Fili Calot +2",
		neck="Bard's Charm +1",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Ayanmo Corazza +2",
		hands="Bunzi's Gloves",
		left_ring="Chirich Ring",
		right_ring="Chirich Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Fili Rhingrave +2",
		feet="Aya. Gambieras +2",
    }

	sets.TP.HasteSamba = {
		left_ear="Mache Earring",
	}
	
	sets.WS = {}
    
	sets.WS_Default = {
		range={ name="Linos", augments={'Attack+19','Weapon skill damage +3%','STR+6 DEX+6',}},
		head="Nyame Helm",
		neck="Bard's Charm +1",
		left_ear="Moonshade Earring",
		right_ear="Brutal Earring", --right_ear="Ishvara Earring",
		body="Nyame Mail", --body="Bihu Jstcorps. +4",
		hands="Nyame Gauntlets",
		left_ring="Cornelia's Ring",
		right_ring="Rajas Ring",
		back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		left_ear="Mache Earring",
		right_ring="Mummu Ring",
	}

	sets.WS["Rudra's Storm"] = {
		right_ring="Ilabrat Ring"
	}

	enable('main', 'sub')

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC)
        if (player.status ~= 'Engaged') then
			--equip('main',{name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}})
		end
		if string.find(spell.english,'Cur') then
            equip(sets.precast.Cure)
        end
        if spell.skill == 'Enhancing Magic' then
            equip(sets.precast.EnhancingMagic)
		elseif spell.type == 'BardSong' then
			equip(sets.precast.songs.Default)
			if string.find(spell.english,'Horde Lullaby') then
				equip(sets.precast.songs.Harp)
			elseif string.find(spell.english,'Herculean Etude') or string.find(spell.english, 'Fowl Aubade') or string.find(spell.english, 'Herb Pastoral')  then
				equip(sets.precast.songs.Dummy)
			elseif string.find(spell.english,'Honor March') then
				equip(sets.precast.songs.Honor)
			elseif string.find(spell.english,'Aria') then
				equip(sets.precast.songs.Aria)
			elseif string.find(spell.english, 'Ballad') then
				equip(sets.precast.songs.Ballad)
			end
        end
    end
end

function midcast(spell)
	if spell.type == 'BardSong' then
		equip(sets.midcast.songs.Default)

		if string.find(spell.english, 'Requiem') or string.find(spell.english, 'Lullaby') or string.find(spell.english, 'Elegy') or string.find(spell.english, 'Threnody') or string.find(spell.english, 'Nocturne') then
			equip(sets.midcast.songs.Debuff)
		end

		if sets.midcast.songs[spell.english] then
			equip(sets.midcast.songs[spell.english])
		elseif string.find(spell.english, 'Herculean Etude') or string.find(spell.english, 'Fowl Aubade') or string.find(spell.english, 'Herb Pastoral') then
			equip(sets.midcast.songs.Dummy)
		elseif string.find(spell.english, 'Paeon') then
			equip(sets.midcast.songs.Paeon)
		elseif string.find(spell.english, 'Lullaby') then
			equip(sets.midcast.songs.Lullaby)
		elseif string.find(spell.english, 'Minuet') then
			equip(sets.midcast.songs.Minuet)
		elseif string.find(spell.english, 'March') then
			equip(sets.midcast.songs.March)
		elseif string.find(spell.english, 'Madrigal') then
			equip(sets.midcast.songs.Madrigal)
		elseif string.find(spell.english, 'Scherzo') then
			equip(sets.midcast.songs.Scherzo)
		elseif string.find(spell.english, 'Ballad') then
			equip(sets.midcast.songs.Ballad)
		elseif string.find(spell.english, 'Carol') then
			equip(sets.midcast.songs.Carol)
		elseif string.find(spell.english, 'Etude') then
			equip(sets.midcast.songs.Etude)
		end
	elseif sets.midcast[spell.english] then
        equip(sets.midcast[spell.english])
    elseif string.find(spell.english,'Cur') then
        equip(sets.midcast.Cure)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Debuff)
    elseif spell.prefix == '/weaponskill' then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
    elseif sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP.Default)
		if (player.sub_job == "NIN" and buffactive['Haste Samba']) then
			equip(sets.TP.HasteSamba)
		end
    else
        equip(sets.Idle[mode_map[mode]])
    end
end

function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.TP.Default)
		if (player.sub_job == "NIN" and buffactive['Haste Samba']) then
			equip(sets.TP.HasteSamba)
		end
	elseif new == 'Resting' then
		equip(sets.Resting)
    elseif new == 'Idle' then
        equip(sets.Idle[mode_map[mode]])
    end
end

function self_command(command)
    command = string.lower(command)
    local cmd_array = string.split(command, ' ')

	if cmd_array[1] == "mode" then
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

        windower.add_to_chat('Mode is now: '..mode_map[mode])
        equip(sets.Idle[mode_map[mode]])
		if mode == 2 then -- Disable main and sub in Melee mode
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable('main', 'sub')
		else
			enable('main', 'sub')
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
		windower.add_to_chat('Weapon mode is now: '..Weapon_map[Weapon_mode])

		if mode == 2 then
			enable('main', 'sub')
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			disable('main', 'sub')
		end
	elseif command:contains("craft") then
		Craft.handle_command(command)
	end
elseif command:lower() == 'update' then
	Common_Funcs.Update_Gear()

end

function sub_job_change(new,old)
	send_command('input /macro book 10;wait .1;input /macro set 1')

	if new == "DNC" or new == "NIN" then
		mode = 2
		Weapon_mode = 4
		enable('main', 'sub')
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		disable('main', 'sub')
	end

	send_command('@wait 5;input /lockstyleset 1')
end