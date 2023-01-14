local CoreGui = game.CoreGui

local function DestroyGui()
    CoreGui.PPHUD:Destroy()
end

if CoreGui:FindFirstChild("PPHUD") then
    DestroyGui()
end

local Ids = {
    2130133874,
    2130133875,
    2130133876,
    2130133878,
    2130133880,
    2130133882,
    2130133883,
    2130133884,
    2130133885,
    2130133886,
    2130133918,
    2130133920,
    2130133922,
    2130133923,
    2130133927,
    2130133928,
    2130133929,
    2130133930,
    2130133932,
    2130133933,
    2130133934,
    2130133936,
    2130133937,
    2130133939,
    2130134848,
    2130134992,
    2130135382,
    2130166080,
    2130220383,
    2130251024
}

local function GetAllBadges()

for i,v in pairs(Ids) do

local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").RemoteEvents.ClientToServer.giveBadge:FireServer(unpack(args))

    end
end

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/PPHub/main/Lib.lua'))()
local Flags = Library.Flags

local Window = Library:Window({
  Text = "Console"
})

local Tab = Window:Tab({
   Text = "Home"
})

local Section1 = Tab:Section({
    Text = "About",
    Side = "Left"
})

Section1:Label({
    Text = "Credits: nae & torvelis",
    Color = Color3.fromRGB(255,255,255)
})

Section1:Label({
    Text = "Menu Toggle: Right Control",
    Color = Color3.fromRGB(255,255,255)
})

Section1:Button({
   Text = "Copy Discord link",
   Callback = function()
       setclipboard("discord.gg/QzgbdcXYaP")
   end
})

local Tab2 = Window:Tab({
   Text = "Main"
})

local Section1 = Tab2:Section({
    Text = "Main",
    Side = "Left"
})

Section1:Button({
    Text = "Get all badges",
    Callback = GetAllBadges
})    

Section1:Button({
    Text = "Get all Money",
    Callback = function()
        for i,v in pairs(game:GetService("Workspace").Money:GetChildren()) do
            if v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector, 8)
        end
    end
end
}) 

local Section1p = Tab2:Section({
    Text = "Player",
    Side = "Left"
})

Section1p:Slider({
    Text = "WalkSpeed",
    Minimum = 16,
    Default = 16,
    Maximum = 200,
    Callback = function(S)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
    end
})

Section1p:Slider({
    Text = "JumpPower",
    Minimum = 50,
    Default = 50,
    Maximum = 200,
    Callback = function(S)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = S
    end
})

local Section2 = Tab2:Section({
    Text = "Teleport",
    Side = "Right"
})

Section2:Button({
    Text = "Stuff Shop",
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-239.557297, 35.9533882, 126.417229, -0.999847531, 3.76675722e-08, -0.0174624771, 3.87574133e-08, 1, -6.20719476e-08, 0.0174624771, -6.27392822e-08, -0.999847531)
end
})

Section2:Button({
    Text = "Groceries Shop",
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207.514969, 35.9533882, 26.884676, 0.999763191, 2.2021112e-08, 0.0217626188, -2.16977529e-08, 1, -1.50945727e-08, -0.0217626188, 1.46187986e-08, 0.999763191)
end
})
Tab:Select()
