local hit_effects = require("__base__.prototypes.entity.hit-effects")

ENTITY {
    type = "assembling-machine",
    name = "aquario-evaporator",
    icons = {
        {
            icon = "__aquario-graphics__/entity/evaporator.png",
            icon_size = 241,
            shift = { 12, 0 }
        }
    },
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = {
        mining_time = 0.2,
        result = "aquario-evaporator"
    },
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    -- icon_draw_specification = { shift = { 0, -0.3 } },
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"],
    graphics_set =
    {
        animation =
        {
            layers =
            {
                {
                    filename = "__aquario-graphics__/entity/evaporator.png",
                    priority = "high",
                    width = 255,
                    height = 241,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(12, 0),
                    scale = 0.45
                }
            }
        }
    },
    crafting_categories = { "aquario-fluid-evaporation" },
    crafting_speed = 0.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 4 }
    },
    energy_usage = "75kW",
    allowed_effects = { "speed", "consumption", "pollution" },
    effect_receiver = { uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true },
    impact_category = "metal",
    working_sound =
    {
        sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5, audible_distance_modifier = 0.5 },
        fade_in_ticks = 4,
        fade_out_ticks = 20
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -0.75 } } },
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
            secondary_draw_orders = { north = -1 }
        }
    }
}
