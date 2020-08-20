local counter = 1
local currentXP = GetUnitXP('player')

function AddonUpdate()
    AddonCounter:SetText(string.format("Counter: %d", counter))
    counter = counter + 1
end

function AddOnReset()
    counter = 0

function Addon_OnInitialized(self)
  self:RegisterForEvent(EVENT_EXPERIENCE_UPDATE, OnXPUpdate)
  EVENT_MANAGER:RegisterForEvent("MyAddon", EVENT_EXPERIENCE_UPDATE, OnXPUpdate)

function OnXPUpdate( eventCode, unitTag, currentExp, maxExp, reason )
       if ( unitTag ~= 'player' ) then return end
       local XPgain = currentExp - MyAddon.currentXP
       d("You gained " .. XPgain .. " experience.")
       MyAddon.currentXP = currentExp
end
