Indicator = {}

function Indicator:new(angle, inaccuracy, transparency)
	local object = {angle = angle, inaccuracy = inaccuracy, transparency = transparency}
	setmetatable(object, {__index = Indicator})
	return object
end
