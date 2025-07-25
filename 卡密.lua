local Players = game:GetService("Players")

-- GitHub白名单文件的原始链接（替换为你的链接）
local githubWhitelistUrl = "https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/whitelist.txt"

-- 存储从GitHub加载的白名单
local whitelist = {}

-- 从GitHub加载白名单的函数
local function loadWhitelistFromGitHub()
    -- 发送HTTP请求
    local success, response = pcall(function()
        return game:HttpGet(githubWhitelistUrl)
    end)
    
    if success then
        -- 解析文本：按换行分割成用户名列表（根据你的文件格式调整）
        whitelist = string.split(response,"\n")
        print("白名单加载成功，共", #whitelist, "个用户")
    else
        warn("白名单加载失败：" .. response)
    end
end

-- 检查用户是否在白名单中
local function isInWhitelist(username)
    for _, whitelistedUser in pairs(whitelist) do
        if username == whitelistedUser then
            return true
        end
    end
    return false
end

-- 初始化：加载白名单
loadWhitelistFromGitHub()

if not isInWhitelist(game.Players.LocalPlayer.Character.Name) then
    -- 非白名单用户处理（如踢出）
    player:Kick("你不在白名单中，无法进入游戏")
else
    print(game.Players.LocalPlayer.Character.Name, "是白名单用户，允许进入")
end


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


local Players = game:GetService("Players")

-- GitHub白名单文件的原始链接（替换为你的链接）
local githubWhitelistUrl = "https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/whitelist.txt"

-- 存储从GitHub加载的白名单
local whitelist = {}

-- 从GitHub加载白名单的函数
local function loadWhitelistFromGitHub()
    -- 发送HTTP请求
    local success, response = pcall(function()
        return game:HttpGet(githubWhitelistUrl)
    end)
    
    if success then
        -- 解析文本：按换行分割成用户名列表（根据你的文件格式调整）
        whitelist = string.split(response,"\n")
        print("白名单加载成功，共", #whitelist, "个用户")
    else
        warn("白名单加载失败：" .. response)
    end
end

-- 检查用户是否在白名单中
local function isInWhitelist(username)
    for _, whitelistedUser in pairs(whitelist) do
        if username == whitelistedUser then
            return true
        end
    end
    return false
end

-- 初始化：加载白名单
loadWhitelistFromGitHub()

if not isInWhitelist(game.Players.LocalPlayer.Character.Name) then
    -- 非白名单用户处理（如踢出）
    player:Kick("你不在白名单中，无法进入游戏")
else
    print(game.Players.LocalPlayer.Character.Name, "是白名单用户，允许进入")
en
