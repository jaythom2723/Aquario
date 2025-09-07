ENTITY {
    type = "solar-panel",
    name = "aquario-windmill",
    icons = {
        {
            icon = "__aquario-graphics__/entity/wind-turbine.png",
            icon_size = 131,
            scale = 0.5
        }
    },
    flags = { "placeable-neutral", "player-creation", "placeable-player" },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output"
    },
    production = "550kW",
    performance_at_day = 1.0,
    performance_at_night = 1.0,
    collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
    selection_box = { { -0.75, -0.75 }, { 0.75, 0.75 } },
    picture = {
        {
            width = 131,
            height = 247,
            filename = "__aquario-graphics__/entity/wind-turbine.png",
            scale = 0.35,
            shift = util.by_pixel(0, -25)
        }
    },
    impact_category = "metal",
    minable = {
        mining_time = 0.2,
        result = "aquario-windmill"
    }
}
