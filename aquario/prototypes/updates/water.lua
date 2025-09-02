local water_tiles = {
    "water",
    "deepwater",
    "water-green",
    "deepwater-green",
    "water-shallow",
    "water-mud"
}

for _, v in pairs(water_tiles) do
    data.raw.tile[v].fluid = "aquario-sea-water"
    data.raw.tile[v].destroys_dropped_items = true -- thanks to @Immow & @Meelock for the idea.
end

data.raw.fluid["water"].icon = nil
data.raw.fluid["water"].icon_size = nil
data.raw.fluid["water"].icons = ICON("aquario-water").raw
