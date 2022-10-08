function onCreatePost()
	setProperty('scoreTxt.visible', false);
	makeLuaText('ScoreTxt', 'Score:'..getProperty('songScore'), 0, getProperty('healthBarBG.x') / 0.414, getProperty('healthBarBG.y') + 38);
    setTextBorder('ScoreTxt', 2, '000000');
    setTextAlignment('ScoreTxt', 'right');
    setTextSize('ScoreTxt', 20);
    setObjectCamera('ScoreTxt', 'hud');
    addLuaText('ScoreTxt');
end

function onUpdate()
	setTextString('ScoreTxt', 'Score:'..getProperty('songScore'))
end