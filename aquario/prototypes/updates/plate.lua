-- UPDATE IRON PLATE VANILLA RECIPE FOR TIER 1 IRON PLATE PRODUCTION
data.raw.recipe["iron-plate"].icon =
"__base__/graphics/icons/iron-plate.png" -- need to add this manually, for some reason
data.raw.recipe["iron-plate"].ingredients = {
    { type = "item", name = "aquario-raw-iron-oxide-ore", amount = 5 }
}
data.raw.recipe["iron-plate"].results = {
    { type = "item", name = "iron-plate",   amount = 1 },
    { type = "item", name = "aquario-slag", amount = 3 }
}
data.raw.recipe["iron-plate"].order = "a[melting]-a[iron-plate]"
data.raw.recipe["iron-plate"].group = "intermediate-products"
data.raw.recipe["iron-plate"].subgroup = "raw-material"

-- UPDATE COPPER PLATE VANILLA RECIPE FOR TIER 1 COPPER PLATE PRODUCTION
data.raw.recipe["copper-plate"].icon =
"__base__/graphics/icons/copper-plate.png" -- need to add this manually, for some reason
data.raw.recipe["copper-plate"].ingredients = {
    { type = "item", name = "aquario-raw-copper-oxide-ore", amount = 5 }
}
data.raw.recipe["copper-plate"].results = {
    { type = "item", name = "copper-plate", amount = 1 },
    { type = "item", name = "aquario-slag", amount = 3 }
}
data.raw.recipe["copper-plate"].order = "a[melting]-b[copper-plate]"
data.raw.recipe["copper-plate"].group = "intermediate-products"
data.raw.recipe["copper-plate"].subgroup = "raw-material"

-- recipe re-enabling
