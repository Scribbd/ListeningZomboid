require("./ListeningZomboid/IndicatorManager.lua")

ListeningZomboid = {}

--Options
defaultKey = Keyboard.KEY_L

--Just for good practice
function ListeningZomboid:new()
	local soundHelper = soundHelper:new(getCore().getWorldSoundManager()) -- <<Wont work for obvious reasons!
	local object = {IndicatorManager = IndicatorManager(soundHelper)}
	setmetatable(object, {__index = ListeningZomboid})
	return object
end

function ListeningZomboid:mutateIndicator()
	if(isKeyDown(defaultKey)) then
		--renew coordinates
		IndicatorManager:renew()
		--get ui elements
		self:drawIndicator()
		--Temp... Just print the values
		print("SoundOrigin: x y z :", )
	end
	IndicatorManager:fadeIndicators()
end

function ListeningZomboid:drawIndicator()
	--Get essentials
	local background = getTexture("media/ui/ListeningZomboid/background.png")
	local core = getCore()
	--Calculate center
	local posX = (core:getScreenWidth() - background:getWidth()) / 2
	local posY = (core:getScreenHeight() - background:getHeight()) / 2
	--render
	background:render(posx, poxy)
	--render indicators
	IndicatorManager:renderIndicators()
end

ListeningZomboid = ListeningZomboid:new()
Events.onTick.Add(ListeningZomboid:mutateIndicator())

