--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/2/14
-- Time: 12:19 PM
-- To change this template use File | Settings | File Templates.
--

function findMax(...)
    local args = {...}
    local max = ... -- get the first value

    for i = 1, #args do
        if args[i] > max then
            max = args[i]
        end
    end

    return max
end

answer = findMax(1, 20, 23, 11, 21, 10, 12)
print(answer)