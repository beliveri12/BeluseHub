local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local tower = Workspace:FindFirstChild("tower")
local HumanoidRootPart = Players.LocalPlayer.LocalPlayer.Character.HumanoidRootPart
local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport

function Win()
    HumanoidRootPart.CFrame = tower.finishes:FindFirstChild("Finish").CFrame
end

spawn(function()
    while wait() do
        Win()
    end
end)

Players.LocalPlayer.OnTeleport:Connect(function(teleportState)
    if teleportState == Enum.TeleportState.Started then
        if queueteleport then
            queueteleport("loadstring(game:HttpGet(''))()")
        end
    end
end)
