-- everything related to ore processing
TECHNOLOGY {
    type = "technology",
    name = "aquario-ore-crushing-1",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {},
    unit = {
        count = 20,
        ingredients = { { "aquario-impure-energy-crystal", 1 } },
        time = 10
    },
    prerequisites = {
        "aquario-aluminum-unlock"
    }
}
