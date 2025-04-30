local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "BlueLockGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- กล่องพื้นหลัง
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 150)
frame.Position = UDim2.new(0.5, -200, 0.5, -75)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = gui

-- BLUE LOCK RIVER (เปลี่ยนเป็นปุ่ม)
local title = Instance.new("TextButton")
title.Size = UDim2.new(1, 0, 0.5, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- กำหนดสีพื้นหลังเพื่อให้กดได้
title.Text = "BLUE LOCK RIVER"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.Parent = frame

-- BASKETBALL ZERO (ด้านล่าง และคลิกได้)
local choice = Instance.new("TextButton")
choice.Size = UDim2.new(1, 0, 0.5, 0)
choice.Position = UDim2.new(0, 0, 0.5, 0)
choice.BackgroundTransparency = 1
choice.Text = "BASKETBALL ZERO"
choice.TextColor3 = Color3.fromRGB(0, 255, 255)
choice.Font = Enum.Font.SourceSans
choice.TextScaled = true
choice.Parent = frame

-- เมื่อกด BASKETBALL ZERO ให้รันสคริปต์จาก URL แล้วลบ GUI
choice.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xantadrun/Basketball-/refs/heads/main/Basketball.lua"))()
    end)

    if not success then
        warn("เกิดข้อผิดพลาดในการรันสคริปต์: " .. result)
    else
        print("สคริปต์ทำงานสำเร็จ")
    end

    gui:Destroy()
end)

-- เมื่อกด BLUE LOCK RIVER ให้รันสคริปต์จาก URL
title.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        loadstring(game:HttpGet("https://pastefy.app/cTOZBSvi/raw"))()
    end)

    if not success then
        warn("เกิดข้อผิดพลาดในการรันสคริปต์: " .. result)
    else
        print("สคริปต์ทำงานสำเร็จ")
    end

    gui:Destroy()
end)
