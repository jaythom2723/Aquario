local meta = {}

meta.add_subgroup = function(self, sub)
    if type(sub) == "table" then
        for _, g in sub do
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
        ext_group = {
            type = group.type or "item-group",
            name = group.name,
            icon = group.icon,
            order = group.order or nil
        }

        data:extend { ext_group }

        return setmetatable(group, { __index = meta })
    end
})
