FLUID {
    type = "fluid",
    name = "aquario-sea-water",
    icons = ICON("aquario-sea-water").raw,
    default_temperature = 10,
    base_color = data.raw.fluid["water"].base_color,
    flow_color = data.raw.fluid["water"].flow_color
}

FLUID {
    type = "fluid",
    name = "aquario-dirty-sea-water",
    icons = ICON("aquario-dirty-sea-water").raw,
    default_temperature = 10,
    base_color = { r = 100, g = 65, b = 23 },
    flow_color = { r = 100, g = 65, b = 23 }
}

FLUID {
    type = "fluid",
    name = "aquario-dirty-unmineralized-sea-water",
    icons = ICON("aquario-dirty-unmineralized-sea-water").raw,
    icon_size = 16,
    default_temperature = 10,
    base_color = { r = 100, g = 65, b = 23 },
    flow_color = { r = 100, g = 65, b = 23 }
}
