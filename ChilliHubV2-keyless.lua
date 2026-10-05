-- [[ UI GET KEY SCRIPT - MIRANDA HUB ]] --

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local parentUI = nil

local success, err = pcall(function()
    parentUI = CoreGui
end)

if not success or not parentUI then
    parentUI = LocalPlayer:WaitForChild("PlayerGui")
end

-- =========================================================
-- XÓA UI CŨ
-- =========================================================

if parentUI:FindFirstChild("orohub_GetKey") then
    parentUI["orohub_GetKey"]:Destroy()
end

-- =========================================================
-- GIẢI MÃ HEX
-- =========================================================

local function decode(hex)
    local str = ""

    for i = 1, #hex, 2 do
        str = str .. string.char(
            tonumber(string.sub(hex, i, i + 1), 16)
        )
    end

    return str
end

local enc_key =
    "4348494C4C4948554256322D34375A58445A"

local enc_link =
    "68747470733A2F2F6C696E6B346D2E6E65742F42734B5463375154"

local enc_script =
    "68747470733A2F2F7261772E67697468756275736572636F6E74656E742E636F6D2F726F6276787332342F667265656D69756D2F726566732F68656164732F6D61696E2F6368696C6C6968756276322E6C7561"

-- =========================================================
-- LINK PHỤ
-- =========================================================

local CommunityLink =
    "https://www.youtube.com/@BoydNhuyz"

local TikTokLink =
    "https://www.tiktok.com/@lboiyz"

-- =========================================================
-- SCREEN GUI
-- =========================================================

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "orohub_GetKey"
ScreenGui.Parent = parentUI
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- =========================================================
-- MAIN FRAME
-- =========================================================

local MainFrame = Instance.new("Frame")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui

-- MỞ RỘNG NHẸ
MainFrame.Size =
    UDim2.new(0, 460, 0, 380)

MainFrame.Position =
    UDim2.new(0.5, -230, 0.5, -190)

MainFrame.BackgroundColor3 =
    Color3.fromRGB(10, 7, 18)

MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner =
    Instance.new("UICorner")

MainCorner.CornerRadius =
    UDim.new(0, 10)

MainCorner.Parent =
    MainFrame

local UIStroke =
    Instance.new("UIStroke")

UIStroke.Thickness = 2
UIStroke.Transparency = 0

UIStroke.Parent =
    MainFrame

task.spawn(function()

    local hue = 0

    while MainFrame.Parent do

        task.wait(0.03)

        hue = (hue + 0.01) % 1

        UIStroke.Color =
            Color3.fromHSV(
                hue,
                0.8,
                1
            )

    end

end)

-- =========================================================
-- TITLE
-- =========================================================

local Title =
    Instance.new("TextLabel")

Title.Parent =
    MainFrame

Title.BackgroundTransparency = 1

Title.Position =
    UDim2.new(0.04, 0, 0.01, 0)

Title.Size =
    UDim2.new(0.65, 0, 0, 40)

Title.Text =
    "Lboyd KEY SYSTEM - Chilli Hub V2"

Title.TextColor3 =
    Color3.fromRGB(245, 245, 255)

Title.Font =
    Enum.Font.GothamBold

Title.TextSize = 15

Title.TextXAlignment =
    Enum.TextXAlignment.Left

-- =========================================================
-- LANGUAGE SYSTEM
-- =========================================================

local currentLang = "VI"

