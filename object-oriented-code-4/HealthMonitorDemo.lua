--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/3/14
-- Time: 11:55 AM
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

HealthMonitor = CalorieCounter:new{ steps = 0, stepGoal = 10000 }

function HealthMonitor:step(amount)
    self.steps = self.steps + amount
end

function HealthMonitor:didReachGoal()
    local goalsReached = 0

    if self.count >= self.goal then
        print("Calorie goal of " .. self.count .. " reached")
        goalsReached = goalsReached + 1
    else
        print("Calorie goal not reached, yet")
    end

    if self.steps >= self.stepGoal then
        print("Step goal of " .. self.stepGoal .. " reached")
        goalsReached = goalsReached + 1
    else
        print("Step goal not reached, yet")
    end

    return goalsReached >= 2
end

hm = HealthMonitor:new{ goal = 1500, stepGoal = 5000 }
hm:add(900)
hm:step(5001)
print(hm:didReachGoal())
hm:add(600)
print(hm:didReachGoal())