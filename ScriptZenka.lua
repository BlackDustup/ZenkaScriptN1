-- Настройки
local TEXT_MESSAGE = "ТИМА ПОПА"
local BG_COLOR = Color3.fromRGB(0, 0, 0)
local TEXT_COLOR = Color3.fromRGB(255, 255, 255)

-- Получаем LocalPlayer
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Удаляем предыдущую копию, если скрипт запускался повторно
local existing = playerGui:FindFirstChild("TimaPopaOverlay")
if existing then
    existing:Destroy()
end

-- Создаём оверлей
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TimaPopaOverlay"
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 100
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(1, 1)
frame.BackgroundColor3 = BG_COLOR
frame.BorderSizePixel = 0
frame.Parent = screenGui

local label = Instance.new("TextLabel")
label.Size = UDim2.fromScale(1, 1)
label.BackgroundTransparency = 1
label.Text = TEXT_MESSAGE
label.TextColor3 = TEXT_COLOR
label.Font = Enum.Font.GothamBold
label.TextScaled = true
label.Parent = frame

print("[+] ТИМА ПОПА активирован")