local Lang = {

    VI = {

        langButton = "🌐 VI",

        title =
            "Lboyd KEY SYSTEM - Miranda Hub",

        placeholder =
            "Nhập Key Tại Đây...",

        getKey =
            "🔗 LẤY LINK KEY",

        checkKey =
            "✔ KIỂM TRA KEY",

        status =
            "Chúc Các Bạn Trải Nghiệm Script Vui Vẻ",

        youtubeTitle =
            "BoiZ YouTube",

        youtubeDesc =
            "🟢 YouTube Chi Tiết Hack",

        tiktokTitle =
            "TikTok: @lboiyz",

        tiktokDesc =
            "🎵 Follow để nhận thêm Script",

        copy =
            "Copy",

        copied =
            "Đã Copy!",

        linkCopied =
            "ĐÃ SAO CHÉP LINK!",

        getKeyStatus =
            "🔗 Hãy dán link vào Google để lấy Key",

        successButton =
            "KÍCH HOẠT THÀNH CÔNG!",

        successStatus =
            "✅ Key chính xác! Đang kích hoạt...",

        wrongButton =
            "SAI KEY! VUI LÒNG THỬ LẠI",

        wrongStatus =
            "❌ Key không chính xác! Vui lòng kiểm tra lại.",

        description =
            "Các bạn lấy (Key) giúp mình có chi phí trang trải trong việc để duy trì và cập nhật script mỗi ngày. Chỉ mất vài phút mong các bạn đừng trách mắng và mong ủng hộ mình nhé... Chúc các bạn trải nghiệm script tốt nhất."

    },

    EN = {

        langButton = "🌐 EN",

        title =
            "Lboyd KEY SYSTEM - Miranda Hub",

        placeholder =
            "Enter Key Here...",

        getKey =
            "🔗 GET KEY LINK",

        checkKey =
            "✔ CHECK KEY",

        status =
            "Enjoy using the script!",

        youtubeTitle =
            "BoiZ YouTube",

        youtubeDesc =
            "🟢 Detailed Hack Videos",

        tiktokTitle =
            "TikTok: @lboiyz",

        tiktokDesc =
            "🎵 Follow for more Scripts",

        copy =
            "Copy",

        copied =
            "Copied!",

        linkCopied =
            "LINK COPIED!",

        getKeyStatus =
            "🔗 Paste the link into Google to get the Key",

        successButton =
            "ACTIVATED SUCCESSFULLY!",

        successStatus =
            "✅ Correct Key! Activating...",

        wrongButton =
            "WRONG KEY! TRY AGAIN",

        wrongStatus =
            "❌ Incorrect Key! Please check again.",

        description =
            "Getting the Key helps support the maintenance and daily updates of the script. It only takes a few minutes. Please support me and enjoy the best script experience!"

    }

}

-- =========================================================
-- LANGUAGE BUTTON
-- =========================================================

local LangButton =
    Instance.new("TextButton")

LangButton.Parent =
    MainFrame

LangButton.Position =
    UDim2.new(0.82, 0, 0.02, 0)

LangButton.Size =
    UDim2.new(0, 55, 0, 26)

LangButton.BackgroundColor3 =
    Color3.fromRGB(24, 19, 39)

LangButton.Text =
    Lang[currentLang].langButton

LangButton.TextColor3 =
    Color3.fromRGB(255, 255, 255)

LangButton.Font =
    Enum.Font.GothamBold

LangButton.TextSize = 12

local LangCorner =
    Instance.new("UICorner")

LangCorner.CornerRadius =
    UDim.new(0, 6)

LangCorner.Parent =
    LangButton

-- =========================================================
-- Ô NHẬP KEY
-- =========================================================

local KeyInput =
    Instance.new("TextBox")

KeyInput.Parent =
    MainFrame

KeyInput.Position =
    UDim2.new(0.02, 0, 0.115, 0)

KeyInput.Size =
    UDim2.new(0.96, 0, 0, 42)

KeyInput.BackgroundColor3 =
    Color3.fromRGB(24, 19, 39)

KeyInput.PlaceholderText =
    Lang[currentLang].placeholder

KeyInput.PlaceholderColor3 =
    Color3.fromRGB(130, 125, 145)

KeyInput.Text = ""

KeyInput.TextColor3 =
    Color3.fromRGB(230, 225, 245)

KeyInput.Font =
    Enum.Font.GothamMedium

KeyInput.TextSize = 13

KeyInput.ClearTextOnFocus = false

local KeyCorner =
    Instance.new("UICorner")

KeyCorner.CornerRadius =
    UDim.new(0, 7)

KeyCorner.Parent =
    KeyInput

local KeyStroke =
    Instance.new("UIStroke")

KeyStroke.Thickness = 1

KeyStroke.Color =
    Color3.fromRGB(45, 38, 65)

KeyStroke.Parent =
    KeyInput

-- =========================================================
-- NÚT LẤY LINK KEY
-- =========================================================

local GetKeyBtn =
    Instance.new("TextButton")

