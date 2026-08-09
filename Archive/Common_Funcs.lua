local res = require("resources")
local texts = require("texts")
local Common_Funcs = {}

local party_indices = S {
	"p0", "p1", "p2", "p3", "p4", "p5", "a10", "a11", "a12", "a13", "a14", "a15", "a20", "a21", "a22", "a23", "a24", "a25",
}

function Common_Funcs.Is_In_Party(id)
	local pt = windower.ffxi.get_party()
	for index in party_indices:it() do
		if pt[index] and pt[index].mob and pt[index].mob.id == id then
			return true
		end
	end
	return false
end

function Common_Funcs.Drop_Item(item_name)
	local inventory = windower.ffxi.get_items(0) -- Main inventory is bag 0
	for index, item in pairs(inventory) do
		if type(item) == "table" and item.id > 0 then
			local name = res.items[item.id].name
			if name:lower() == item_name:lower() then
				windower.ffxi.drop_item(index, item.count)
				windower.add_to_chat("Dropped: " .. name .. "(" .. item.count .. ")")
				return
			end
		end
	end
end

function Common_Funcs.Update_Gear()
	local spell = {}
	aftercast(spell)
end

function Common_Funcs.Print_Table(tbl, prefix)
	prefix = prefix or ""
	if type(tbl) ~= "table" then
		windower.add_to_chat(prefix .. tostring(tbl))
		return
	end

	for key, value in pairs(tbl) do
		if type(value) == "table" then
			windower.add_to_chat(prefix .. key .. ": ")
			Common_Funcs.Print_Table(value, prefix .. "  ")
		else
			windower.add_to_chat(prefix .. key .. ": " .. tostring(value))
		end
	end
end

-- Reaction code for Phalanx
windower.register_event("action", function(act)
	local actor = windower.ffxi.get_mob_by_id(act.actor_id)
	local self = windower.ffxi.get_player()
	local category = act.category
	-- Category 8 is Casting Start: https://github.com/Windower/Lua/blob/dev/addons/libs/packets/fields.lua#L1800-L1813
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
	end
end)

return Common_Funcs
