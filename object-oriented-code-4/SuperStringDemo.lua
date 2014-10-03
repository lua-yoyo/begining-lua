--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/3/14
-- Time: 10:26 AM
-- To change this template use File | Settings | File Templates.
--

local meta = {}
local SS = {}

function SS.new(s)
    local superString = {}

    superString.s = s
    setmetatable(superString, meta)

    return superString
end

function SS.add(s1, s2)
    return s1.s .. s2.s
end

meta.__index = function(table, key)
    if key == "reverse" then
        return string.reverse(table.s)
    end
end

meta.__add = SS.add

firstName = SS.new("Jiji")
lastName = SS.new(" Sabie")
print(firstName + lastName)

print(firstName.reverse)