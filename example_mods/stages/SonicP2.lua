function onCreate()
	-- get the fuck out
	
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');

	makeLuaSprite('YCR_sky', 'SonicP2/sky', -1000, -500);
	makeLuaSprite('fakebg', 'SonicP2/omgfake', -1000, -1000);
	makeLuaSprite('YCR_Grass', 'SonicP2/Grass', -550, -150)
	makeLuaSprite('YCR_trees', 'SonicP2/trees', -550, -150)
	makeLuaSprite('YCR_TreesFront', 'SonicP2/TreesFront', -550, -150)
	makeLuaSprite('YCR_GrassBack', 'SonicP2/GrassBack', -550, -250)
	makeLuaSprite('YCR_TopOverlay', 'SonicP2/TopOverlay', -550, -150)
	scaleObject('YCR_sky', 2.0, 2.0);
	scaleObject('fakebg', 2.0, 2.0);
	setScrollFactor('YCR_sky', 0.9, 0.9);
	setScrollFactor('YCR_backtrees', 1.05, 1.0);
	setScrollFactor('YCR_trees', 1.025, 1.0);
	setProperty('fakebg.antialiasing', true);
	setProperty('YCR_sky.antialiasing', true);
	setProperty('p3_Stats.antialiasing', true);
	setProperty('YCR_backtrees.antialiasing', true);
	setProperty('YCR_floor.antialiasing', true);
	setProperty('YCR_trees.antialiasing', true);
	
	addLuaSprite('YCR_sky', false)
	addLuaSprite('YCR_GrassBack', false)
	addLuaSprite('YCR_trees', false)
	addLuaSprite('YCR_Grass', false)
	addLuaSprite('YCR_TopOverlay', false)
	addLuaSprite('YCR_TreesFront', false)
	addLuaSprite('fakebg', false)
	setProperty('fakebg.visible', false);
end

function onStepHit()
	if curStep == 527 then
		setProperty('fakebg.visible', true);
	end
	if curStep == 782 then
		setProperty('fakebg.visible', false);
	end
end
