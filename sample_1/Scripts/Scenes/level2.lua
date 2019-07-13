-----------------------------------------------------------------------------------------
-- File stage 2 of game
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

-- Create new scene
local scene = composer.newScene()

function scene:create( event )
  local test  = display.newText( "Level_2", display.contentCenterX, display.contentCenterY, nil, 44 )
end

scene:addEventListener( "create", scene )

return scene
