aquario = aquario or {}
aquario.icons = aquario.icons or {}

local meta = {}

local function strip_aquario(name)
    local prefix = "aquario-"
    return string.sub(name, #prefix, #name)
end

-- def name refers to the original icon's name
local function construct_new_name(name, def_name, prefix, suffix)
    local new_name = name or def_name

    if new_name == def_name then
        if prefix then
            -- prevent bugs like "dirty-aquario-sea-water"
            local stripped_name = strip_aquario(new_name)
            new_name = "aquario-" .. prefix .. stripped_name
        end

        if suffix then
            new_name = new_name .. "-" .. suffix
        end
    end

    return new_name
end

-- spec is the new icon entry to add onto self's icon list
meta.add_sub_icon = function(self, spec, index)
    -- do nothing if none of these are defined and error out
    if not spec.name and not spec.prefix and not spec.suffix then
        error("If name is not supplied, you must specify a prefix or suffix!!!")
    end

    index = index or nil

    -- construct the new name for the icon (for easy reference in Aquario mods)
    local name = spec.name or nil
    local prefix = spec.prefix or nil
    local suffix = spec.suffix or nil
    spec.name = construct_new_name(name, self.name, prefix, suffix)

    -- construct the new icon data & metatables, return the metatable
    local new_icon = {}
    new_icon.name = spec.name
    new_icon.raw = table.deepcopy(self.raw)

    for i, v in pairs(spec.raw) do
        if index then
            table.insert(new_icon.raw, index + i, v)
        else
            table.insert(new_icon, v)
        end
    end

    local new_meta = setmetatable(new_icon, { __index = meta })
    aquario.icons[new_meta.name] = new_meta
    return new_meta
end

ICON = setmetatable({}, {
    __call = function(self, icon)
        -- ICON("TEST"), type shit
        if type(icon) == "string" then
            local i = aquario.icons[icon]
            if not i then
                error("The icon " .. icon .. " does not exist!")
            end
            return i
        end

        local new_meta = setmetatable(icon, { __index = meta })
        aquario.icons[new_meta.name] = new_meta
        return new_meta
    end
})
