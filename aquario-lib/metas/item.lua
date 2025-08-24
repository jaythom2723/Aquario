local meta = {}

meta.add_flag = function(self, flag)
    if not self.flags then self.flags = {} end
    table.insert(self.flags, flag)
    return self
end

meta.remove_flag = function(self, flag)
    if not self.flags then return self end
    for i, f in pairs(self.flags) do
        if f == flag then
            table.remove(self.flags, i)
        end
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

ITEM = setmetatable({}, {
    __call = function(self, item)
        if type(item) == "string" then
            if not data.raw.item[item] then error("Item " .. tostring(item) .. " does not exist") end
            return data.raw.item[item]
        end

        if not item.type then error("Tried to extend an item " .. item.name .. " without a type") end

        data:extend { item }
        return setmetatable(item, { __index = meta })
    end
})
