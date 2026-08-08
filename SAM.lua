function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
	HybridWS = S {"Tachi: Jinpu", "Tachi: Koki", "Tachi: Kagero", "Tachi: Goten"}
end

function job_pretarget(spell)

end

function job_precast(spell)

end

function job_midcast(spell, magic_burst)
	if spell.type == "WeaponSkill" then
		if HybridWS:contains(spell.english) then
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

function job_aftercast(spell)

end

function job_status_change(new, old)

end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
