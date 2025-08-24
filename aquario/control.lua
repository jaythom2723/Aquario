aquario = aquario or {}

require("scripts.functions.populate-starting-items")

-- determine the starting items needed and initialize other things
script.on_init(function()
    storage.starting_items = aquario.populate_starting_items(prototypes.item)

    if remote.interfaces["freeplay"] then
        if remote.interfaces.freeplay.set_disable_crashsite then
            remote.call("freeplay", "set_disable_crashsite", true)
        end

        local created_items = remote.call("freeplay", "get_created_items")
        created_items["iron-plate"] = nil
        created_items["burner-mining-drill"] = nil
        created_items["stone-furnace"] = nil
        created_items["wood"] = nil
        remote.call("freeplay", "set_created_items", created_items)
    end
end)

-- insert the starting items directly into the player's inventory
script.on_event(defines.events.on_player_created, function(event)
    if storage.starting_items then
        local inv = game.players[event.player_index].get_main_inventory()
        for item, quantity in pairs(storage.starting_items) do
            if quantity > 0 then
                inv.insert({ name = item, count = quantity })
            end
        end
    end
end)

-- landfill gen
script.on_event(defines.events.on_chunk_generated, function(event)
    local tiles = event.surface.find_tiles_filtered {
        area = event.area,
        collision_mask = "water_tile",
        invert = true
    }
    local to_replace = {}
    for _, tile in pairs(tiles) do
        to_replace[#to_replace + 1] = {
            position = tile.position,
            name = "landfill"
        }
    end

    -- set as landfill
    event.surface.set_tiles(to_replace)

    -- set water as hidden tile
    for _, tile in pairs(to_replace) do
        event.surface.set_hidden_tile(tile.position, "water")
    end
end)
