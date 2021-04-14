print("I am just testing something v2")

local function staircase()

    return false
end 

local ylevel = 0

local function checkFuel()
    if turtle.getFuelLevel() == "unlimited" then
        turtle.refuel()
    end

    if turtle.getItemCount(1) < 64 then
        for i = 1, 16 do
            data = turtle.getItemDetail(i)
            firstslot = turtle.getItemDetail(1)
            if data.name == "minecraft:coal" and firstslot.name == "minecraft:coal" then
                turtle.select(i)
                turtle.transferTo(1)
            end
        end
    end

end


local function succ()
    if not turtle.suck() then
        os.exit()
    end
end

while true do
    turtle.dig()
    succ()
    turtle.forward()
    turtle.digUp()
    succ()
    turtle.turnRight()
    for i = 1, 5 do
        turtle.digDown()
        succ()
        turtle.dig()
        succ()
        if not turtle.forward() then
            turtle.refuel()
        end
        turtle.digUp()
        succ()
    end
    turtle.dig()

    succ()

    turtle.turnRight()
    turtle.turnRight()
    for i = 1, 5 do
        if not turtle.forward() then
            turtle.refuel()
        end
    end 

    turtle.turnRight()

    turtle.down()
    ylevel = ylevel + 1
    
    

end