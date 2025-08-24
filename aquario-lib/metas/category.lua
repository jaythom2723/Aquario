local meta = {}

CATEGORY = setmetatable({}, {
    __call = function(self, category)
        if not category.type then error("Tried to extend a category " .. category.name .. " without providing a type.") end

        data:extend { category }

        return setmetatable(category, { __index = meta })
    end
})
