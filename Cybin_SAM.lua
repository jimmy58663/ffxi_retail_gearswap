include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Maps = include('Common_Maps')
local Common_Funcs = include('Common_Funcs')

function get_sets()

    sets.JA = {}
    sets.JA.Meditate = {head="Wakido Kabuto +1", hands="Sakonji Kote +1"}
	sets.JA.Hasso = {hands="Wakido Kote +1"}
	sets.JA.Sekkanoki = {hands="Kasuga Kote +2"}
	sets.JA["Blade Bash"] = {hands="Sakonji Kote +1"}
	sets.JA["Third Eye"] = {legs="Sakonji Haidate +1"}
	sets.JA.Shikikoyo = {legs="Sakonji Haidate +1"}
	sets.JA["Meikyo Shisui"] = {feet="Sak. Sune-Ate +1"}

	HybridWS = S{'Tachi: Jinpu','Tachi: Koki','Tachi: Kagero','Tachi: Goten',}
    
    sets.TP = {}

	TP_map = {
		[1] = 'Normal',
		[2] = 'MEva',
		[3] = 'DT',
	}
    TP_mode = 1

	Weapon_map = {
		[1] = "Masamune",
		[2] = "Shining",
		[3] = "Soboro",
		[4] = "Kusanagi",
		--[5] = "Yoichi",
	}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Masamune = {main="Masamune", sub="Utu Grip", ammo="Coiste Bodhar",}
	sets.Weapon.Shining = {main="Shining One", sub="Utu Grip", ammo="Coiste Bodhar",}
	sets.Weapon.Soboro = {main="Soboro Sukehiro", sub="Utu Grip", ammo="Coiste Bodhar",}
	sets.Weapon.Kusanagi = {main="Kusanagi", sub="Utu Grip", ammo="Coiste Bodhar",}
	sets.Weapon.Yoichi = {main="Soboro Sukehiro", sub="Utu Grip", ranged="Yoichinoyumi", ammo="Eminent Arrow"}

    sets.TP.Normal = {
		head="Kasuga Kabuto +2", -- +3
        neck="Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear="Schere Earring", -- Dedition
        right_ear="Brutal Earring", -- Kasuga +1/+2
		body="Kasuga Domaru +2", -- +3
        hands="Tatena. Gote +1",
        left_ring="Niqmaddu Ring",
        right_ring="Gelatinous Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		waist="Windbuffet Belt +1",
		legs="Kasuga Haidate +2", -- +3
        feet="Ryuo Sune-Ate +1",
    }
    
    sets.TP.MEva = {
		head="Kasuga Kabuto +2", -- +3
        neck="Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear="Schere Earring", -- Dedition
        right_ear="Brutal Earring", -- Kasuga +1/+2
		body="Kasuga Domaru +2", -- +3
        hands="Nyame Gauntlets",
        left_ring="Niqmaddu Ring",
        right_ring="Gelatinous Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		waist="Windbuffet Belt +1",
		legs="Kasuga Haidate +2", -- +3
        feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT

	sets.TH = {head="Wh. Rarab Cap +1",}
    
    sets.WS = {}
    
	sets.WS.Default = {
		ammo="Knobkierrie",
		head="Mpaca's Cap",
        neck={ name="Sam. Nodowa +1", augments={'Path: A',}}, -- +2
		left_ear="Moonshade Earring",
        right_ear="Thrud Earring", -- Kasuga +2
		body="Nyame Mail", --body="Sakonji Domaru +2",
        hands="Kasuga Kote +2", -- +3
        left_ring="Ephramad's Ring",
        right_ring="Sroda Ring", -- ~Epaminonda's
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Wakido Haidate +3", -- +4
        feet="Kas. Sune-Ate +2", -- +3/Nyame PathB (R30)
	}

	sets.WS["Namas Arrow"] = {
		head="Nyame Helm",
		neck="Light Gorget",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		waist="Light Belt",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

	sets.WS.Hybrid = {
		head="Nyame Helm",
		--neck="Fotia Gorget",
		right_ear="Schere Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		--waist="Fotia Belt",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}
    
    sets.Idle = {
		head="Kasuga Kabuto +2",
        neck="Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear="Schere Earring",
        right_ear="Brutal Earring",
		body="Kasuga Domaru +2",
		hands="Nyame Gauntlets",
        left_ring="Chirich Ring +1",
        right_ring="Gelatinous Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		waist="Windbuffet Belt +1",
		legs="Kasuga Haidate +2",
		feet="Nyame Sollerets",
    }
    
    sets.DT = {
		head="Kasuga Kabuto +2",
        neck="Moonbeam Nodowa", -- Moonlight Nodowa
		left_ear="Schere Earring",
        right_ear="Brutal Earring",
		body="Kasuga Domaru +2",
		hands="Nyame Gauntlets",
        left_ring="Chirich Ring +1",
        right_ring="Gelatinous Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		waist="Windbuffet Belt +1",
		legs="Kasuga Haidate +2",
		feet="Nyame Sollerets",
    }
    
    sets.TP.DT = sets.DT

	sub_job_change(player.sub_job, "NON")
end

function precast(spell)
    if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command('cancel sneak')
	end
	if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
	end
end

function midcast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
	elseif spell.english:contains("Dia") then
			equip(sets.TH)
    elseif spell.prefix == '/weaponskill' then
		equip(sets.WS.Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		elseif HybridWS:contains(spell.english) then
			equip(sets.WS.Hybrid)
		end
		if buffactive["Sekkanoki"] then
			equip(sets.JA.Sekkanoki)
		end
		if buffactive["Meikyo Shisui"] then
			equip(sets.JA["Meikyo Shisui"])
		end
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

		if Weapon_mode == 2 then
			send_command('input /macro book 12;wait .1;input /macro set 3')
		elseif Weapon_mode == 1 or Weapon_mode == 3 then
			send_command('input /macro book 12;wait .1;input /macro set 2')
		end

		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat('Weapon mode is now: ' .. Weapon_map[Weapon_mode])
	elseif command:contains("craft") then
		Craft.handle_command(command)
	elseif cmd_array[1] == 'update' then
	end
elseif command:lower() == 'update' then
	Common_Funcs.Update_Gear()

end

function sub_job_change(new,old)
	if new == "DNC" then
	    send_command('input /macro book 12;wait .1;input /macro set 1')
	elseif new == "DRG" then
		send_command('input /macro book 12;wait .1;input /macro set 2')
	elseif new == "THF" then
		send_command('input /macro book 12;wait .1;input /macro set 2')
	elseif new == "WAR" then
		send_command('input /macro book 12;wait .1;input /macro set 2')
	else
		send_command('input /macro book 12;wait .1;input /macro set 2')
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command('@wait 5;input /lockstyleset 3')
end