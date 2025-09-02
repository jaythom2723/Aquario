RECIPE {
    type = "recipe",
    name = "aquario-dirty-sea-water",
    icons = ICON("aquario-dirty-sea-water").raw,
    ingredients = {
        { type = "fluid", name = "aquario-sea-water", amount = 100 },
        { type = "item",  name = "aquario-soil",      amount = 20 }
    },
    results = {
        { type = "fluid", name = "aquario-dirty-sea-water", amount = 100 }
    },
    category = "aquario-fluid-item-mixing"
}

RECIPE {
    type = "recipe",
    name = "aquario-dirty-water",
    icons = ICON("aquario-dirty-water").raw,
    ingredients = {
        { type = "fluid", name = "water",        amount = 100 },
        { type = "item",  name = "aquario-soil", amount = 20 }
    },
    results = {
        { type = "fluid", name = "aquario-dirty-water", amount = 100 }
    },
    category = "aquario-fluid-item-mixing"
}
