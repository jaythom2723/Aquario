aquario = aquario or {}

require("__aquario-lib__.functions.control.negate-entity-rotation")

script.on_event(defines.events.on_built_entity, aquario.prevent_entity_rotation)
script.on_event(defines.events.on_player_rotated_entity, aquario.prevent_entity_rotation)
