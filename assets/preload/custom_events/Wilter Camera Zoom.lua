-- Event notes hooks


timesCount = 0;
function onEvent(name, value1, value2)
	if name == "Wilter Camera Zoom" then
		newTargetZoom = tonumber(value1);
		setProperty('camGame.zoom', newTargetZoom * 1.05);
		doTweenZoom('wilterCamTween', 'camGame', newTargetZoom, 0.7, 'elasticOut');
		timesCount = timesCount + 1;
		spawnTrail('BF');
		spawnTrail('Dad');
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)

	cancelTween('wilterCamTween');
	
end

