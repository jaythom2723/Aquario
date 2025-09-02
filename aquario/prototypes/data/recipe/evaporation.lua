RECIPE {
    type = "recipe",
    name = "aquario-evaporate-dirty-sea-water",
    icons = {
        {
            icon = "__aquario-graphics__/icons/salt.png",
            icon_size = 1024,
            tint = { r = 128, g = 70, b = 27 }
        }
    },
    ingredients = {
        { type = "fluid", name = "aquario-dirty-sea-water", amount = 100 }
    },
    results = {
        { type = "item", name = "aquario-dirty-salt", amount = 10 }
    },
    category = "aquario-fluid-evaporation"
}
