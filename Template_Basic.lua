include('organizer-lib')
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
    TP_mode = 1

	Weapon_map = {
		[1] = 'Naegling',
	}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Naegling = {main="Naegling",}

    sets.TP.Normal = {

    }
    
    sets.TP.Hybrid = {

    }
    
    sets.TP.DT = sets.DT

	sets.TH = {head="Wh. Rarab Cap +1",}
    
    sets.WS = {}
    
	sets.WS_Default = {

	}

	sets.WS["Savage Blade"] = {
		--legs="Boii Cuisses +1",
	}
    
    sets.Idle = {
        --[[ammo="",
		head="",
        neck="",
		left_ear="",
        right_ear="",
		body="",
		hands="",
        left_ring="",
        right_ring="",
		back="",
		waist="",
		legs="",
        feet="",--]]
    }
    
    sets.DT = {

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
	
	if string.find(spell.english, "Dia") then
		equip(sets.TH)
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
    if command == "DT" then
        equip(sets.DT)
    elseif command == "TP" then
		TP_mode = TP_mode + 1
		if TP_mode > #TP_map then
			TP_mode = 1
		end
		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat('TP mode is now: ' .. TP_map[TP_mode])
	elseif command == "Weapon" then
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
	if new == "NIN" then
	    send_command('input /macro book 1;wait .1;input /macro set 1')
	elseif new == "SAM" then
		send_command('input /macro book 1;wait .1;input /macro set 2')
	elseif new == "THF" then
		send_command('input /macro book 1;wait .1;input /macro set 3')
	elseif new == "WAR" then
		send_command('input /macro book 1;wait .1;input /macro set 4')
	else
		send_command('input /macro book 1;wait .1;input /macro set 1')
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command('@wait 5;input /lockstyleset 1')
end