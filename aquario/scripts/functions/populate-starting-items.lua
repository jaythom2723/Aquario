aquario = aquario or {}

function aquario.populate_starting_items(items)
    local starting_items = {
        ["aquario-soil"] = 200,
        ["aquario-salt"] = 200,
        ["aquario-dirty-salt"] = 200,
        ["aquario-impure-energy-crystal"] = 50,
        ["offshore-pump"] = 1,
        ["landfill"] = 2000
    }

    return starting_items
end
