-- contains all of the technologies necessary for cleaning dirty byproducts

TECHNOLOGY {
    type = "technology",
    name = "aquario-silicate-cleaning-1",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 128,
    effects = {}, -- TODO: unlock shit regarding silica cleaning
    unit = {
        count = 20,
        ingredients = { { "aquario-impure-energy-crystal", 1 } },
        time = 10
    },
    prerequisites = { "aquario-aluminum-unlock" },
    hidden = true,
    enabled = false
}
