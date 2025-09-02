aquario = aquario or {}

-- generate a list of all of the starting items for the full Aquario experience
function aquario.populate_starting_items(items)
    local starting_items = {
        ["offshore-pump"] = 1,
        ["landfill"] = 2000
    }

    return starting_items
end
