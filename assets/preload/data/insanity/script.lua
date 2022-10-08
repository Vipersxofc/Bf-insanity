
local defaultNotePos = {};
local spin = false;
local arrowMoveX = 10;
local arrowMoveY = 10;

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})
    end
	end
function onUpdatePost(elapsed)
  songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 1000) * (bpm / 60)
 
    if spin == true then 
        for i = 4,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + arrowMoveX * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
        end
    end
	end

function onStartCountdown()
doTweenAngle('ids','healthBar', 90, 1, linear)
doTweenX('id','healthBar', -180, 1, elasticInOut)
doTweenY('i','healthBar', 350, 1, elasticInOut)

setProperty('iconP1.alpha', 0)
setProperty('health', 2)

return Function_Continue;
end

function onUpdate()
for i=0,3 do
noteTweenAlpha(i+16, i, 0, 0.0000001)

   end 
end