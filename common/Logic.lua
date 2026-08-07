Common_Funcs = include("Common/Functions.lua")
Common_Maps = include("Common/Maps.lua")
Common_Craft = include("Common/Craft.lua")
res = require("resources")

local MagicBurst_Window = false
local MagicBurst_Window_Expires = 0
local MagicBurst_Timer_Running = false
local Action_Handle_ID

Weapon_Locked = false
Movement = false

-- Set up empty sets so logic won't break if they aren't in gear files
if not sets then
	sets = {}
end

sets.JA = {}
sets.WS = {}
sets.Precast = {}
sets.Precast.FC = {}
sets.Midcast = {}
sets.Midcast.Phalanx = {}
sets.Midcast.Obis = {}
sets.DT = {}
sets.TP = {}
sets.Weapon = {}
sets.Weapon.Default = {} -- Don't use this, it's just a placeholder for the default weapon set. Use sets.Weapon.[Weapon Name] instead.
sets.Idle = {}
sets.TH = {}
sets.Movement = {}

TP_map = {[1] = "Hybrid"}
TP_mode = 1

Weapon_map = {[1] = "Default"}
Weapon_mode = 1

function pretarget(spell)
	if spell.type == "WeaponSkill" then
		local dist = spell.target and spell.target.distance or 0
		if dist > 7 then
			add_to_chat(123, "WS cancelled: target out of range (" .. tostring(dist) .. ")")
			cancel_spell()
			return
		end
	end

	job_pretarget(spell)
end

function precast(spell)
	if spell.english == "Spectral Jig" and buffactive.sneak then
		send_command("cancel sneak")
	end

	if spell.type == "JobAbility" or spell.type == "Ward" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end

	if spell.type == "WeaponSkill" then
		equip(sets.WS)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end

	if spell.action_type == "Magic" then
		equip(sets.Precast.FC)
	end

	job_precast(spell)
end

function midcast(spell)
	if spell.type == "JobAbility" or spell.type == "Ward" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end

	if spell.type == "WeaponSkill" then
		equip(sets.WS)
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		end
	end

	if spell.action_type == "Magic" then
		if sets.Midcast[spell.english] then
			equip(sets.Midcast[spell.english])
		end
	end

	job_midcast(spell, MagicBurst_Window)

	if spell.english:contains("Dia") or spell.english:contains("Bio") then
		equip(sets.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	else
		equip(sets.Idle)
		if Movement then
			equip(sets.Movement)
		end
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	job_aftercast(spell)
end

function self_command(command)
	local cmd = string.lower(command)
	local parts = string.split(cmd, " ")

	if parts[1] == "update" then
		Common_Funcs.Update_Gear()
	elseif parts[1] == "craft" then
		Common_Craft.handle_command(cmd)
	elseif parts[1] == "tp" then
		if type(parts[2]) == "string" then
			for index, name in pairs(TP_map) do
				if name:lower() == parts[2] then
					TP_mode = index
				end
			end
		else
			TP_mode = Common_Funcs.Cycle_Index(TP_mode, #TP_map)
		end

		equip(sets.TP[TP_map[TP_mode]])
		windower.add_to_chat("TP mode is now: " .. TP_map[TP_mode])
	elseif parts[1] == "weapon" then
		if type(parts[2]) == "string" then
			for index, name in pairs(Weapon_map) do
				if name:lower() == parts[2] then
					Weapon_mode = index
				end
			end
		else
			Weapon_mode = Common_Funcs.Cycle_Index(Weapon_mode, #Weapon_map)
		end

		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	elseif parts[1] == "lockweapon" then
		Common_Funcs.Lock_Weapon()
		windower.add_to_chat("Weapon is now: LOCKED")
	elseif parts[1] == "unlockweapon" then
		Common_Funcs.Unlock_Weapon()
		windower.add_to_chat("Weapon is now: UNLOCKED")
	elseif parts[1] == "movement" then
		Movement = not Movement
		windower.add_to_chat("Movement mode is now: " .. (Movement and "ON" or "OFF"))
		aftercast()
	end

	job_self_command(cmd)
end

function status_change(new, old)
	if T {"Idle", "Resting"}:contains(new) then
		equip(sets.Idle)
		if Movement then
			equip(sets.Movement)
		end
	elseif new == "Engaged" then
		equip(sets.TP[TP_map[TP_mode]])
	end

	equip(sets.Weapon[Weapon_map[Weapon_mode]])

	job_status_change(new, old)
end

function buff_change(buff, gain)
	local buff_name = buff:lower()

	if buff_name == "encumbrance" and not gain then
		Common_Funcs.Update_Gear()
	end

	job_buff_change(buff_name, gain)
end

if Action_Handle_ID then
	windower.unregister_event(Action_Handle_ID)
end

-- Reaction code for actions
Action_Handle_ID = windower.register_event("action", function(act)
	local category = act.category

	-- Category 8 is Casting Start: https://github.com/Windower/Lua/blob/dev/addons/libs/packets/fields.lua#L1853-L1868
	if category == 8 then
		local spellID = act.targets[1].actions[1].param
		local spell = res.spells[spellID]
		if spell and (spell.en == "Phalanx" or spell.en == "Phalanx II") then
			if Common_Funcs.Is_In_Party(act.targets[1].id) then
				if sets.Midcast.Phalanx then
					equip(sets.Midcast.Phalanx)
					disable("head", "body", "hands", "legs", "feet")
					coroutine.schedule(function()
						enable("head", "body", "hands", "legs", "feet")
						windower.send_command("gs c update")
					end, 3)
				end
			end
		end
	elseif category == 4 then -- Check if the action is a finished Magic Spell cast (Category 4)
		if act.param == 55 then -- Sneak spell ID is 55
			for _, target in ipairs(act.targets) do
				if target.id == windower.ffxi.get_player().id and buffactive["Sneak"] then
					windower.send_command("cancel Sneak")
					break
				end
			end
		elseif act.param == 57 then -- Invisible spell ID is 57
			for _, target in ipairs(act.targets) do
				if target.id == windower.ffxi.get_player().id and buffactive["Invisible"] then
					windower.send_command("cancel Invisible")
					break
				end
			end
		end
	elseif category == 3 then -- Check if the action is a finished Weapon Skill (Category 3)
		local action = act.targets and act.targets[1] and act.targets[1].actions and act.targets[1].actions[1]
		if action and action.has_add_effect and Common_Maps.SkillchainEffects:contains(action.add_effect_message) then
			if Common_Funcs.Is_In_Party(act.actor_id) then
				-- Activate Magic Burst Mode
				MagicBurst_Window = true
				add_to_chat(204, "Skillchain Detected! Magic Burst Window Open.")
				MagicBurst_Window_Expires = os.time() + 10 -- Set the expiration time for the Magic Burst window

				if not MagicBurst_Timer_Running then
					MagicBurst_Timer_Running = true
					coroutine.schedule(function()
						while os.clock() < MagicBurst_Window_Expires do
							coroutine.sleep(0.5)
						end
						MagicBurst_Window = false
						MagicBurst_Timer_Running = false
						add_to_chat(123, "Magic Burst Window Closed.")
					end, 0.5)
				end
			end
		end
	end
end)

function file_unload()
	if Action_Handle_ID then
		windower.unregister_event(Action_Handle_ID)
		Action_Handle_ID = nil
	end

	MagicBurst_Window = false
	MagicBurst_Window_Expires = 0
	MagicBurst_Timer_Running = false
end
