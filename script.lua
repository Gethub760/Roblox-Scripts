local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local HttpService = game:GetService('HttpService')

local screenGui = Instance.new('ScreenGui')
local mainFrame = Instance.new('Frame')
local draggable = Instance.new('TextButton')
local countryDropdown = Instance.new('TextButton')
local hopButton = Instance.new('TextButton')

--UI Properties
screenGui.Name = 'ServerHopper'
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
mainFrame.Parent = screenGui

--Draggable UI
local dragging
local dragInput
local dragStart
local startPos

draggable.Size = UDim2.new(1, 0, 0, 50)
draggable.BackgroundColor3 = Color3.new(0, 0.5, 0)
draggable.Text = 'Drag Me'
draggable.Parent = mainFrame

draggable.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		startPos = mainFrame.Position
		dragStart = input.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

--Country Selection Dropdown
countryDropdown.Size = UDim2.new(1, 0, 0, 50)
countryDropdown.BackgroundColor3 = Color3.new(0, 0, 1)
countryDropdown.Text = 'Select Country'
countryDropdown.Parent = mainFrame

countryDropdown.MouseButton1Click:Connect(function()
	local countries = {'US', 'UK', 'AU', 'CA'} -- Add more countries as needed
	local country = game:GetService('HttpService'):JSONEncode(countries)
	print('Available Countries: ' .. country)
	-- Here you would implement the dropdown menu logic
end)

--Server Hop Button
hopButton.Size = UDim2.new(1, 0, 0, 50)
hopButton.BackgroundColor3 = Color3.new(0, 1, 0)
hopButton.Text = 'Hop to Server'
hopButton.Parent = mainFrame

hopButton.MouseButton1Click:Connect(function()
	-- Implement server hopping functionality
	print('Hopping to selected server...')
end)

screenGui.Parent = Players.LocalPlayer:WaitForChild('PlayerGui')