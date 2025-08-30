aquario = aquario or {}
aquario.icons = aquario.icons or {}

ICON {
    name = "aquario-sea-water",
    raw = {
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-template-top.png",
            tint = { r = 0, g = 70, b = 255 },
            icon_size = 64
        },
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-template-mid-1.png",
            tint = { r = 0, g = 70, b = 255 },
            icon_size = 64
        },
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-template-mid-2.png",
            tint = { r = 0, g = 70, b = 255 },
            icon_size = 64
        },
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-template-bottom-1.png",
            tint = { r = 255, g = 255, b = 255 },
            icon_size = 64
        },
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-template-bottom-2.png",
            tint = { r = 255, g = 255, b = 255 },
            icon_size = 64
        }
    }
}

ICON("aquario-sea-water"):add_sub_icon({
    prefix = "dirty",
    raw = {
        {
            icon = "__aquario-graphics__/icons/fluid/fluid-pool.png",
            tint = { r = 128, g = 70, b = 27 },
            icon_size = 64
        }
    }
}, 1)
