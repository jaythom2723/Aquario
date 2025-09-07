-- all of the groups and subgroups related to Aquario

GROUP {
    name = "aquario-main",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 214
}
GROUP("aquario-main"):add_subgroup {
    {
        name = "aquario-main-void-machine",
        order = "aaa"
    },
    {
        name = "aquario-main-evaporation",
        order = "aab",
    },
    {
        name = "aquario-main-filtration",
        order = "aba"
    },
    {
        name = "aquario-main-mineralization",
        order = "aca"
    },
    {
        name = "aquario-main-fluid-mixing",
        order = "ada"
    },
    {
        name = "aquario-main-dirtying",
        order = "aza"
    },
}

GROUP {
    name = "aquario-farming",
    icon = "__aquario-graphics__/icons/nyi-item.png",
    icon_size = 214
}
GROUP("aquario-farming"):add_subgroup {
    name = "aquario-farming-algae",
    order = "aaa",
}
