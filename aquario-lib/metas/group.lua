local meta = {}

meta.add_subgroup = function(self, sub)
    if type(sub[1]) == "table" then
        for _, g in pairs(sub) do
            self:add_subgroup(g)
        end
        return self
    end

    local g = {
        type = "item-subgroup",
        name = sub.name,
        group = self.name,
        order = sub.order or nil
    }
    data:extend { g }
    return self
end

GROUP = setmetatable({}, {
    __call = function(self, group)
        if type(group) == "string" then
            return setmetatable(data.raw["item-group"][group], { __index = meta })
        end

        ext_group = {
            type = group.type or "item-group",
            name = group.name,
            icon = group.icon or nil,
            order = group.order or nil
        }

        data:extend { ext_group }

        return setmetatable(group, { __index = meta })
    end
})
