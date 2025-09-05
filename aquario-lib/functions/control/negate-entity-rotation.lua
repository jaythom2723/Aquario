aquario = aquario or {}

local entity_lookup_table = { -- TODO: add more to this list as time goes on (if needed)
    ["aquario-mixing-drum"] = defines.direction.west
}

aquario.prevent_entity_rotation = function(event)
    local entity = event.entity
    local entry = entity_lookup_table[entity.name]
    if not entry then return end

    entity.rotatable = false
    entity.direction = entry
end
