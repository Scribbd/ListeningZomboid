SoundManager = {}

function SoundManager:new(ZomboidSounds)
	local object = {ZomboidSounds = ZomboidSounds}
	setmetatable(object, {__index = SoundManager})
	return object
end

function SoundManager:findActiveSounds()
	local activeList = {}


end
