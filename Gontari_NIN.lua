include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Maps = include('Common_Maps')
local Common_Funcs = include('Common_Funcs')

function get_sets()

    sets.JA = {}
    --sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}
    
    sets.TP = {}

	TP_map = {
		[1] = 'Normal',
		[2] = 'Hybrid',
		[3] = 'DT',
	}
    TP_mode = 2

	Weapon_map = {
		[1] = 'Gokotai',
		[2] = 'Naegling',
		[3] = 'Tauret',
	}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Gokotai = {main="Kaja Katana", sub="Yagyu Darkblade"}
	sets.Weapon.Naegling = {main="Naegling", sub="Yagyu Darkblade"}
	sets.Weapon.Tauret = {main="Kaja Knife", sub="Yagyu Darkblade"}

    sets.TP.Normal = {
		ammo="Date Shuriken",
		head="Mpaca's Cap",
		neck="Ninja Nodowa +1",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		left_ring="Petrov Ring",
		right_ring="Rajas Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
    }
    
    sets.TP.Hybrid = {
		ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Ninja Nodowa +1",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Petrov Ring",
		right_ring="Rajas Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT

	sets.TP.TH = {head="Wh. Rarab Cap +1",}
    
    sets.WS = {}
    
	sets.WS_Default = {
		ammo="Coiste Bodhar",
		head="Nyame Helm",
		neck="Ninja Nodowa +1",
		left_ear="Moonshade Earring",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Petrov Ring",
		right_ring="Beithir Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}
    
    sets.Idle = {
        ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
		right_ear="Alabaster Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Gurebu's Ring",
		right_ring="Murky Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.DT = {
		ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Etiolation Earring",
		right_ear="Alabaster Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Gurebu's Ring",
		right_ring="Murky Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT

	sets.Precast = {}
	sets.Precast.FC = {}

	sets.Midcast = {}
	sets.Midcast.Utsusemi = {
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		feet="Hattori Kyahan +1",
	}
    
	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
    if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command('cancel sneak')
	end

	if spell.action_type == 'Magic' then
        equip(sets.Precast.FC)
	end
end

function midcast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
	elseif spell.english:contains("Dia") or spell.english:contains("Bio") then
			equip(sets.TH)
    elseif spell.prefix == '/weaponskill' then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
    end

	if sets.Midcast[spell.english] then
        equip(sets.Midcast[spell.english])
    elseif string.find(spell.english,'Utsusemi') then
        equip(sets.Midcast.Utsusemi)
	end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[TP_map[TP_mode]])
    else
        equip(sets.Idle)
    end

	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle)
    elseif new == 'Engaged' then
        equip(sets.TP[TP_map[TP_mode]])
    end

	equip(sets.Weapon[Weapon_map[Weapon_mode]])
end

function self_command(command)
    command = string.lower(command)
    local cmd_array = string.split(command, ' ')

	if cmd_array[1] == "dt" then
        equip(sets.DT)
    elseif cmd_array[1] == "tp" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat('TP mode is now: ' .. TP_map[TP_mode])
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
		windower.add_to_chat('Weapon mode is now: ' .. Weapon_map[Weapon_mode])
	elseif command:contains("craft") then
		Craft.handle_command(command)
	end
elseif command:lower() == 'update' then
	Common_Funcs.Update_Gear()

end

function sub_job_change(new,old)
	if new == "RUN" then
	    send_command('input /macro book 13;wait .1;input /macro set 1')
	elseif new == "DNC" then
		send_command('input /macro book 13;wait .1;input /macro set 2')
	elseif new == "DRG" then
		send_command('input /macro book 13;wait .1;input /macro set 3')
	elseif new == "WAR" then
		send_command('input /macro book 13;wait .1;input /macro set 4')
	else
		send_command('input /macro book 13;wait .1;input /macro set 1')
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command('@wait 5;input /lockstyleset 4')
end