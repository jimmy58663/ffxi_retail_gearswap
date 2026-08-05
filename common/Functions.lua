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

function Common_Funcs.Cycle_Index(current, max)
	current = tonumber(current) or 1
	if current < 1 then
		current = 1
	end
	if current >= max then
		return 1
	end
	return current + 1
end

function Common_Funcs.Lock_Weapon()
	Weapon_Locked = true
	disable("main", "sub", "range")
end

function Common_Funcs.Unlock_Weapon()
	Weapon_Locked = false
	enable("main", "sub", "range")
end

function Common_Funcs.Apply_Weapon_Lock_State()
	if Weapon_Locked then
		disable("main", "sub", "range")
	else
		enable("main", "sub", "range")
	end
end

function Common_Funcs.Affinity_Check(element)
	if element == world.weather_element or element == world.day_element and sets.Midcast.Obis[element] then
		equip(sets.Midcast.Obis[element])
	end
end

return Common_Funcs
