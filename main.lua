-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: April 19th 2018
-----------------------------------------------------------------------------------------
local dPad = display.newImage( "./assets/sprites/d-pad.png" )
dPad.x = 150
dPad.y = display.contentHeight - 140
dPad.id = "d-pad"

local upArrow = display.newImage( "./assets/sprites/upArrow.png" )
upArrow.x = 150
upArrow.y = display.contentHeight - 250
upArrow.id = "up arrow"

local downArrow = display.newImage( "./assets/sprites/downArrow.png" )
downArrow.x = 150
downArrow.y = display.contentHeight - 30
downArrow.id = "down arrow"

local rightArrow = display.newImage( "./assets/sprites/rightArrow.png" )
rightArrow.x = 260
rightArrow.y = display.contentHeight - 142
rightArrow.id = "right arrow"

local leftArrow = display.newImage( "./assets/sprites/leftArrow.png" )
leftArrow.x = 43
leftArrow.y = display.contentHeight - 142
leftArrow.id = "left arrow"

local ninjaDeidara = display.newImage( "./assets/sprites/Deidara.png" )
ninjaDeidara.x = display.contentCenterX
ninjaDeidara.y = display.contentCenterY
ninjaDeidara.id = "the character"
 
function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( ninjaDeidara, { x = 0, y = -50, time = 100} )
    end

    return true
end

upArrow:addEventListener( "touch", upArrow )

function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( ninjaDeidara, { x = 0, y = 50, time = 100} )
    end

    return true
end

downArrow:addEventListener( "touch", downArrow )

function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( ninjaDeidara, { x = 50, y = 0, time = 100} )
    end

    return true
end

rightArrow:addEventListener( "touch", rightArrow )

function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        transition.moveBy( ninjaDeidara, { x = -50, y = 0, time = 100} )
    end

    return true
end

leftArrow:addEventListener( "touch", leftArrow )