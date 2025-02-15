PlayState = Class{__includes = BaseState}

function PlayState:init() 
    self.bgSprite = love.graphics.newImage('res/playbackground.png')
    self.bgSprite:setFilter('nearest', 'nearest')
end

function PlayState:update(dt)
    if love.keyboard.wasPressed('escape') then
        love.event.quit()
    end
end

function PlayState:render()
    love.graphics.clear(100/255, 35/255, 132/255)
    love.graphics.draw(self.bgSprite, 0, 0)
end

-- function PlayState:init()
--     self.bullets = {}
--     self.bulletk = {}
--     self.bullet = {}
--     self.chamber = 1
--     self.bullet = love.graphics.newImage('res/bullet.png')
--     self.bullet:setFilter('nearest', 'nearest')
--     self.bulletx = math.floor(VIRTUAL_WIDTH/2 - 8)
--     self.bullety = math.floor(VIRTUAL_HEIGHT/2 - 8)
--     self.bulletwidth = 16
--     self.bulletheight = 16
--     self.bulletxoffset = 0
--     self.bulletyoffset = 0
--     self.bulletxscale = 1
--     self.bulletyscale = 1
--     self.bulletrotation = 0
--     self.bulletox = 8
--     self.bulletoy = 8
--     self.bulletkx = 0
--     self.bulletky = 0
--     self.bulletkrotation = 0
--     self.bulletkox = 8
--     self.bulletkoy = 8
--     self.bulletkxscale = 1
--     self.bulletkyscale = 1
--     self.bulletkxoffset = 0
--     self.bulletkyoffset = 0
--     self.bulletkwidth = 16
--     self.bulletkheight = 16
--     self.bulletk = love.graphics.newImage('res/bulletk.png')
--     self.bulletk:setFilter('nearest', 'nearest')
--     self.bulletkx = math.floor(VIRTUAL_WIDTH/2 - 8)
--     self.bulletky = math.floor(VIRTUAL_HEIGHT/2 - 8)
--     self.bulletkrotation = 0
--     self.bulletkox = 8
--     self.bulletkoy = 8
--     self.bulletkxscale = 1
--     self.bulletkyscale = 1
--     self.bulletkxoffset = 0
--     self.bulletkyoffset = 0
--     self.bulletkwidth = 16
--     self.bulletkheight = 16
--     self.bulletkrotation = 0
--     self.bulletkox = 8
--     self.bulletkoy = 8
--     self.bulletkxscale = 1
--     self.bulletkyscale = 1
--     self.bulletkxoffset = 0
--     self.bulletkyoffset = 0

-- end

-- function PlayState:update(dt)
--     if love.keyboard.wasPressed('escape') then
--         love.event.quit()
--     end
-- end

-- function PlayState:enter()
--     self.chamber = math.random(6)
--     for i = 1, 6 do
--         if i == self.chamber then
--             table.insert(self.bullets, self.bulletk)
--         else
--             table.insert(self.bullets, self.bullet)
--         end
--     end
-- end


-- function PlayState:exit()
--     self.bullets = {}
-- end

-- function PlayState:render()
--     love.graphics.clear(100/255, 35/255, 132/255)
--     for i = 1, 6 do
--         love.graphics.draw(self.bullets[i], self.bulletx + (i - 1) * 16, self.bullety)
--     end
-- end