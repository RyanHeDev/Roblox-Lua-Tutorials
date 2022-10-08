--[[
INSTRUCTIONS TO FOLLOW BY TAB:
make this:
https://ibb.co/7GDYXKx

make a door group -> door model -> sounds inside the door call 1 door_close other door_open 
then add an attachement call it the then add proximityprompt call it prox then make a script inside
and call it opened make 2 parts called moveto1 and moveto2 and weld them

]]

-- Script by Tab

door = script.Parent.Parent.Parent -- the door
opened = false --is the door opened?
debinseconds = 1.2 --cooldown seconds
debounce = false --the cooldown itself
function openorcloseidklololol() --function
	if opened == false and not debounce then --checking if door is closed and no cooldown
		opened = true --door is now opened
		debounce = true --enabling cooldown so no spam
		game.TweenService:Create(door,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0), {CFrame = door.Parent.moveto2.CFrame}):Play() --tweenservice gmaing
		door.door_open:Play() --plays the door open sound
		wait(debinseconds) --i cant explain
		debounce = false --disabling cooldown
	elseif opened == true and not debounce then --else if door is opened and no cooldown
		opened = false --door is now closed
		debounce = true --enabling cooldown so no spam x2
		game.TweenService:Create(door,TweenInfo.new(0.8,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,0), {CFrame = door.Parent.moveto1.CFrame}):Play() --tweenservice gmaing x2
		door.door_close:Play() --plays the door close sound
		wait(debinseconds) --i cant explain x2
		debounce = false --disabling cooldown
	end
end
script.Parent.Triggered:Connect(openorcloseidklololol) --if proximityprompt is triggered then the function activates
