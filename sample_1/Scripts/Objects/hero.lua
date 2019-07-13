-----------------------------------------------------------------------------------------
-- Author : Quoc Khanh
-- Date Create : 12/7/2019
-- Project : Sample_1
-----------------------------------------------------------------------------------------

-- Notes -----------------------------------------------------------------------
-- The module of object hero
--============================================================================--

-- Include the libary/module
local composer  = require "composer"
local sheetInfo = require "Assets.Sheets.hero"

-- Define module
local M = {}

function M.new( instance, options )

  	-- Default options for instance
	options = options or {}

	-- Get the current scene
	local scene  = composer.getScene( composer.getSceneName( "current" ) )
	local sounds = scene.sounds -- Will use when have sounds

	-- Location instance
	instance.isVisible = false
  	local x, y = instance.x, instance.y



	local velocityX, velocityY
	local velocityMax, speed, left, right, distance = 230, 150, 0, 0, 0
	local lastEvent = {}
	local isTurn, isRun, isShoot = false, false, false
	local parentGroup = instance.parent -- Group of instance


	-- Display instance
  	local heroSheet = graphics.newImageSheet( "Assets/Sheets/hero.png", sheetInfo:getSheet() )
	local sequenceData = {
		{
			name 		  = "idle",
			frames 		  = { 31, 32, 33 },
			time 		  = 500,
			loopCount 	  = 0,
			loopDirection = "forward"
		},
		{
			name   		  = "running",
			start 		  = 41,
			count 		  = 10,
			time 		  = 1000,
			loopCount 	  = 0,
			loopDirection = "forward"
		},
		{
			name 		  = "jumping",
			frames 		  = { 35, 36, 37, 38, 39, 40, 31 },
			time 		  = 1100,
			loopCount 	  = 1,
			loopDirection = "forward"
		},
		{
			name 		  = "shootrun",
			start 		  = 63,
			count 		  = 9,
			time 		  = 1000,
			loopCount 	  = 0,
			loopDirection = "forward"
		},
		{
			name = "shootidle",
			frames = { 54, 55 },
			loopCount = 1,
			loopDirection = "forward"
		}

	}
	-- Load sprite hero
	instance = display.newSprite( parentGroup, heroSheet, sequenceData )

	instance:scale( 2, 2 )
	instance.x = x
	instance.y = y
	-- Physics body type of instance
	physics.addBody( instance, "dynamic", { density = 1, friction= 1.5,
											box = { halfWidth= 15, halfHeight= 32, x=0, y=0 } , -- The box2D
											bounce = 0 } )
	instance.isSensor = false
	-- None change rotation
	instance.isFixedRotation = true

  	-- Keyboard controller
	local function onKey( event )
		local phase = event.phase
		local key = event.keyName
		-- Repeating keys
		if phase == lastEvent.phase and key == lastEvent.keyName then

			print( "Repeating keys" )
			return false
		end

		if phase == "down" then

			-- When press the key
			-- Run right key
			if key == "left" then

				left = - speed -- Speed
				isRun = true
				-- Check jump, if not jump then play run animation
				if not instance.jumping then
					instance:setSequence( "running" )
				end

				-- Turn left
				if not isTurn then
					print("Turn left")
					instance:scale( -1,1 )
					isTurn = true
				end

				print( "Move left" )
			-- Run left key
			elseif key == "right" then

				right = speed -- 'Speed'
				isRun = true
				-- Check jump, if not jump then play run animation
				if not instance.jumping then
					instance:setSequence( "running" )
				end
				-- Turn right
				if isTurn then
					print("Turn right")
					instance:scale( -1,1 )
					isTurn = false
				end
				print( "Move right" )
	
			-- Jump key
			elseif key == "space" then
				instance:jump()
			elseif key == "q" then

				if isRun then
					instance:setSequence( "shootrun" )
				else 
					instance:setSequence( "shootidle" )
				end
				
			end -- End of Key down

				-- Play animation
				instance:play()
	
		elseif phase == "up" then
			-- When release the key
			if key == "left" then
				-- Check jump
				if not instance.jumping then
					instance:setSequence( "idle" )
				end

				left = 0 -- Stop
				isRun = false
		  	elseif key == "right" then
				-- Check jump
				if not instance.jumping then
					instance:setSequence( "idle" )
				end

				right = 0 -- Stop
				isRun = false
			elseif key == "q" then
				createBullet()
			end -- End of Key up
			if left == 0 and right == 0 and not instance.jumping then
				instance:setSequence("idle")
			end
			-- Play animation
			instance:play()

		end -- End of phase
		
		-- Check click event last
		lastEvent = event
		return false
	end -- End of function onKey
  	
  	-- Jump
	function instance:jump()
		if not self.jumping then
			self:applyLinearImpulse( 0, - 32 )
			instance:setSequence( "jumping" )
			instance:play()
			self.jumping = true
		end 
	end -- End of function jump

	function instance:collision( event )
		local phase = event.phase
		-- Get current velocity
		local vx, vy = self:getLinearVelocity()

		if phase == "began" then
			-- Landed after jumping
			if self.jumping and vy > 0 then
				self.jumping = false
			end
		end
	end -- End of function collision

	-- Friction between hero and other
	function instance:preCollision( event )

		local other = event.other
		local y1, y2 = self.y + 50, other.y - other.height/2
		if event.contact and ( y1 > y2 ) then
				-- friction land
				event.contact.friction = 0.7
		end
	end -- End of function preCollision
	function createBullet()
		local vx, vy = instance:getLinearVelocity()
		local newLaser = display.newImageRect( parentGroup, "Assets/Images/normalbullet.png", 16, 12 )--instance.x + 30, instance.y - 5, 5, 5 )
	    physics.addBody( newLaser, "dynamic", { isSensor = false } )

	    newLaser.isBullet = true
	    
	    newLaser.y = instance.y - 5
	    if not isTurn then
			newLaser.x = instance.x + 40
		    transition.to( newLaser, { x = instance.x + 1000, y = newLaser.y, time=1000,
	        onComplete = function() display.remove( newLaser ) end
	    	} )
	    end
		if isTurn then
			newLaser.x = instance.x - 40
			transition.to( newLaser, { x = instance.x - 1000, time=1000,
	        onComplete = function() display.remove( newLaser ) end
	    	} )
		end
	end
	-- Do this every frame
	local function enterFrame()
		-- Get current velocity
		velocityX, velocityY = instance:getLinearVelocity()
		-- Cal distance
		distance = left + right

		-- distance jump
		if instance.jumping then distance = distance / 8 end

		-- Force left and right
		if ( distance < 0 and velocityX > - velocityMax ) then
			instance:applyForce( distance, 0, instance.x, instance.y )
		elseif ( distance > 0 and velocityX < velocityMax ) then
			instance:applyForce( distance, 0, instance.x, instance.y )
		end

	end -- End of function enterFrame

	-- Add collision listeners
	instance:addEventListener( "preCollision" )
	instance:addEventListener( "collision" )

	-- Add enterFrame listener
	Runtime:addEventListener( "enterFrame", enterFrame )

	-- Add key listeners
	Runtime:addEventListener( "key", onKey )

	-- Return instance
	instance.name = "hero"
	instance.type = "hero"
  return instance
end -- End of module

return M
