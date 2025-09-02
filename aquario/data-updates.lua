aquario = aquario or {}

require("prototypes.updates.disable-vanilla")

require("prototypes.updates.landfill")
require("prototypes.updates.water")
require("prototypes.updates.lab")

aquario.disable_vanilla_recipes()
aquario.disable_vanilla_technologies()

require("prototypes.updates.technology")
require("prototypes.updates.plate")
require("prototypes.updates.furnace")
require('prototypes.updates.pipe')
