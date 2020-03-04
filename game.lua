Game = {}

require("xml")
require("Map")
require("Perso")  
require("Obstacle")
require("Chariot")

levelList = {}
levelList.l1 = require ("level1")
levelList.l2 = require ("level2")


currentlevel = levelList.l2

char = chariot.new(5, 1, "ressources/images/chariot.png", "ressources/Images/rail.png")
charSpeed = 100

dtSum = 0 
UpdtTime = 1 



function Game.update(dt)
    dtSum = dtSum + dt
    Map.update()
    Perso.update()
    obs.update(Map)
    uli.update(Map)
    nenenene.update(Map)

    if dtSum > UpdtTime then
        char.update(Map)
        dtSum = 0
    end
end


function Game.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.draw(backgroundImage,0,0,0,0.4,0.4)
    love.graphics.setFont(mainFont) 

    char.draw()

    Perso.draw()

    currentlevel.draw()
    Map.draw(true)

end

function Game.keypressed(key)
  Perso.keypressed(key)
end
function Game.mousereleased()
end


return Game