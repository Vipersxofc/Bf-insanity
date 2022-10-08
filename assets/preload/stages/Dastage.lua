function onCreate()
    addCharacterToList('BF_CAIDA')
	addCharacterToList('BF_MIRROR')
	addCharacterToList('BF_DANS')
	addCharacterToList('ran_ran_ru')
	addCharacterToList('invi')
	precacheImage('PARQUE')
	precacheImage('MIRROR')
	precacheImage('dans_bg')
	precacheImage('newgrounds')
	precacheImage('fondo_ran_ran_ru')
	precacheImage('blackbg')
	
    makeLuaSprite('PARQUE', 'PARQUE', -150, -50)
    addLuaSprite('PARQUE', false)
	setLuaSpriteScrollFactor('PARQUE', 0.2, 0.2)
	scaleObject('PARQUE', 1, 1);
	
	makeLuaSprite('newgrounds', 'newgrounds', 300, 0)
    addLuaSprite('newgrounds', true)
	setLuaSpriteScrollFactor('newgrounds', 0.2, 0.2)
	scaleObject('newgrounds', 0.8, 0.8);
	
	makeLuaSprite('MIRROR', 'MIRROR', -120, -100)
    addLuaSprite('MIRROR', false)
	setLuaSpriteScrollFactor('MIRROR', 0.2, 0.2)
	scaleObject('MIRROR', 1, 1);	
	
	makeLuaSprite('dans_bg', 'dans_bg', -150, -200)
    addLuaSprite('dans_bg', false)
	setLuaSpriteScrollFactor('dans_bg', 0.2, 0.2)
	scaleObject('dans_bg', 1.3, 1.3);
	
	makeLuaSprite('fondo_ran_ran_ru', 'fondo_ran_ran_ru', -150, -100)
    addLuaSprite('fondo_ran_ran_ru', false)
	setLuaSpriteScrollFactor('fondo_ran_ran_ru', 0.2, 0.2)
	scaleObject('fondo_ran_ran_ru', 2, 2);	
	
	makeLuaSprite('blackbg', 'blackbg', -200, -100)
    addLuaSprite('blackbg', true)
	setLuaSpriteScrollFactor('blackbg', 0.2, 0.2)
	scaleObject('blackbg', 2, 2);
		
		
setProperty('MIRROR.visible', false )
setProperty('dans_bg.visible', false)
setProperty('fondo_ran_ran_ru.visible', false)



setPropertyFromClass('ClientPrefs', 'middleScroll', true);

	
end

function onStartCountdown()
	setProperty('gf.alpha', 0)
    setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end


function onBeatHit()--for every beat


end

function onStepHit()
if curStep == 666 then
	    doTweenAlpha('ca', 'camHUD', 0, 0.3, 'linear');
		runTimer('ca')
	elseif curStep == 679 then
	    
		makeLuaSprite('ready', 'ready', 550, 500);
		addLuaSprite('ready', 'false');
		setObjectOrder('ready',12);
		runTimer('ready', 0);
	elseif curStep == 683 then
		makeLuaSprite('set', 'set', 550, 500);
		addLuaSprite('set', 'false');
		setObjectOrder('set',12);
		runTimer('set', 0);
	elseif curStep == 686 then
	   doTweenAlpha('a', 'camHUD', 1, 0.3, 'linear');
		makeLuaSprite('go', 'go', 650, 500);
		addLuaSprite('go', 'false');
		setObjectOrder('go',12);
		runTimer('go', 0);
	   
	end	
end
	
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ready' then	
		doTweenAlpha('readyfade', 'ready', 0, 0.3, 'linear');
	elseif tag == 'set' then	
		doTweenAlpha('twofade', 'set', 0, 0.3, 'linear');
	elseif tag == 'go' then	
		doTweenAlpha('onefade', 'go', 0, 0.3, 'linear');
		elseif tag == 'ca' then	
        cancelTween('ca')
	end
end


function onEvent(name, value1, value2)
	-- event note triggered
	-- triggerEvent() does not call this function!!
	if value1 == 'MIR' then
		 	setProperty('PARQUE.visible', false)
		  setProperty('MIRROR.visible', true)
		  setProperty('dans_bg.visible', false)
		  setProperty('fondo_ran_ran_ru.visible', false)
		  setProperty('newgrounds.visible', false)
		setProperty('boyfriendGroup.x', 450)
		setProperty('boyfriendGroup.y', -110 )
	
	end
	if value1 == 'dans' then
	    setProperty('PARQUE.visible', false)
		setProperty('MIRROR.visible', false)
		setProperty('dans_bg.visible', true)
		setProperty('newgrounds.visible', false)
		setProperty('fondo_ran_ran_ru.visible', false)
		setProperty('boyfriendGroup.x', 450)
		setProperty('boyfriendGroup.y', -100 )
	end
		if value1 == 'ran' then
		 	setProperty('PARQUE.visible', false)
		  setProperty('MIRROR.visible', false)
		  setProperty('dans_bg.visible', false)
		  setProperty('newgrounds.visible', false)
		  setProperty('fondo_ran_ran_ru.visible', true)
		setProperty('boyfriendGroup.x', 700)
		setProperty('boyfriendGroup.y', 350 )
	
	end
	if value1 == 'black' then
		 	setProperty('PARQUE.visible', false)
		  setProperty('MIRROR.visible', false)
		  setProperty('dans_bg.visible', false)
		  setProperty('newgrounds.visible', false)
		  setProperty('blackbg.visible', true)
		  setProperty('fondo_ran_ran_ru.visible', false)
		  setProperty('boyfriendGroup.visible', false)

	
	end
	if value1 == 'par' then
		 	setProperty('PARQUE.visible', true)
		  setProperty('MIRROR.visible', false)
		  setProperty('dans_bg.visible', false)
		  setProperty('fondo_ran_ran_ru.visible', false)
		  setProperty('newgrounds.visible', true)
		 setProperty('boyfriendGroup.visible', true)
		 setProperty('boyfriendGroup.y', 150 )
		 setProperty('boyfriendGroup.x', 700)
	
	end
end