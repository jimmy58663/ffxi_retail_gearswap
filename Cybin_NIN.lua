include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Maps = include('Common_Maps')
local Common_Funcs = include('Common_Funcs')

function get_sets()

    sets.JA = {}
    --sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}
    
    sets.TP = {}
	TH_mode = false

	TP_map = {
		[1] = 'Normal',
		[2] = 'Hybrid',
		[3] = 'DT',
	}
    TP_mode = 2

	Weapon_map = {
		[1] = 'Naegling',
		[2] = 'Tauret',
	}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Naegling = {main="Naegling", sub="Yagyu Darkblade"}
	sets.Weapon.Tauret = {main="Kaja Knife", sub="Yagyu Darkblade"}

    sets.TP.Normal = {
		ammo="Date Shuriken",
		head="Mummu Bonnet +2",
		neck="Elite Royal Collar",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Mummu Jacket +2",
		hands="Mummu Wrists +2",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
		back="Mecisto. Mantle",
		waist="Sailfi Belt +1",
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +2",
    }
    
    sets.TP.Hybrid = {
		ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
		back="Mecisto. Mantle",
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT

	sets.TP.TH = {head="Wh. Rarab Cap +1",}
    
    sets.WS = {}
    
	sets.WS_Default = {
		ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Moonshade Earring",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Ephramad's Ring",
		right_ring="Rajas Ring",
		back="Mecisto. Mantle",
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

    sets.Idle = {
        ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
		back="Mecisto. Mantle",
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.DT = {
		ammo="Date Shuriken",
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
		back="Mecisto. Mantle",
		waist="Sailfi Belt +1",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT
    
	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
    if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command('cancel sneak')
	end
end

function midcast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.prefix == '/weaponskill' then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
    end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[TP_map[TP_mode]])
		if TH_mode then
			equip(sets.TP.TH)
		end
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
	elseif string.lower(command) == "th" then
		TH_mode = not TH_mode
		windower.add_to_chat('TH mode is now: ' .. (TH_mode and "ON" or "OFF"))
		if TH_mode then
			equip(sets.TP.TH)
		else
			if player.status == 'Engaged' then
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
		windower.add_to_chat('Weapon mode is now: ' .. Weapon_map[Weapon_mode])
	elseif string.lower(command:contains("craft")) then
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
	send_command('@wait 5;input /lockstyleset 1')
end