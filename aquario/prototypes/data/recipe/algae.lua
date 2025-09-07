RECIPE {
    type = "recipe",
    name = "aquario-algae-cultivation",
    icon = "__aquario-graphics__/icons/algae.png",
    ingredients = {
        { type = "fluid", name = "aquario-sea-water", amount = 100 }
    },
    results = {
        { type = "fluid", name = "aquario-waste-water", amount = 100 },
        { type = "item",  name = "aquario-algae",       amount = 10 }
    },
    energy_required = 0.55,
    category = "aquario-algae-farming",
    subgroup = "aquario-farming-algae"
}
