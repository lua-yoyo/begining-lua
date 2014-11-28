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

function handleGuesses(...)
    local lowMsg, highMsg, number = ...
    local answer
    local guesses = {}

    while answer ~= number do
        answer = io.read("*n")
        guesses[#guesses + 1] = answer

        if answer < number then
            print(lowMsg)
        elseif answer > number then
            print(highMsg)
        else
            break
        end

        print "Guess again"
    end

    return guesses
end

local number = getRandonNumber(100)
print "Guess a number"

local guesses = handleGuesses("Too low", "Too high", number)

print 'Success!'

print "Here are your guesses"
for i, v in ipairs(guesses) do
    print(i, v)
end