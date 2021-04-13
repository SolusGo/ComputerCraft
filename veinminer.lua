print("I am just testing something v2")

local function staircase()

    return false
end 


while true do
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    for i = 1, 5 do
        turtle.digDown()
        turtle.dig()
        turtle.forward()

    end 
    
    




end