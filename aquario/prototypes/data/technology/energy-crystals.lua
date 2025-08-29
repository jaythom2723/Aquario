TECHNOLOGY {
    type = "technology",
    name = "aquario-impure-energy-crystal",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {
        { type = "unlock-recipe", recipe = "aquario-impure-energy-crystal" }
    },
    research_trigger = {
        type = "craft-fluid",
        fluid = "aquario-sea-water",
        amount = 0
    },
    essential = true
}

TECHNOLOGY {
    type = "technology",
    name = "aquario-basic-energy-crystal",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {},
    unit = {
        count = 20,
        ingredients = { { "aquario-impure-energy-crystal", 1 } },
        time = 10
    },
    essential = true
}
