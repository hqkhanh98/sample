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
local fx       = require "com.ponywolf.ponyfx"
local tiled    = require "com.ponywolf.ponytiled"
local json     = require "json"
local dragable = require "com.ponywolf.plugins.dragable"
physics.setDrawMode( "normal" )
-- Create new scene
local scene = composer.newScene()

-- Load a "pixel perfect" map from a JSON export w/ External tileset
display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")
local mainGroup, controlGroup
local posX, posY, H, W = display.contentCenterX, display.contentCenterY, display.contentHeight, display.contentWidth
local block, hero, enemy, background, land, btnLeft, btnRight, btnJump, btnShoot
local blockTables = {}


function scene:show( event )
  local sceneGroup = self.view

  if event.phase == "will" then

    physics.start()
    physics.setGravity( 0, 32 )
    btnLeft = display.newRect( 100, posY + 180, 80, 30 )
    btnRight = display.newRect( 200, posY + 180, 80, 30 )
    btnShoot = display.newCircle( 650, posY + 180, 20 )
    background = display.newImage( "Assets/Images/BG.png", posX, posY, 1000, 750 )
    background:toBack()
    -- Load a "menu" map from a JSON
    mapData = json.decodeFile( system.pathForFile( "Assets/Maps/level_1.json", system.ResourceDirectory ) )  -- load from json export
    map = tiled.new(mapData, "Assets/Maps/")
    map.x = 0
    map.y = - 850

   
    -- mainGroup:insert( map )

    map.extensions = "Scripts.Objects."
    map:extend( "hero" )
    hero = map:findObject( "hero" )


  elseif event.phase == "did" then
    -- Function to scroll the map
    local function enterFrame( event )

      local elapsed = event.time

      -- Easy way to scroll a map based on a character
      if hero and hero.x and hero.y then
        local x, y = hero:localToContent( 0, 0 )
        x, y = display.contentCenterX - x, 600 - y
        map.x, map.y = map.x + x, map.y + y
      end
    end
    Runtime:addEventListener( "enterFrame", enterFrame )  
  end

  sceneGroup:insert( map )


end


scene:addEventListener( "show", scene )

return scene
