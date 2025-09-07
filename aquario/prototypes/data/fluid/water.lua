FLUID {
    type = "fluid",
    name = "aquario-dirty-water",
    icons = ICON("aquario-dirty-water").raw,
    default_temperature = 10,
    base_color = { r = 100, g = 65, b = 23 },
    flow_color = { r = 100, g = 65, b = 23 }
}

FLUID {
    type = "fluid",
    name = "aquario-mineral-water",
    icons = ICON("aquario-mineral-water").raw,
    default_temperature = 10,
    base_color = data.raw.fluid["water"].base_color,
    flow_color = data.raw.fluid["water"].base_color
}

RECIPE {
    type = "fluid",
    name = "aquario-waste-water",
    icons = ICON("aquario-waste-water").raw,
    default_temperature = 10,
    base_color = { r = 18, g = 53, b = 36 },
    flow_color = { r = 18, g = 53, b = 36 }
}
