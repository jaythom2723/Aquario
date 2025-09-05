aquario = aquario or {}
aquario.farming = aquario.farming or {}

local building_list = {
    ["aquario-algae-incubator"] = { module = "aquario-algae-culture" }
}

aquario.farming.add_farm_building = function(event)
    local entity = event.entity
    if building_list[entity.name] then
        storage.aquario.farming.disabled_buildings[entity.unit_number] = entity
        log("adding a new farm building: '" .. entity.name .. "' | " .. tostring(entity.unit_number))
    end
end

aquario.farming.remove_farm_building = function(event)
    storage.aquario.farming.disabled_buildings[event.entity.unit_number] = nil
    storage.aquario.farming.enabled_buildings[event.entity.unit_number] = nil
end

aquario.farming.building_should_run = function(event)

end
