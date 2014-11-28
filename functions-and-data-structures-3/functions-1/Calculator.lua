--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/2/14
-- Time: 12:26 PM
-- To change this template use File | Settings | File Templates.
--

function adder(x, y)
    return x + y
end

function subtractor(x, y)
    return x - y
end

Calculate = function(x, y, f)
    return f(x, y)
end

print "Enter a number"
local x = io.read("*n", "*l") -- read in a line using *l so that the Enter isn't read as input for the next io.read
print "Enter another number"
local y = io.read("*n", "*l")
print "Do you want to add or subtract? (+/-)"
local op = io.read(1, "*l") -- read one char
local operation

if op == "-" then
    operation = subtractor
else
    operation = adder
end

print(Calculate(x, y, operation))