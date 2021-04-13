print("I am just testing something v2")

local function staircase()

    return false
end 

local ylevel = 0


while true do
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    for i = 1, 5 do
        turtle.digDown()
        turtle.dig()
        if not turtle.forward() then
            turtle.refuel()
        end
    end
    turtle.dig()
    turtle.turnRight()
    turtle.turnRight()
    for i = 1, 5 do
        if not turtle.forward() then
            turtle.refuel()
        end
    end 

    turtle.down()
    ylevel = ylevel + 1
    
    break

end