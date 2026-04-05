include('organizer-lib')

local res = require('resources')
local Craft = include('Craft')
local Common_Funcs = include('Common_Funcs')

function get_sets()

    sets.JA = {}
    sets.JA.Berserk = {body="Pumm. Lorica +3", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}, feet="Agoge Calligae"}
    sets.JA.Aggressor = {body="Agoge Lorica +1"}
    sets.JA.Warcry = {head="Agoge Mask +2"}
    sets.JA['Blood Rage'] = {body="Boii Lorica +2"}
    sets.JA['Mighty Strikes'] = {hands="Agoge Mufflers"}
    sets.JA.Tomahawk = {ammo="Thr. Tomahawk", feet="Agoge Calligae"}
	sets.JA["Warrior's Charge"] = {legs="Agoge Cuisses"}
    
    sets.TP = {}
	
	TP_map = {
		[1] = 'Hybrid',
		[2] = 'DT',
	}
    TP_mode = 1
	
	Weapon_map = {
		[1] = 'Bravura',
		[2] = 'Naegling',
		[3] = 'Shining',
		[4] = 'Loxotic',
	}
	Weapon_mode = 1
	
	Abyssea_Weapon = false
	Abyssea_Weapon_map = {
		[1] = 'Dagger',
		[2] = 'Sword',
		[3] = 'GSword',
		[4] = 'Scythe',
		[5] = 'Polearm',
		[6] = 'Katana',
		[7] = 'GKatana',
		[8] = 'Club',
		[9] = 'Staff',
	}
	Abyssea_Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Bravura = {main="Bravura",sub="Utu Grip",}
	sets.Weapon.Naegling = {main="Naegling",sub="Blurred Shield +1",}
	sets.Weapon.Shining = {main="Shining One", sub="Utu Grip",}
	sets.Weapon.Loxotic = {main="Loxotic Mace +1",sub="Blurred Shield +1",}

	sets.Weapon.Abyssea = {}
	sets.Weapon.Abyssea.Dagger = {main="Qutrub Knife"}
	sets.Weapon.Abyssea.Sword = {main="Joyeuse"}
	sets.Weapon.Abyssea.GSword = {main="Mercurial Sword"}
	sets.Weapon.Abyssea.Scythe = {main="Bounty Sickle"}
	sets.Weapon.Abyssea.Polearm = {main="Quint Spear"}
	sets.Weapon.Abyssea.Katana = {main="Yagyu Shortblade"}
	sets.Weapon.Abyssea.GKatana = {main="Shinai"}
	sets.Weapon.Abyssea.Club = {main="Burrower's Wand"}
	sets.Weapon.Abyssea.Staff = {main="Earth Staff"}

    sets.TP.Hybrid = {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
        neck="War. Beads +1",
		left_ear="Schere Earring",
        right_ear="Boii Earring +1",
		body="Boii Lorica +2",
        hands="Sakpata's Gauntlets",
        left_ring="Moonlight Ring",
        right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Ioskeha Belt +1",
		legs="Pumm. Cuisses +3",
        feet="Pumm. Calligae +3",
    }
    
    sets.TP.DT = sets.DT
	
	sets.TH = {head="Wh. Rarab Cap +1",}
    
    sets.WS = {}
    
	sets.WS_Default = {
		ammo="Knobkierrie",
		head="Nyame Helm", --head="Agoge Mask +2",
        neck="War. Beads +1",
		left_ear="Moonshade Earring",
        right_ear="Thrud Earring",
		body="Pumm. Lorica +3",
        hands="Nyame Gauntlets",
        left_ring="Ephramad's Ring",
        right_ring="Sroda Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
		waist="Sailfi Belt +1",
		legs="Boii Cuisses +2",
        feet="Sulev. Leggings +2",
	}
	
	sets.WS["Metatron Torment"] = {
        --neck="Light Gorget",
        waist="Light Belt",
    }
	
	sets.WS["Upheaval"] = {
        --neck="Light Gorget",
        waist="Light Belt",
    }
	
	sets.WS["Savage Blade"] = {
		legs="Boii Cuisses +2",
	}

	sets.WS["Judgement"] = {
		legs="Boii Cuisses +2",
	}
    
    sets.Idle = {
        ammo="Crepuscular Pebble",
		head="Sakpata's Helm",
        neck="Elite Royal Collar",
		left_ear="Schere Earring",
        right_ear="Boii Earring +1",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
        left_ring="Moonlight Ring",
        right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Plat. Mog. Belt",
		legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
    }
    
    sets.DT = {
        ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
        neck="War. Beads +1",
		left_ear="Schere Earring",
        right_ear="Boii Earring +1",
		body="Boii Lorica +2",
        hands="Sakpata's Gauntlets",
        left_ring="Moonlight Ring",
        right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		waist="Ioskeha Belt +1",
		legs="Pumm. Cuisses +3",
        feet="Pumm. Calligae +3",
    }

	sets.Phalanx = {
		--head="Valorous Mask",
		body="Valorous Mail",
		hands="Souv. Handsch. +1",
		legs="Sakpata's Cuisses",
		feet="Souveran Schuhs +1",
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
    elseif spell.prefix == '/weaponskill' then
		equip(sets.WS_Default)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	elseif spell.english:contains("Dia") then
			equip(sets.TH)
    end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[TP_map[TP_mode]])
    else
        equip(sets.Idle)
    end
	
	if Abyssea_Weapon then
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
	else
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle)
    elseif new == 'Engaged' then
        equip(sets.TP[TP_map[TP_mode]])
    end
	
	if Abyssea_Weapon then
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
	else
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
	end
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
	elseif cmd_array[1] == "abyssea" then
		Abyssea_Weapon = not Abyssea_Weapon
		windower.add_to_chat('Abyssea mode is now: ' .. (Abyssea_Weapon and 'ON' or 'OFF'))
		if (Abyssea_Weapon) then
			equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
			windower.add_to_chat('Weapon mode is now: ' .. Abyssea_Weapon_map[Abyssea_Weapon_mode])
		else
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			windower.add_to_chat('Weapon mode is now: ' .. Weapon_map[Weapon_mode])
		end
	elseif cmd_array[1] == "abysseaweapon" then
		if type(cmd_array[2]) == "string" then
			for index, name in pairs(Abyssea_Weapon_map) do
				if name:lower() == cmd_array[2] then
					Abyssea_Weapon_mode = index
				end
			end
		else
			Abyssea_Weapon_mode = Abyssea_Weapon_mode + 1
		end

		if Abyssea_Weapon_mode > #Abyssea_Weapon_map then
			Abyssea_Weapon_mode = 1
		end
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
		windower.add_to_chat('Weapon mode is now: ' .. Abyssea_Weapon_map[Abyssea_Weapon_mode])
	elseif command:contains("craft") then
		Craft.handle_command(command)
	end
