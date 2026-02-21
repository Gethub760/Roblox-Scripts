-- Infinityfield.lua

-- Admin Panel Script for Roblox
-- Inspired by Infinite Yield

local AdminPanel = {} -- Table to hold the Admin Panel

-- Function to create GUI
function AdminPanel:CreateGUI()
    local ScreenGui = Instance.new('ScreenGui')
    local MainFrame = Instance.new('Frame')
    local CommandInput = Instance.new('TextBox')
    local SubmitButton = Instance.new('TextButton')
    
    -- GUI Setup
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
    MainFrame.Parent = ScreenGui
    MainFrame.Size = UDim2.new(0.4, 0, 0.4, 0)
    MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
    
    CommandInput.Parent = MainFrame
    CommandInput.Size = UDim2.new(1, 0, 0.2, 0)
    CommandInput.Position = UDim2.new(0, 0, 0.1, 0)
    
    SubmitButton.Parent = MainFrame
    SubmitButton.Size = UDim2.new(1, 0, 0.2, 0)
    SubmitButton.Position = UDim2.new(0, 0, 0.3, 0)
    SubmitButton.Text = 'Submit'
    
    SubmitButton.MouseButton1Click:Connect(function()
        self:ExecuteCommand(CommandInput.Text)
        CommandInput.Text = '' -- Clear input after submission
    end)
end

-- Command execution function
function AdminPanel:ExecuteCommand(command)
    -- Add command handling logic here
    if command == 'kill' then
        game.Players.LocalPlayer.Character:BreakJoints()
    elseif command == 'fly' then
        -- Implement fly command
        print('Flying activated!') -- Placeholder for fly functionality
    else
        print('Command not recognized')
    end
end

-- Initialize the Admin Panel
function AdminPanel:Init()
    self:CreateGUI()
end

-- Run the Admin Panel
AdminPanel:Init()