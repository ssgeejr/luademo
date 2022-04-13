
local gabe_money = 0
local oreo_cost = 0
local change = 0;
local amount = 0;

oreo_cost = 2.92
gabe_money = 15.18

-- oreo_cost = oreo_cost * 1.085

while(gabe_money >= oreo_cost) do

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