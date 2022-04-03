clock = os.clock
local var1 = clock()
local var2 = 0
local safety_stop = 0;
while (var2 < 3) 
do
  print('wat!!!')
  var2 = clock() - var1
  print(var2)
  safety_stop = safety_stop + 1
  print("safety_stop: ", safety_stop)
  if safety_stop > 3 then
    var2 = 4
  end
  
    
end



#-------------------------------------

local var1 = 0

while (var1 < 4) 
do
  print('wat!!!')
  var1 = var1 + 1
  print('var1: ', var1)
end

#-------------------------------------


workspace.brick1.BrickColor = BrickColor.new(41)

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		script.Parent.BrickColor = BrickColor.new(23)
	end
	
end)


#-------------------------------------



local gabe_money = 0
local oreo_cost = 0
local change = 0;
local amount = 0;

oreo_cost = 2.92
gabe_money = 14.6

while(gabe_money > oreo_cost) do
  if (gabe_money >= oreo_cost) then 
    print('ok to buy')
    if (gabe_money > oreo_cost ) then
      change = gabe_money - oreo_cost
    end
  else
    print('not ok to buy')
  end
  gabe_money = gabe_money - oreo_cost
  amount = amount + 1
end

print('AMOUNT: ', amount, ' & CHANGE: ', gabe_money)


#-------------------------------------

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
	door.Transparency = 0.1
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