local meta = {}

meta.add_temp_variation = function(self, temp)
    if type(temp) == "table" then
        for _, t in temp do
            self:add_temp_variation(t)
        end
        return self
    end

    local f = {
        type = "fluid",
        name = self.name .. "-" .. tostring(temp),
        icon = self.icon, -- TODO: replace with a different icon, or come up with a 'patch' system
        default_temperature = temp,
        base_color = self.base_color,
        flow_color = self.flow_color
    }
    data:extend { f }

    return self
end

--[[
    0atm = vacuum
    100atm = 100 times Earth's atmospheric pressure
]] --

meta.add_pressure_variation = function(self, pressure_unit)
    if type(pressure_unit) == "table" then
        for _, t in pressure_unit do
            self:add_pressure_variation(t)
        end
        return self
    end

    local f = {
        type = "fluid",
        name = self.name .. "-" .. tostring(pressure_unit) .. "atm",
        icon = self.icon,
        default_temperature = self.default_temperature,
        base_color = self.base_color,
        flow_color = self.flow_color
    }
    data:extend { f }

    return self
end

FLUID = setmetatable(data.raw.fluid, {
    __call = function(self, fluid)
        if type(fluid) == "string" then
            if not self[fluid] then error("Fluid " .. tostring(fluid) .. " does not exist") end
            return self[fluid]
        end

        data:extend { fluid }
        return setmetatable(fluid, { __index = meta })
    end
})
