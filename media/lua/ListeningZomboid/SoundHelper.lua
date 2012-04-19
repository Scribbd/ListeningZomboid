require("Indicator")
-- A helper for IndicatorManager to reach out for the soundsystem in project
-- zomboid. And calculate the right coordinates.

SoundHelper = {}

function SoundHelper:new(ZomboidSounds)
	local object = {ZomboidSounds = ZomboidSounds}
	setmetatable(object, {__index = SoundHelper})
	return object
end

function SoundHelper:findActiveSounds()
	local activeList -- = --What gets me the list?
	local indicators = {}
	for i, sound in ipairs(activeList) do
		local player = getPlayer()
		--transformed coordinates
		local tX = sound.x - player.x
		local tY = sound.y - player.y
		local tZ = sound.z - player.z
		--letz zhe trazformatzion prozzez commenze
		local r = math.sqrt(tX^2 + tY^2 + tZ^2)
		local rot = math.deg(math.atan2(tY,tX))
		-- Not needed for now.
		-- local inc = math.acos(tY/tZ)

		--calculate the inaccuracy
		local inaccuracy = 1

		--calculate transparency
		local transparency = 100

		--Insert sound
		table.insert(indicators, nil, Indicator:new(rot, inaccuracy, transparency))
	end

	return indicators
end
