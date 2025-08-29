-- contains all of the burner-phase technologies required to unlock basic energy crystals

TECHNOLOGY {
    type = "technology",
    name = "aquario-burner-automation",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {}, -- TODO: unlock a burner automation machine
    unit = {
        count = 20,
        ingredients = { { "aquario-impure-energy-crystal", 1 } },
        time = 10
    },
    prerequisites = { "aquario-aluminum-unlock" }
}