GetKeyBtn.Parent =
    MainFrame

GetKeyBtn.Position =
    UDim2.new(0.02, 0, 0.255, 0)

GetKeyBtn.Size =
    UDim2.new(0.47, -4, 0, 40)

GetKeyBtn.BackgroundColor3 =
    Color3.fromRGB(0, 220, 235)

GetKeyBtn.Text =
    Lang[currentLang].getKey

GetKeyBtn.TextColor3 =
    Color3.fromRGB(255, 255, 255)

GetKeyBtn.Font =
    Enum.Font.GothamBold

GetKeyBtn.TextSize = 13

local GetCorner =
    Instance.new("UICorner")

GetCorner.CornerRadius =
    UDim.new(0, 7)

GetCorner.Parent =
    GetKeyBtn

-- =========================================================
-- NÚT KIỂM TRA KEY
-- =========================================================

local SubmitBtn =
    Instance.new("TextButton")

SubmitBtn.Parent =
    MainFrame

SubmitBtn.Position =
    UDim2.new(0.51, 4, 0.255, 0)

SubmitBtn.Size =
    UDim2.new(0.47, -4, 0, 40)

SubmitBtn.BackgroundColor3 =
    Color3.fromRGB(38, 29, 62)

SubmitBtn.Text =
    Lang[currentLang].checkKey

SubmitBtn.TextColor3 =
    Color3.fromRGB(190, 185, 205)

SubmitBtn.Font =
    Enum.Font.GothamBold

SubmitBtn.TextSize = 13

local SubmitCorner =
    Instance.new("UICorner")

SubmitCorner.CornerRadius =
    UDim.new(0, 7)

SubmitCorner.Parent =
    SubmitBtn

-- =========================================================
-- STATUS
-- =========================================================

local StatusLabel =
    Instance.new("TextLabel")

StatusLabel.Parent =
    MainFrame

StatusLabel.Position =
    UDim2.new(0.02, 0, 0.39, 0)

StatusLabel.Size =
    UDim2.new(0.96, 0, 0, 38)

StatusLabel.BackgroundColor3 =
    Color3.fromRGB(20, 16, 31)

StatusLabel.Text =
    Lang[currentLang].status

StatusLabel.TextColor3 =
    Color3.fromRGB(180, 175, 195)

StatusLabel.Font =
    Enum.Font.GothamMedium

StatusLabel.TextSize = 12

StatusLabel.TextWrapped = true

local StatusCorner =
    Instance.new("UICorner")

StatusCorner.CornerRadius =
    UDim.new(0, 7)

StatusCorner.Parent =
    StatusLabel

-- =========================================================
-- YOUTUBE BOX
-- =========================================================

local CommunityFrame =
    Instance.new("Frame")

CommunityFrame.Parent =
    MainFrame

CommunityFrame.Position =
    UDim2.new(0.02, 0, 0.525, 0)

CommunityFrame.Size =
    UDim2.new(0.96, 0, 0, 49)

CommunityFrame.BackgroundColor3 =
    Color3.fromRGB(18, 14, 31)

local CommunityCorner =
    Instance.new("UICorner")

CommunityCorner.CornerRadius =
    UDim.new(0, 8)

CommunityCorner.Parent =
    CommunityFrame

local CommunityStroke =
    Instance.new("UIStroke")

CommunityStroke.Thickness = 1

CommunityStroke.Color =
    Color3.fromRGB(255, 0, 0)

CommunityStroke.Parent =
    CommunityFrame

local CommunityIcon =
    Instance.new("TextLabel")

CommunityIcon.Parent =
    CommunityFrame

CommunityIcon.BackgroundTransparency = 1

CommunityIcon.Position =
    UDim2.new(0.02, 0, 0.08, 0)

CommunityIcon.Size =
    UDim2.new(0, 30, 0, 30)

CommunityIcon.Text = "▶"

CommunityIcon.TextColor3 =
    Color3.fromRGB(255, 0, 0)

CommunityIcon.TextSize = 20

local CommunityTitle =
    Instance.new("TextLabel")

CommunityTitle.Parent =
    CommunityFrame

CommunityTitle.BackgroundTransparency = 1

