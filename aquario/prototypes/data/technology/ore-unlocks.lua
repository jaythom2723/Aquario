-- these technologies unlock the recipes to get the Ores from Sea Water
TECHNOLOGY {
    type = "technology",
    name = "aquario-tin-unlock",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {}, -- TODO: unlock tin and allat
    unit = {
        count = 20,
        ingredients = { { "aquario-basic-energy-crystal", 1 } },
        time = 10
    },
    prerequisites = {
        "aquario-basic-energy-crystal"
    },
    hidden = true,
    enabled = false
}

TECHNOLOGY {
    type = "technology",
    name = "aquario-aluminum-unlock",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {}, -- TODO: unlock aluminum and allat
    unit = {
        count = 20,
        ingredients = { { "aquario-impure-energy-crystal", 1 } },
        time = 10
    },
    prerequisites = { "aquario-impure-energy-crystal" },
    hidden = true,
    enabled = false
}
