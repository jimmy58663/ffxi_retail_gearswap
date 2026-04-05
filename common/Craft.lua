local Craft = {}

Craft.set_enabled = false

Char_Crafts = {
    Cybin = 'Woodworking',
    Tarudrake = 'Goldsmithing',
    Takagai = 'Clothcraft',
    Gontari = 'Smithing',
    Kazako = 'Leathercraft',
    Kinoshiba = 'Bonecraft',
}

Craft.Sets = {}

Craft.Sets.Woodworking = {
    sub="Joiner's Scutum",
    body="Carpenter's Apron",
    neck="Carver's Torque",
    hands="Carpenter's Gloves",
    left_ring="Artificer's Ring",
    right_ring="Craftmaster's Ring",
}

Craft.Sets.Smithing = {

}

Craft.Sets.Goldsmithing = {
    head="Shaded Spectacles",
    body="Goldsmith's Apron",
}

Craft.Sets.Clothcraft = {
    head="Magnifying Specs.",
    body="Weaver's Apron",
}

Craft.Sets.Leathercraft = {

}

Craft.Sets.Bonecraft = {

}

Craft.Sets.Alchemy = {

}

Craft.Sets.Cooking = {

}

Craft.handle_command = function (command)
    command = string.lower(command)
    local cmd_array = string.split(command, ' ')

    if (cmd_array[2] == 'set') then
        if (cmd_array[3] == 'enabled' or cmd_array[3] == 'on') then
            Craft.set_enabled = true
            equip(Craft.Sets[Char_Crafts[player.name]])
            disable('main','sub','head','body','neck','hands','left_ring','right_ring')
            windower.add_to_chat('Crafting set is now: ON')
        elseif (cmd_array[3] == 'disabled' or cmd_array[3] == 'off') then
            Craft.set_enabled = false
            enable('main','sub','body','neck','hands','left_ring','right_ring')
            aftercast()
            windower.add_to_chat('Crafting set is now: OFF')
        else
            Craft.set_enabled = not Craft.set_enabled
            if (Craft.set_enabled) then
                equip(Craft.Sets[Char_Crafts[player.name]])
                disable('main','sub','head','body','neck','hands','left_ring','right_ring')
            else
                enable('main','sub','head','body','neck','hands','left_ring','right_ring')
                aftercast()
            end
            windower.add_to_chat('Crafting set is now: ' .. (Craft.set_enabled and "ON" or "OFF"))
        end
    elseif (cmd_array[2] == "craftsmanship") then
        if (Craft.set_enabled == false) then
            Craft.handle_command('craft set on')
        end

        if Char_Crafts[player.name] == 'Woodworking' then
            local crystal_count = player.inventory['wind crystal'].count
            local arrowwood_count = player.inventory['arrowwood log'].count
            local lauan_count = player.inventory['lauan log'].count
            local maple_count = player.inventory['maple log'].count
            local total_synths = math.min(crystal_count, (arrowwood_count + lauan_count + maple_count))
            send_command('craft food "Kitron Macaron"')
            send_command('craft support')

            while (total_synths > 0) do
                send_command('craft make "arrowwood lumber"')
                total_synths = total_synths - 1

                send_command('craft make "lauan lumber"')
                total_synths = total_synths - 1

                send_command('craft make "maple lumber"')
                total_synths = total_synths - 1
            end
        elseif Char_Crafts[player.name] == 'Smithing' then

        elseif Char_Crafts[player.name] == 'Goldsmithing' then

        elseif Char_Crafts[player.name] == 'Clothcraft' then

        elseif Char_Crafts[player.name] == 'Leathercraft' then

        elseif Char_Crafts[player.name] == 'Bonecraft' then

        elseif Char_Crafts[player.name] == 'Alchemy' then

        elseif Char_Crafts[player.name] == 'Cooking' then

        end
    end
end

return Craft