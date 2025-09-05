aquario = aquario or {}

require("scripts.init")

require("__aquario-lib__.functions.control.negate-entity-rotation")
require("__aquario-lib__.systems.farming")

script.on_event(defines.events.on_built_entity, function(event)
    aquario.prevent_entity_rotation(event)
    aquario.farming.add_farm_building(event)
end)

script.on_event(defines.events.on_object_destroyed, aquario.farming.remove_farm_building)
script.on_event(defines.events.on_player_rotated_entity, aquario.prevent_entity_rotation)
