IndicatorManager = {}

local

IndicatorManager.new = function(UIManager)
	local object = {IndicatorList = {}}
	setmetatable(object, {__index = IndicatorManager})
	return object
end
