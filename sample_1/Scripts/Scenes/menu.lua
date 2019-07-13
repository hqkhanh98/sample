-----------------------------------------------------------------------------------------
-- File is manager menu scene
-- Author : Quoc Khanh
-- Date Create : 03/7/2019
-- Project : Sample_1
-----------------------------------------------------------------------------------------

-- Notes -----------------------------------------------------------------------
--
--============================================================================--

-- Include libary/module
local composer = require "composer"
local fx       = require "com.ponywolf.ponyfx"
local tiled    = require "com.ponywolf.ponytiled"
local json     = require "json"
local dragable = require "com.ponywolf.plugins.dragable"
local widget   = require "widget"

-- Create new scene
local scene = composer.newScene()

-- Set default
display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")

-- Display group
local mapGroup = display.newGroup()

-- Variable of the menu scene
local background, mapData, map, level, gameLoopTimer

local levelTables = {}

local posX, posY = display.contentCenterX, display.contentCenterY
--------------------------------------------------------------------------------
-- CREATE FUNCTION
-- The function will active before scene appear
--------------------------------------------------------------------------------
function scene:create( event )

  local sceneGroup = self.view -- create group
  -- Display background Image
  background = display.newImageRect( mapGroup, "Assets/Images/Background.jpg", 768, 1024 )

  background.x, background.y = posX, posY

  -- Insert into group
  sceneGroup:insert( mapGroup )

end -- End of scene:create

--------------------------------------------------------------------------------
-- SHOW FUNCTION
-- The function is manager activity menu
--------------------------------------------------------------------------------
function scene:show( event )
  local sceneGroup = self.view

  if event.phase == "will" then
    -- scroll View Options
    local scrollView             = widget.newScrollView {
          verticalScrollDisabled = true,
          width                  = 2000,
          height                 = 300,
          left                   = 0,
          top                    = 400,
          rightPadding           = 1024,
          hideBackground         = true
    }
    scrollView:setScrollWidth( 1024 )

    -- Load a "menu" map from a JSON
    mapData = json.decodeFile( system.pathForFile( "Assets/Maps/menu.json", system.ResourceDirectory ) )  -- load from json export
    map = tiled.new(mapData, "Assets/Maps/")
    scrollView:insert( map )

    -- The loop all obj in map
    for i = 1, 4, 1 do
      -- Find obj in map
      local levelText    = "level".. i
            level        = map:findObject( levelText )
            level.myName = levelText
      -- Insert into table
      table.insert( levelTables, level )
    end-- End of for level

  elseif event.phase == "did" then
    -- the function avtive when user click
    local function onTap( event )
      print( event.target.myName )
      -- Go to scene
      composer.gotoScene( "Scripts.Scenes." .. event.target.myName, { params = { time = 2000 } } )
      return true
    end

    -- Event click into level
    for i = 1, #levelTables, 1 do
      levelTables[i]:addEventListener( "tap", onTap )
    end

  end --  End of if phase

end -- End of Scene:show

--------------------------------------------------------------------------------
-- HIDE FUNCTION
-- The function will active when scene hide
--------------------------------------------------------------------------------
function scene:hide( event )
  -- remove map
  display.remove( map )
end

-- Add EventListener
scene:addEventListener( "hide", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "create", scene )

return scene
