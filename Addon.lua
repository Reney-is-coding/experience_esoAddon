local counter = 1

function AddonUpdate()
    AddonCounter:SetText(string.format("Counter: %d", counter))
    counter = counter + 1
end

function AddOnReset()
    counter = 0
end
