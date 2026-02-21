--[[
-- Trollge Universe Incident Script
-- This script includes a loading screen, draggable UI, auto farm chest, staff detection, and anti-ban features.
--]]

-- Variables
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local loadingFrame = Instance.new("Frame")
local uiElement = Instance.new("Frame")
local autoFarmEnabled = true -- Toggle for auto farming

-- Function to create loading screen
local function createLoadingScreen()
    loadingFrame.Size = UDim2.new(1, 0, 1, 0)
    loadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    loadingFrame.Parent = screenGui

    local loadingLabel = Instance.new("TextLabel")
    loadingLabel.Size = UDim2.new(1, 0, 0.1, 0)
    loadingLabel.Position = UDim2.new(0, 0, 0.45, 0)
    loadingLabel.Text = "Loading..."
    loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    loadingLabel.Parent = loadingFrame
end

-- Function to create draggable UI
local function createDraggableUI()
    uiElement.Size = UDim2.new(0.3, 0, 0.3, 0)
    uiElement.Position = UDim2.new(0.5, -150, 0.5, -150)
    uiElement.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    uiElement.Parent = screenGui

    local dragStart
    local startPos

    local function updateInput(input)
        local delta = input.Position - dragStart
        uiElement.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    uiElement.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragStart = input.Position
            startPos = uiElement.Position
            input.Changed:Wait()
            while input.UserInputState == Enum.UserInputState.Begin do
                updateInput(input)
                wait()
            end
        end
    end)
end

-- Function to auto farm chests
local function autoFarmChest()
    while autoFarmEnabled do
        -- Example of finding and claiming a chest
        local chest = game.Workspace:FindFirstChild("Chest")
        if chest then
            player.Character.HumanoidRootPart.CFrame = chest.CFrame
            wait(1) -- Wait time to collect
        end
        wait(2) -- Wait before next attempt
    end
end

-- Function to detect staff
local function detectStaff()
    -- Example staff detection logic
    game.Players.PlayerAdded:Connect(function(newPlayer)
        if newPlayer.UserId == 123456789 then -- Example user ID for staff
            print("Staff detected: " .. newPlayer.Name)
        end
    end)
end

-- Anti-ban feature example
local function antiBan()
    -- Code to evade detection with random actions
    while true do
        wait(math.random(5, 15)) -- Random wait
        -- Add more evasion logic here
    end
end

-- Main script entry point
createLoadingScreen()
createDraggableUI()
autoFarmChest()
detectStaff()
antiBan()

-- Finalize loading screen
loadingFrame:Destroy() -- Dismiss the loading screen

screenGui.Parent = player:WaitForChild("PlayerGui")