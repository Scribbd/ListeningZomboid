require(SoundManager)
require(Indicator)

IndicatorManager = {}

function IndicatorManager:new()
	local object = {indicatorList = {}}
	setmetatable(object, {__index = IndicatorManager})
	return object
end

--function to show indictor on the UI
function IndicatorManager:showIndicator()

end

--function to add an indicator to the list
function IndicatorManager:addIndicator(indicator)
	table.insert(self.indicatorList, indicator)
end

--function to renew the
function IndicatorManager:renew()
	for i, indicator in ipairs(self.indicatorList) do

	end
end

--function to fade all indicators with one iteration
function IndicatorManager:fadeIndicators()
	for i, indicator in ipairs(self.indicatorList) do
			indicator:fade()
			if not indicator:isVissible() then
				table.remove(self.indicatorList, i)
			end
	end
end
