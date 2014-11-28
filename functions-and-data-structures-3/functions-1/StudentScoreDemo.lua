--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/2/14
-- Time: 12:43 PM
-- To change this template use File | Settings | File Templates.
--

local grades = { Mary = 100, Teacher = 100 } -- initialize

while true do
    print "Enter student name(q to quit)"
    local name = io.read()

    if (name == 'q') then
        break
    end

    print "Enter student score"
    local score = io.read("*n", "*l")

    grades[name] = score
end

print "Printing grades!"
for k, v in pairs(grades) do
    print "Grade:"
    print(k, v)
end

print(grades.Teacher) -- . access