CommunityTitle.Position =
    UDim2.new(0.12, 0, 0.08, 0)

CommunityTitle.Size =
    UDim2.new(0.55, 0, 0, 20)

CommunityTitle.Text =
    Lang[currentLang].youtubeTitle

CommunityTitle.TextColor3 =
    Color3.fromRGB(255, 255, 255)

CommunityTitle.Font =
    Enum.Font.GothamBold

CommunityTitle.TextSize = 12

CommunityTitle.TextXAlignment =
    Enum.TextXAlignment.Left

local CommunityDesc =
    Instance.new("TextLabel")

CommunityDesc.Parent =
    CommunityFrame

CommunityDesc.BackgroundTransparency = 1

CommunityDesc.Position =
    UDim2.new(0.12, 0, 0.48, 0)

CommunityDesc.Size =
    UDim2.new(0.55, 0, 0, 16)

CommunityDesc.Text =
    Lang[currentLang].youtubeDesc

CommunityDesc.TextColor3 =
    Color3.fromRGB(90, 230, 120)

CommunityDesc.Font =
    Enum.Font.Gotham

CommunityDesc.TextSize = 10

CommunityDesc.TextXAlignment =
    Enum.TextXAlignment.Left

local CommunityCopy =
    Instance.new("TextButton")

CommunityCopy.Parent =
    CommunityFrame

CommunityCopy.Position =
    UDim2.new(0.76, 0, 0.16, 0)

CommunityCopy.Size =
    UDim2.new(0.21, 0, 0.68, 0)

CommunityCopy.BackgroundColor3 =
    Color3.fromRGB(90, 90, 240)

CommunityCopy.Text =
    Lang[currentLang].copy

CommunityCopy.TextColor3 =
    Color3.fromRGB(255, 255, 255)

CommunityCopy.Font =
    Enum.Font.GothamBold

CommunityCopy.TextSize = 11

local CommunityCopyCorner =
    Instance.new("UICorner")

CommunityCopyCorner.CornerRadius =
    UDim.new(0, 7)

CommunityCopyCorner.Parent =
    CommunityCopy

-- =========================================================
-- TIKTOK BOX
-- =========================================================

local TikTokFrame =
    Instance.new("Frame")

TikTokFrame.Parent =
    MainFrame

TikTokFrame.Position =
    UDim2.new(0.02, 0, 0.69, 0)

TikTokFrame.Size =
    UDim2.new(0.96, 0, 0, 49)

TikTokFrame.BackgroundColor3 =
    Color3.fromRGB(18, 14, 31)

local TikTokCorner =
    Instance.new("UICorner")

TikTokCorner.CornerRadius =
    UDim.new(0, 8)

TikTokCorner.Parent =
    TikTokFrame

local TikTokStroke =
    Instance.new("UIStroke")

TikTokStroke.Thickness = 1

TikTokStroke.Color =
    Color3.fromRGB(255, 35, 90)

TikTokStroke.Parent =
    TikTokFrame

local TikTokIcon =
    Instance.new("TextLabel")

TikTokIcon.Parent =
    TikTokFrame

TikTokIcon.BackgroundTransparency = 1

TikTokIcon.Position =
    UDim2.new(0.02, 0, 0.08, 0)

TikTokIcon.Size =
    UDim2.new(0, 30, 0, 30)

TikTokIcon.Text = "🎵"

TikTokIcon.TextSize = 20

local TikTokTitle =
    Instance.new("TextLabel")

TikTokTitle.Parent =
    TikTokFrame

TikTokTitle.BackgroundTransparency = 1

TikTokTitle.Position =
    UDim2.new(0.12, 0, 0.08, 0)

TikTokTitle.Size =
    UDim2.new(0.55, 0, 0, 20)

TikTokTitle.Text =
    Lang[currentLang].tiktokTitle

TikTokTitle.TextColor3 =
    Color3.fromRGB(255, 255, 255)

TikTokTitle.Font =
    Enum.Font.GothamBold

TikTokTitle.TextSize = 12

TikTokTitle.TextXAlignment =
    Enum.TextXAlignment.Left

local TikTokDesc =
    Instance.new("TextLabel")

TikTokDesc.Parent =
    TikTokFrame

