--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/2/14
-- Time: 12:36 PM
-- To change this template use File | Settings | File Templates.
--

function simpleCounter(max)
    local count = 0

    return function() -- the closure has access to the local vars in the parent function
        count = count + 1
        if count > max then
            return nil
        end

        return count
    end
end

for v in simpleCounter(50) do
    print(v)
end