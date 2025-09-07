require("plate")
require("furnace")

data.raw.recipe["pipe"].enabled = true
data.raw.recipe["iron-plate"].enabled = true
data.raw.recipe["copper-plate"].enabled = true
data.raw.recipe["stone-furnace"].enabled = true
data.raw.recipe["iron-gear-wheel"].enabled = true
data.raw.recipe["transport-belt"].enabled = true
data.raw.recipe["pipe-to-ground"].enabled = true

data.raw.recipe["inserter"].ingredients = {
    { type = "item", name = "iron-plate",      amount = 5 },
    { type = "item", name = "iron-gear-wheel", amount = 3 }
}
data.raw.recipe["inserter"].enabled = true
