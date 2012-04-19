require(./ListeningZomboid/IndicatorManager.lua)

ListeningZomboid = {}

--Options
defaultKey = Keyboard.KEY_L

--Just for good practice
function ListeningZomboid:new()
	local object = {SoundManager = SoundManager:new(), IndicatorManager = IndicatorManager()}
	setmetatable(object, {__index = ListeningZomboid})
	return object
end

function mutateIndicator()
	if(isKeyDown(defaultKey)) then
		IndicatorManager:renew()
		--Temp... Just print the values
		print("SoundOrigin: x y z :", )
	end
	IndicatorManager:fadeIndicators()
end


Events.onTick.Add(mutateIndicator())

