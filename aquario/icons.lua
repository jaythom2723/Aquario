aquario = aquario or {}
aquario.icons = aquario.icons or {}

local function get_fluid_template(shorthand_name, tint)
    return {
        icon = "__aquario-graphics__/icons/fluid/fluid-template-" .. shorthand_name .. ".png",
        tint = tint,
        icon_size = 64
    }
end

local white_color = { r = 255, g = 255, b = 255 }
local water_color = data.raw.fluid["water"].base_color
local waste_color = { r = 10, g = 27, b = 3 }

local dirty_pool_color = { r = 128, g = 70, b = 27 }
local dirty_unmineralized_pool_color = { r = 100, g = 100, b = 100 }
local mineral_pool_color = { r = 200, g = 200, b = 200 }

ICON {
    name = "aquario-sea-water",
    raw = {
        get_fluid_template("top", water_color),
        get_fluid_template("mid-1", water_color),
        get_fluid_template("mid-2", water_color),
        get_fluid_template("bottom-1", white_color),
        get_fluid_template("bottom-2", white_color),
    }
}

ICON {
    name = "aquario-water",
    raw = {
        get_fluid_template("top", water_color),
        get_fluid_template("mid-1", water_color),
        get_fluid_template("mid-2", water_color),
        get_fluid_template("bottom-1", water_color),
        get_fluid_template("bottom-2", water_color),
    }
}

ICON {
    name = "aquario-waste-water",
    raw = {
        get_fluid_template("top", waste_color),
        get_fluid_template("mid-1", waste_color),
        get_fluid_template("mid-2", waste_color),
        get_fluid_template("bottom-1", waste_color),
        get_fluid_template("bottom-2", waste_color)
    }
}

ICON("aquario-water"):add_sub_icon({
    prefix = "dirty",
    raw = {
        get_fluid_template("pool", dirty_pool_color)
    }
}, 1)

ICON("aquario-water"):add_sub_icon({
    prefix = "mineral",
    raw = {
        get_fluid_template("pool", mineral_pool_color)
    }
}, 1)

log(ICON("aquario-mineral-water").name)

ICON("aquario-sea-water"):add_sub_icon({
    prefix = "dirty",
    raw = {
        get_fluid_template("pool", dirty_pool_color),
    }
}, 1)

ICON("aquario-sea-water"):add_sub_icon({
    prefix = "dirty-unmineralized",
    raw = {
        get_fluid_template("pool", dirty_unmineralized_pool_color),
    }
}, 1)
