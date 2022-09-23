function onUpdatePost()
	strumPlayAnim(0, 'static', true, 10000)
	strumPlayAnim(1, 'static', true, 10000)
	strumPlayAnim(2, 'static', true, 10000)
	strumPlayAnim(3, 'static', true, 10000)
end

function strumPlayAnim(id, anim, forced, resetTime)

	if resetTime == nil then resetTime = 0 end
	if forced == nil then forced = false end
	
	--resets the animation
	if forced == true then
		setPropertyFromGroup('strumLineNotes', id, 'animation.curAnim.curFrame', 0)
	end
	
	setPropertyFromGroup('strumLineNotes', id, 'animation.name', anim) --play animation
	setPropertyFromGroup('strumLineNotes', id, 'resetAnim', resetTime)
	
	--center offsets and origins
	setPropertyFromGroup('strumLineNotes', id, 'origin.x', getPropertyFromGroup('strumLineNotes', id, 'frameWidth') / 2)
	setPropertyFromGroup('strumLineNotes', id, 'origin.y', getPropertyFromGroup('strumLineNotes', id, 'frameHeight') / 2)
	setPropertyFromGroup('strumLineNotes', id, 'offset.x', (getPropertyFromGroup('strumLineNotes', id, 'frameWidth') - getPropertyFromGroup('strumLineNotes', id, 'width')) / 2)
	setPropertyFromGroup('strumLineNotes', id, 'offset.y', (getPropertyFromGroup('strumLineNotes', id, 'frameHeight') - getPropertyFromGroup('strumLineNotes', id, 'height')) / 2)

end