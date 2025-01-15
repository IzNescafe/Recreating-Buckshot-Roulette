MenuState = Class{__includes = BaseState}  


function MenuState:init()
    self.buttonsSprite = love.graphics.newImage('res/Redbuttons.aesprite-Sheet.png')
    self.buttonsSprite:setFilter('nearest', 'nearest')

    self.playindex = 1
    self.quitindex = 1
    self.play ={
        love.graphics.newQuad(0, 0, 150, 80, self.buttonsSprite:getDimensions()),
        love.graphics.newQuad(150, 0, 150, 80, self.buttonsSprite:getDimensions())
    }

    self.quit = {
        love.graphics.newQuad(0, 80, 150, 80, self.buttonsSprite:getDimensions()),
        love.graphics.newQuad(150, 80, 150, 80, self.buttonsSprite:getDimensions())
    }

    self.playx =  math.floor(VIRTUAL_WIDTH/2 - 75)
    self.playy = math.floor(VIRTUAL_HEIGHT/2 - 80)

    self.quitx = math.floor(VIRTUAL_WIDTH/2 - 75)
    self.quity = math.floor(VIRTUAL_HEIGHT/2 - 20)
end

function MenuState:update(dt)
if love.keyboard.wasPressed('escape') then
    love.event.quit()
end

if love.mouse.wasPressed(1) then
    local x, y = push:toGame(love.mouse.getPosition())
    if x and y then
        if x >= self.playx + 30 and x <= self.playx + 125 and y >= self.playy + 18 and y <= self.playy + 61 then
            self.playindex = 2
            -- gStateMachine:change('play')
        elseif x >= self.quitx + 30 and x <= self.quitx + 125 and y >= self.quity + 18 and y <= self.quity + 61 then
            self.quitindex = 2
            love.event.quit()
        else
            self.playindex = 1
            self.quitindex = 1
        end
    end
    else
        self.playindex = 1
        self.quitindex = 1
    end
end

function MenuState:render()
    love.graphics.clear(100/255, 35/255, 132/255)

    
    love.graphics.draw(self.buttonsSprite, self.play[self.playindex], self.playx, self.playy)

    love.graphics.draw(self.buttonsSprite, self.quit[self.quitindex], self.quitx, self.quity)
end
