FLUID {
    type = "fluid",
    name = "aquario-sea-water",
    icon = "__aquario-graphics__/icons/fluid/nyi-fluid.png",
    icon_size = 16,
    default_temperature = 10,
    base_color = data.raw.fluid["water"].base_color,
    flow_color = data.raw.fluid["water"].flow_color
}

FLUID {
    type = "fluid",
    name = "aquario-dirty-sea-water",
    icon = "__aquario-graphics__/icons/fluid/nyi-fluid.png",
    icon_size = 16,
    default_temperature = 10,
    base_color = { r = 165, g = 42, b = 42 },
    flow_color = { r = 165, g = 42, b = 42 }
}

FLUID {
    type = "fluid",
    name = "aquario-dirty-unmineralized-sea-water",
    icon = "__aquario-graphics__/icons/fluid/nyi-fluid.png",
    icon_size = 16,
    default_temperate = 10,
    base_color = { r = 165, g = 42, b = 42 },
    flow_color = { r = 165, g = 42, b = 42 }
}
