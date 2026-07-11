-- Tạo ScreenGui
local sg = Instance.new("ScreenGui")
sg.Name = "LboydNotification"
sg.Parent = game:GetService("CoreGui") -- Chạy dưới CoreGui để tránh bị reset khi nhân vật chết

-- Tạo Bảng thông báo (Frame)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 100)
frame.Position = UDim2.new(0.5, -150, 0.5, -50) -- Căn giữa màn hình
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
frame.BackgroundTransparency = 0.05 -- Màu nền tối chỉn chu
frame.BorderSizePixel = 0
frame.Parent = sg

-- Bo góc cho bảng
local stroke = Instance.new("UIStroke")
stroke.Parent = frame
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(0, 255, 170) -- Viền xám đẹp
stroke.Transparency = 0.15
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Tạo dòng chữ hiển thị kênh TikTok
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.35, 0)
label.Position = UDim2.new(0, 0, 0.08, 0)
label.BackgroundTransparency = 1
label.Text = "TIKTOK:lboiyz"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 20
label.Parent = frame

-- Dòng chữ Follow
local followLabel = Instance.new("TextLabel")
followLabel.Size = UDim2.new(1, 0, 0.2, 0)
followLabel.Position = UDim2.new(0, 0, 0.43, 0)
followLabel.BackgroundTransparency = 1
followLabel.Text = "Nhớ ❤️ Tym Và Follow Cho Tui Nhá!"
followLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
followLabel.Font = Enum.Font.GothamSemibold
followLabel.TextSize = 14
followLabel.Parent = frame

-- Tạo dòng chữ đếm ngược thời gian
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(1, 0, 0.2, 0)
timerLabel.Position = UDim2.new(0, 0, 0.70, 0)
timerLabel.BackgroundTransparency = 1
timerLabel.Text = "Đang tải sau 5 giây..."
timerLabel.TextColor3 = Color3.fromRGB(0, 255, 128) -- Màu xanh lá nổi bật
timerLabel.Font = Enum.Font.Gotham
timerLabel.TextSize = 14
timerLabel.Parent = frame

-- Vòng lặp đếm ngược 5 giây
for i = 5, 1, -1 do
    timerLabel.Text = "Đang tải sau " .. i .. " giây..."
    task.wait(1)
end

-- Xóa bảng thông báo sau khi hết thời gian
sg:Destroy()

-- Khởi chạy Script của bạn
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/349171199feeb2b561597b018bf12e5d.lua"))()
