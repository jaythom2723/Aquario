local meta = {}

local entity_types = defines.prototypes.entity

meta.add_flag = function(self, flag)
    if not self.flags then self.flags = {} end
    table.insert(self.flags, flag)
    return self
end

meta.remove_flag = function(self, flag)
    if not self.flags then return self end
    for i, f in pairs(self.flags) do
        if f == flag then table.remove(self.flags, i) end
    end
    return self
end

meta.has_flag = function(self, flag)
    if not self.flags then return false end
    for _, f in pairs(self.flags) do
        if f == flag then return true end
    end
    return false
end

meta.add_tag = function(self, tag)
    if not self.tags then self.tags = {} end
    table.insert(self.tags, tag)
    return self
end

meta.remove_tag = function(self, tag)
    if not self.tags then return end
    for i, t in pairs(self.tags) do
        if t == tag then table.remove(self.tags, i) end
    end
    return self
end

meta.has_tag = function(self, tag)
    if not self.tags then return false end
    for _, t in pairs(self.tags) do
        if t == tag then return true end
    end
    return false
end

ENTITY = setmetatable({}, {
    __call = function(self, entity)
        if not entity.type then error("Tried to extend an entity " .. entity.name .. " without providing a type") end
        if not entity_types[entity.type] then error("Tried to use ENTITY{} on a non-entity: " .. entity.name) end

        data:extend { entity }
        return setmetatable(entity, { __index = meta })
    end
})
