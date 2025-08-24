FLUID {
    type = "fluid",
    name = "aquario-sea-water",
    icon = "__base__/graphics/icons/fluid/water.png",
    default_temperature = 10,
    base_color = data.raw.fluid["water"].base_color,
    flow_color = data.raw.fluid["water"].flow_color
}

FLUID {
    type = "fluid",
    name = "aquario-dirty-sea-water",
    icon = "__base__/graphics/icons/fluid/water.png",
    default_temperature = 10,
    base_color = { r = 165, g = 42, b = 42 },
    flow_color = { r = 165, g = 42, b = 42 }
}
