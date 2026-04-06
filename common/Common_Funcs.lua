local res = require("resources")
local Common_Funcs = {}

local party_indices = S {
	"p0",
	"p1",
	"p2",
	"p3",
	"p4",
	"p5",
	"a10",
	"a11",
	"a12",
	"a13",
	"a14",
	"a15",
	"a20",
	"a21",
	"a22",
	"a23",
	"a24",
	"a25",
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
	aftercast()
end

return Common_Funcs
