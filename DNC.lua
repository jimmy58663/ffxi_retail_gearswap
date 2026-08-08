function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.skill == "Ability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif string.find(spell.english, "Samba") then
			equip(sets.JA.Samba)
		elseif string.find(spell.english, "Jig") then
			equip(sets.JA.Jig)
		elseif string.find(spell.english, "Step") then
			equip(sets.JA.Step)
		elseif string.find(spell.english, "Waltz") then
			equip(sets.JA.Waltz)
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.skill == "Ability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		elseif string.find(spell.english, "Samba") then
			equip(sets.JA.Samba)
		elseif string.find(spell.english, "Jig") then
			equip(sets.JA.Jig)
		elseif string.find(spell.english, "Step") then
			equip(sets.JA.Step)
		elseif string.find(spell.english, "Waltz") then
			equip(sets.JA.Waltz)
		end
	end
end

function job_aftercast(spell)

end

function job_status_change(new, old)

end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
