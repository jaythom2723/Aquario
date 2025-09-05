aquario = aquario or {}
aquario.farming = aquario.farming or {}

local building_list = {
    ["aquario-algae-incubator"] = { module = "aquario-algae-culture" }
}

---@param entity LuaEntity
local _remove_farm_building = function(entity)
    storage.aquario.farming.disabled_buildings[entity.unit_number] = nil
    storage.aquario.farming.enabled_buildings[entity.unit_number] = nil
end

---@param entity LuaEntity
local _enable_farm_building = function(entity)
    storage.aquario.farming.disabled_buildings[entity.unit_number] = nil
    storage.aquario.farming.enabled_buildings[entity.unit_number] = entity
end

local _disable_farm_building = function(entity)
    storage.aquario.farming.disabled_buildings[entity.unit_number] = entity
    storage.aquario.farming.enabled_buildings[entity.unit_number] = nil
end

---@param event LuaEventType
aquario.farming.add_farm_building = function(event)
    local entity = event.entity
    if building_list[entity.name] then
        storage.aquario.farming.disabled_buildings[entity.unit_number] = entity
        log("adding a new farm building: '" .. entity.name .. "' | " .. tostring(entity.unit_number))
    end
end

---@param event LuaEventType
aquario.farming.remove_farm_building = function(event)
    _remove_farm_building(event.entity)
end

---@param event LuaEventType
aquario.farming.building_should_run = function(event)
    for i, entity in pairs(storage.aquario.farming.disabled_buildings) do
        if not entity.valid then
            table.remove(storage.aquario.farming.disabled_buildings, i)
            goto continue
        end

        if not entity.is_connected_to_electric_network() then goto continue end

        if entity.get_module_inventory().is_empty() then
            rendering.draw_sprite {
                sprite = "aquario-no-farm-module-alert",
                x_scale = entity.prototype.alert_icon_scale or 0.5,
                y_scale = entity.prototype.alert_icon_scale or 0.5,
                target = entity,
                surface = entity.surface,
                time_to_live = 60,
                blink_interval = 30,
                render_layer = "air-entity-info-icon"
            }
            entity.disabled_by_script = true
            log(tostring(entity.is_updatable))
        else
            _enable_farm_building(entity)
            entity.disabled_by_script = false
        end

        ::continue::
    end
end

-- check 1/8th of all farm buildings at a time
---@param event LuaEventType
aquario.farming.is_building_valid = function(event)
    local num_farms = table_size(storage.aquario.farming.enabled_buildings)
    if num_farms == 0 then return end

    local first_iter = storage.aquario.farming.next_farm_index
    for i = 1, math.ceil(num_farms / 8) do
        local farm = storage.aquario.farming.enabled_buildings[storage.aquario.farming.next_farm_index]

        if not farm or not farm.valid then
            table.remove(storage.aquario.farming.enabled_buildings, i)
        elseif farm.get_module_inventory().is_empty() then
            _disable_farm_building(farm)
        else
            storage.aquario.farming.next_farm_index = storage.aquario.farming.next_farm_index + 1
        end

        if storage.aquario.farming.next_farm_index > table_size(storage.aquario.farming.enabled_buildings) then storage.aquario.farming.next_farm_index = 1 end
        if storage.aquario.farming.next_farm_index == first_iter then return end
    end
end