elseif command:lower() == 'update' then
	Common_Funcs.Update_Gear()

end

function sub_job_change(new,old)
	if player.sub_job == "NIN" then
	    send_command('input /macro book 1;wait .1;input /macro set 1')
	elseif player.sub_job == "SAM" then
		send_command('input /macro book 1;wait .1;input /macro set 2')
	elseif player.sub_job == "THF" then
		send_command('input /macro book 1;wait .1;input /macro set 3')
	elseif player.sub_job == "DRG" then
		send_command('input /macro book 1;wait .1;input /macro set 4')
		Weapon_mode = 2
	else
		send_command('input /macro book 1;wait .1;input /macro set 1')
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command('@wait 5;input /lockstyleset 2')
end

--Reaction code for Phalanx
windower.register_event('action',function (act)
	local actor = windower.ffxi.get_mob_by_id(act.actor_id)
	local self = windower.ffxi.get_player()
	local category = act.category

	-- Category 8 is Casting Start: https://github.com/Windower/Lua/blob/dev/addons/libs/packets/fields.lua#L1800-L1813
	if category == 8 then
		local spellID = act.targets[1].actions[1].param
		local spell = res.spells[spellID]
		if spell and (spell.en == 'Phalanx' or spell.en == "Phalanx II") then
			--Loop through targets to see if WE are being hit (supports Accession)
			for _, target in ipairs(act.targets) do
				if target.id == self.id then
					equip(sets.Phalanx)

					coroutine.schedule(function()
						if player.status == 'Engaged' then
							equip(sets.TP[TP_map[TP_mode]])
						else
							equip(sets.Idle)
						end
					end, 3)
					break
				end
			end
		end
	end
end)