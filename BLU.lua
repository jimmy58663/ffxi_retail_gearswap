function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.type == "BlueMagic" then
		equip(sets.Precast.BlueMagic)
	end
end

function job_midcast(spell, magic_burst)
	if spell.type == "BlueMagic" then
		if Common_Maps.BlueMagic.Physical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Physical[spell.english]
			equip(sets.BlueMagic.Physical)
			equip(sets.BlueMagic.Physical[spell_type])
			if spell.english == "Glutinous Dart" then
				equip(sets.TH)
			end
		elseif Common_Maps.BlueMagic.Magical[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Magical[spell.english]
			equip(sets.BlueMagic.Magical)
			equip(sets.BlueMagic.Magical[spell_type])
		elseif Common_Maps.BlueMagic.Healing[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Healing[spell.english]
			equip(sets.BlueMagic.Healing)
			equip(sets.BlueMagic.Healing[spell_type])
		elseif Common_Maps.BlueMagic.Buffs[spell.english] then
			local spell_type = Common_Maps.BlueMagic.Buffs[spell.english]
			equip(sets.BlueMagic.Buffs)
			equip(sets.BlueMagic.Buffs[spell_type])
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