TikTokDesc.BackgroundTransparency = 1

TikTokDesc.Position =
    UDim2.new(0.12, 0, 0.48, 0)

TikTokDesc.Size =
    UDim2.new(0.55, 0, 0, 16)

TikTokDesc.Text =
    Lang[currentLang].tiktokDesc

TikTokDesc.TextColor3 =
    Color3.fromRGB(255, 70, 110)

TikTokDesc.Font =
    Enum.Font.Gotham

TikTokDesc.TextSize = 10

TikTokDesc.TextXAlignment =
    Enum.TextXAlignment.Left

local TikTokCopy =
    Instance.new("TextButton")

TikTokCopy.Parent =
    TikTokFrame

TikTokCopy.Position =
    UDim2.new(0.76, 0, 0.16, 0)

TikTokCopy.Size =
    UDim2.new(0.21, 0, 0.68, 0)

TikTokCopy.BackgroundColor3 =
    Color3.fromRGB(255, 45, 90)

TikTokCopy.Text =
    Lang[currentLang].copy

TikTokCopy.TextColor3 =
    Color3.fromRGB(255, 255, 255)

TikTokCopy.Font =
    Enum.Font.GothamBold

TikTokCopy.TextSize = 11

local TikTokCopyCorner =
    Instance.new("UICorner")

TikTokCopyCorner.CornerRadius =
    UDim.new(0, 7)

TikTokCopyCorner.Parent =
    TikTokCopy

-- =========================================================
-- DESCRIPTION PANEL
-- =========================================================

-- =========================================================
-- DESCRIPTION PANEL
-- =========================================================

local DescriptionPanel =
    Instance.new("Frame")

DescriptionPanel.Name =
    "DescriptionPanel"

DescriptionPanel.Parent =
    MainFrame

-- NẰM NGAY DƯỚI TIKTOK
DescriptionPanel.Position =
    UDim2.new(0.02, 0, 0.85, 0)

-- CAO HƠN MỘT CHÚT ĐỂ CHỮ DỄ ĐỌC
DescriptionPanel.Size =
    UDim2.new(0.96, 0, 0, 48)

-- MÀU TÍM ĐEN
DescriptionPanel.BackgroundColor3 =
    Color3.fromRGB(22, 17, 38)

DescriptionPanel.BackgroundTransparency = 0

local DescriptionPanelCorner =
    Instance.new("UICorner")

DescriptionPanelCorner.CornerRadius =
    UDim.new(0, 9)

DescriptionPanelCorner.Parent =
    DescriptionPanel

-- VIỀN DESCRIPTION
-- =========================================================

local DescriptionPanelStroke =
    Instance.new("UIStroke")

DescriptionPanelStroke.Thickness = 1

DescriptionPanelStroke.Transparency = 0.15

DescriptionPanelStroke.Color =
    Color3.fromRGB(110, 90, 190)

DescriptionPanelStroke.Parent =
    DescriptionPanel

-- DESCRIPTION CONTENT
-- =========================================================

local Description =
    Instance.new("TextLabel")

Description.Name =
    "Description"

Description.Parent =
    DescriptionPanel

Description.BackgroundTransparency = 1

-- CĂN ĐỀU TRONG PANEL
Description.Position =
    UDim2.new(0.04, 0, 0.06, 0)

Description.Size =
    UDim2.new(0.92, 0, 0.88, 0)

Description.Font =
    Enum.Font.Gotham

Description.Text =
    Lang[currentLang].description

-- CHỮ SÁNG HƠN
Description.TextColor3 =
    Color3.fromRGB(235, 235, 255)

-- TĂNG CỠ CHỮ
Description.TextSize = 12

Description.TextWrapped = true

Description.TextXAlignment =
    Enum.TextXAlignment.Center

Description.TextYAlignment =
    Enum.TextYAlignment.Center

-- UPDATE LANGUAGE
-- =========================================================

