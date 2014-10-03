--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/3/14
-- Time: 11:43 AM
-- To change this template use File | Settings | File Templates.
--

CalorieCounter = { count = 0, goal = 2000 }

function CalorieCounter:add(amount) -- : is a shortcut
    self.count = self.count + amount
    -- the following will work but,
    -- the class name is harcoded so we'll have a problem with inheritance
    -- CalorieCounter.count = self.count + amount
end
-- the above is equivalent to this:
--function CalorieCounter.add(self, amount)
--   --
--end

function CalorieCounter:didReachGoal()
    return self.count >= self.goal
end

function CalorieCounter:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self -- give access to t to the methods of CalorieCounter
    return t
end

c = CalorieCounter:new{ goal = 1500 }
c:add(500)
print(c.count)
print(c:didReachGoal())
c:add(1000)
print(c.count)
print(c:didReachGoal())
