local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sus = false

local function toggleSus()
    sus = not sus
    if sus then
        print("Freeze Spammer is enabled")
        while sus do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Freeze"):FireServer()
            wait()
        end
    else
        print("Freeze Spammer  is disabled")
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.B then
        toggleSus()
    end
end)
