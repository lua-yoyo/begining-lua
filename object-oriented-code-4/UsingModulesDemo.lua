--
-- Created by IntelliJ IDEA.
-- User: mpalade
-- Date: 10/3/14
-- Time: 12:12 PM
-- To change this template use File | Settings | File Templates.
--

local Health = require "HealthMonitorModule"
local HealthMonitor = Health.HealthMonitor

hm = HealthMonitor:new{ goal = 1500, stepGoal = 5000 }
hm:add(900)
hm:step(5001)
print(hm:didReachGoal())
hm:add(600)
print(hm:didReachGoal())