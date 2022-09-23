-- Event notes hooks
function onEvent(name, value1, value2)
    local var string = (value1)
    if name == "text" then
        removeLuaText('yappin', true)
        makeLuaText('yappin', 'I cant give up', 700, 290, 550)
        setTextString('yappin',  '' .. string)
        setTextFont('yappin', 'vcr.ttf')
        setTextColor('yappin', 'ffffff')
        setTextSize('yappin', 35);
        addLuaText('yappin')
        setTextAlignment('yappin', 'center')
        setObjectCamera("yappin", 'hud');
        --removeLuaText('yappin', true)
        if value2 == 'true' then
            setTextColor('yappin', 'ff0000')
        end
    end
end