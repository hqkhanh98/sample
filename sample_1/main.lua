-----------------------------------------------------------------------------------------
-- File is the main of app
-- Author : Quoc Khanh
-- Date Create : 03/7/2019
-- Project : Sample_1
-----------------------------------------------------------------------------------------

-- Notes -----------------------------------------------------------------------
--
--============================================================================--

-- Include libary/module
local composer = require "composer"

-- Seed the random number generator
math.randomseed( os.time() )

-- Go to the next scene
composer.gotoScene( "Scripts.Scenes.level1", { params = {} } )