local function UpdateLanguage()

    local text =
        Lang[currentLang]

    LangButton.Text =
        text.langButton

    Title.Text =
        text.title

    KeyInput.PlaceholderText =
        text.placeholder

    GetKeyBtn.Text =
        text.getKey

    SubmitBtn.Text =
        text.checkKey

    StatusLabel.Text =
        text.status

    CommunityTitle.Text =
        text.youtubeTitle

    CommunityDesc.Text =
        text.youtubeDesc

    CommunityCopy.Text =
        text.copy

    TikTokTitle.Text =
        text.tiktokTitle

    TikTokDesc.Text =
        text.tiktokDesc

    TikTokCopy.Text =
        text.copy

    Description.Text =
        text.description

end
-- CHUYỂN VIỆT / ANH
-- =========================================================
LangButton.MouseButton1Click:Connect(function()

    if currentLang == "VI" then
        currentLang = "EN"
    else
        currentLang = "VI"
    end

    UpdateLanguage()

end)

-- COPY YOUTUBE
-- =========================================================

CommunityCopy.MouseButton1Click:Connect(function()

    if setclipboard then
        setclipboard(CommunityLink)
    end

    CommunityCopy.Text =
        Lang[currentLang].copied

    task.wait(1.5)

    if CommunityCopy and CommunityCopy.Parent then
        CommunityCopy.Text =
            Lang[currentLang].copy
    end

end)

-- =========================================================
-- COPY TIKTOK
-- =========================================================

TikTokCopy.MouseButton1Click:Connect(function()

    if setclipboard then
        setclipboard(TikTokLink)
    end

    TikTokCopy.Text =
        Lang[currentLang].copied

    task.wait(1.5)

    if TikTokCopy and TikTokCopy.Parent then
        TikTokCopy.Text =
            Lang[currentLang].copy
    end

end)

-- GET KEY
-- =========================================================

GetKeyBtn.MouseButton1Click:Connect(function()

    local text =
        Lang[currentLang]

    GetKeyBtn.Text =
        text.linkCopied

    if setclipboard then

        setclipboard(
            decode(enc_link)
        )

    end

    StatusLabel.Text =
        text.getKeyStatus

    StatusLabel.TextColor3 =
        Color3.fromRGB(255, 190, 80)

    task.wait(2)

    if GetKeyBtn and GetKeyBtn.Parent then

        GetKeyBtn.Text =
            Lang[currentLang].getKey

    end

end)

-- =========================================================
-- CHECK KEY + LOAD SCRIPT
-- =========================================================

SubmitBtn.MouseButton1Click:Connect(function()

    local input =
        KeyInput.Text

    local correctKey =
        decode(enc_key)

    -- =====================================================
    -- KEY ĐÚNG
    -- =====================================================

    if input == correctKey then

        SubmitBtn.Text =
            Lang[currentLang].successButton

        SubmitBtn.BackgroundColor3 =
            Color3.fromRGB(46, 204, 113)

        SubmitBtn.TextColor3 =
            Color3.fromRGB(255, 255, 255)

        StatusLabel.Text =
            Lang[currentLang].successStatus

        StatusLabel.TextColor3 =
            Color3.fromRGB(70, 230, 120)

        task.wait(1)

        ScreenGui:Destroy()

        -- Khởi chạy script chính
        local scriptUrl =
            decode(enc_script)

        local success, runErr =
            pcall(function()

                loadstring(
                    game:HttpGet(scriptUrl)
                )()

            end)

        if not success then

            warn(
                "Lỗi khi tải script chính: "
                .. tostring(runErr)
            )

        end

    -- =====================================================
    -- KEY SAI
    -- =====================================================

    else

        SubmitBtn.Text =
            Lang[currentLang].wrongButton

        SubmitBtn.BackgroundColor3 =
            Color3.fromRGB(231, 76, 60)

        SubmitBtn.TextColor3 =
            Color3.fromRGB(255, 255, 255)

        StatusLabel.Text =
            Lang[currentLang].wrongStatus

        StatusLabel.TextColor3 =
            Color3.fromRGB(255, 80, 80)

        task.wait(2)

        if SubmitBtn and SubmitBtn.Parent then

            SubmitBtn.Text =
                Lang[currentLang].checkKey

            SubmitBtn.BackgroundColor3 =
                Color3.fromRGB(38, 29, 62)

            SubmitBtn.TextColor3 =
                Color3.fromRGB(190, 185, 205)

        end

    end

end)
