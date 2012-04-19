

Indicator = {}

local fadeStep = 1

function Indicator:new(angle, inaccuracy, transparency)
	local object = {angle = angle, inaccuracy = inaccuracy, transparency = transparency}
	setmetatable(object, {__index = Indicator})
	return object
end

--Fade indicator by one fadeStep
function Indicator:fade()
	if self:isVisible() then
		self.transparency = self.transparency - fadeStep
	end
end

--Checks if indicator is still visible for now linear.
function Indicator:isVisible()
	return self.transparency <= 0
end
