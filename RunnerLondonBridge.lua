local Library = 
loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window_1 = Library:NewWindow("London Bridge")

local Tab1 = Window_1:NewSection("Main")


Tab1:CreateToggle("Auto Run", function(value)
_G.Run = value
    while wait() do
      if _G.Run == false then break end
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.BridgeService.RF.Action:InvokeServer("Start")
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.BridgeService.RF.Action:InvokeServer("Finish")
    end
end)

Tab1:CreateToggle("Auto Buy", function(value)
_G.Buy = value
    while wait() do
      if _G.Buy == false then break end
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.SpeedService.RF.Purchase:InvokeServer("SpeedPurchase3")
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.SpeedService.RF.Purchase:InvokeServer("BridgePurchase3")
    end
end)

Tab1:CreateToggle("Auto Rebirth", function(value)
_G.Rb = value
    while wait() do
      if _G.Rb == false then break end
      game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.RebirthService.RF.Rebirth:InvokeServer()
    end
end)

Tab1:CreateButton("Infinite Gems", function()
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("kumarion_knit-rojo@0.2.0"):FindFirstChild("knit-rojo").Services.EggService.RF.Egg:InvokeServer("Open",{"DesertEgg",-99999999999})
end)
