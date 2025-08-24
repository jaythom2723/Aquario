aquario = aquario or {}

require("prototypes.updates.disable-vanilla")

require("prototypes.updates.landfill")
require("prototypes.updates.water-tile")

aquario.disable_vanilla_recipes()
aquario.disable_vanilla_technologies()
