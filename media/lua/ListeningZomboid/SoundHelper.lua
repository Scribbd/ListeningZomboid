-- Actually a helper for IndicatorManager to reach out for the soundsystem in project
-- zomboid.

SoundManager = {}

function SoundManager:new(ZomboidSounds)
	local object = {ZomboidSounds = ZomboidSounds}
	setmetatable(object, {__index = SoundManager})
	return object
end

function SoundManager:findActiveSounds()
	local activeList =
end
