-----------------------------------------------------------------------------------------
-- File stage 1 of game
-- Author : Quoc Khanh
-- Date Create : 05/7/2019
-- Project : Sample_1
-----------------------------------------------------------------------------------------

-- Notes -----------------------------------------------------------------------
--
--============================================================================--

-- Include libary/module
local mHero    = require "Scripts.Objects.hero"
local composer = require "composer"
local physics  = require "physics"
physics.setDrawMode( "hybrid" )
-- Create new scene
local scene = composer.newScene()

local posX, posY, H, W = display.contentCenterX, display.contentCenterY, display.contentHeight, display.contentWidth
local block, hero, enemy, background, land
local blockTables = {}


function scene:show( event )
  local sceneGroup = self.view
  if event.phase == "will" then

    physics.start()
    physics.setGravity( 0, 32 )

    background = display.newImage( "Assets/Images/BG.png", posX, posY, 1000, 750 )

    hero = mHero.new( sceneGroup, hero )
    land = display.newRect( posX, H - 300, 1024, 100 )
    physics.addBody( land, "static", { bounce = 0 } )
  elseif event.phase == "did" then

  end
  sceneGroup:insert( background )
  sceneGroup:insert( land )

end


scene:addEventListener( "show", scene )

return scene
