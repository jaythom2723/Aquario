local hit_effects = require("__base__.prototypes.entity.hit-effects")

ENTITY {
    type = "assembling-machine",
    name = "aquario-soil-gatherer",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = {
        mining_time = 0.2,
        result = "aquario-mixing-drum"
    },
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    icon_draw_specification = { shift = { 0, -0.3 } },
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
    circuit_connector = circuit_connector_defintions["assembling-machine"],
    graphics_set = {
        animation = {
            layers = {
                {
                    filename    = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
                    priority    = "high",
                    width       = 214,
                    height      = 226,
                    frame_count = 32,
                    line_length = 8,
                    shift       = util.by_pixel(0, 2),
                    scale       = 0.5
                },
                {
                    filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
                    priority = "high",
                    width = 190,
                    height = 165,
                    line_length = 1,
                    repeat_count = 32,
                    draw_as_shadow = true,
                    shift = util.by_pixel(8.5, 5),
                    scale = 0.5
                }
            }
        }
    },
    crafting_categories = { "aquario-soil-gathering" },
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
    working_sound = {
        sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5, audible_distance_modifier = 0.5 },
        fade_in_ticks = 4,
        fade_out_ticks = 20
    }
}
