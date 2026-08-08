function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.action_type == "Magic" then
		if spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		elseif Common_Maps.WhiteMagic[spell.english] == "StatusRemoval" then
			equip(sets.Precast.StatusRemoval)
		elseif string.find(spell.english, "Cur") then
			equip(sets.Precast.Cure)
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.action_type == "Magic" then
		if spell.skill == "Enfeebling Magic" then
			equip(sets.Midcast.Debuff)
		elseif Common_Maps.WhiteMagic[spell.english] == "StatusRemoval" then
			equip(sets.Midcast.StatusRemoval)
		elseif string.find(spell.english, "Cur") then
			equip(sets.Midcast.Cure)
		elseif string.find(spell.english, "Regen") then
			equip(sets.Midcast.Regen)
		end
	end
end

function job_aftercast(spell)

end

function job_status_change(new, old)
	if new == "Idle" or new == "Resting" then
		if buffactive["Sublimation: Activated"] then
			equip(sets.Idle.Sublimation)
		end
	end
end

function job_buff_change(name, gain, buff_details)
	if name == "sublimation: activated" and gain then
		equip(sets.Idle.Sublimation)
	end
end

function job_self_command(command)
	local parts = string.split(command, " ")

end
