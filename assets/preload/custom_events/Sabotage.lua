function onEvent(n,v1,v2)
	if n == 'Sabotage' then --Nes
	   makeLuaSprite('sabotage', '', 0, 0);
        makeGraphic('sabotage',1280,720,'FE1415')
	      addLuaSprite('sabotage', true);
	      setLuaSpriteScrollFactor('sabotage',0,0)
	      setObjectCamera('sabotage', 'other');
	      setProperty('sabotage.scale.x',2)
	      setProperty('sabotage.scale.y',2)
	      setProperty('sabotage.alpha',0)
		setProperty('sabotage.alpha',0.3)
		doTweenAlpha('flTw','sabotage',0,0.38,'linear')
	end
end
