RECIPE {
    type = "recipe",
    name = "aquario-dirty-sea-water-filtration",
    icon = "__base__/graphics/icons/stone.png",
    ingredients = {
        { type = "fluid", name = "aquario-dirty-sea-water", amount = 100 }
    },
    results = {
        { type = "fluid", name = "aquario-dirty-unmineralized-sea-water", amount = 50 },
        { type = "item",  name = "stone",                                 amount = 5 }
    },
    category = "aquario-fluid-filtration"
}

RECIPE {
    type = "recipe",
    name = "aquario-sea-water-filtration",
    icons = ICON("aquario-water").raw,
    ingredients = {
        { type = "fluid", name = "aquario-sea-water", amount = 100 },
    },
    results = {
        { type = "fluid", name = "water",        amount = 75 },
        { type = "item",  name = "aquario-salt", amount = 10 }
    },
    category = "aquario-fluid-filtration"
}

RECIPE {
    type = "recipe",
    name = "aquario-mineral-water-filtration-with-silica",
    icons = ICON("aquario-mineral-water").raw,
    ingredients = {
        { type = "fluid", name = "aquario-mineral-water", amount = 100 },
        { type = "item",  name = "aquario-silica",        amount = 5 }
    },
    results = {
        { type = "item",  name = "aquario-raw-iron-oxide-ore",   amount = 2 },
        { type = "item",  name = "aquario-raw-copper-oxide-ore", amount = 2 },
        { type = "item",  name = "aquario-dirty-silica",         amount = 5 },
        { type = "fluid", name = "aquario-waste-water",          amount = 50 }
    },
    category = "aquario-fluid-filtration"
}

table.insert(table.deepcopy(RECIPE("aquario-mineral-water-filtration-with-silica").icons), 1, {
    icon = "__aquario-graphics__/icons/silica.png",
    icon_size = 64,
    scale = 0.25
})
