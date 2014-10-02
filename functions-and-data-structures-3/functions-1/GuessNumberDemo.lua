--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/2/14
-- Time: 11:49 AM
-- To change this template use File | Settings | File Templates.
--

function getRandonNumber(maxValue)
    math.randomseed(os.time())
    math.random()
    return math.random(maxValue)
end

local number = getRandonNumber(100)
print "Guess a number"

while answer ~= number do
    local answer = io.read("*n")

    if answer < number then
        print "Too low"
    elseif answer > number then
        print "Too high"
    else
        print 'Success!'
        break
    end

    print "Guess again"
end

