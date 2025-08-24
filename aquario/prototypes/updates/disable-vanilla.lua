aquario = aquario or {}

aquario.disable_vanilla_recipes = function()
    for i, v in pairs(data.raw.recipe) do
        if not string.match(v.name, "aquario-") then
            data.raw.recipe[i].enabled = false
        end
    end
end

aquario.disable_vanilla_technologies = function()
    for i, v in pairs(data.raw.technology) do
        if not string.match(v.name, "aquario-") then
            data.raw.technology[i].enabled = false
        end
    end
end
