workspace.brick1.BrickColor = BrickColor.new(41)

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		print(script.Parent.BrickColor)
		if (script.Parent.BrickColor == BrickColor.new(41)) then
			script.Parent.BrickColor = BrickColor.new(23)
--			script.Parent.Transparency = 1
		else
			script.Parent.BrickColor = BrickColor.new(41)
		end
			
	end
	
end)


local door = script.Parent

local CursorId = "2287179355"
local ClickDetector = Instance.new("ClickDetector")
ClickDetector.Parent = door
ClickDetector.MaxActivationDistance = 10
ClickDetector.CursorIcon = "rbxassetid://"..CursorId

ClickDetector.MouseHoverEnter:Connect(function()
	door.Transparency = 0.5
end)

ClickDetector.MouseHoverLeave:Connect(function()
	door.Transparency = 0
end)

ClickDetector.MouseClick:Connect(function()
	if (script.Parent.BrickColor == BrickColor.new(41))
	then
		script.Parent.BrickColor = BrickColor.new(23)
	else
		script.Parent.BrickColor = BrickColor.new(41)
	end
end)

ClickDetector.RightMouseClick:Connect(function()
	script.Parent.BrickColor = BrickColor.new(104)
end)
