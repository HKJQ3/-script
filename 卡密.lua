--白名单--
local Players = game:GetService("Players")
local player = Players.LocalPlayer  -- 提前获取本地玩家对象

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
        -- 去除用户名前后可能的空格和换行符
        if username == string.gsub(whitelistedUser, "%s", "") then
            return true
        end
    end
    return false
end

-- 定时检查白名单函数（间隔时间可自定义，这里设为60秒）
local function startWhitelistCheckLoop()
    while true do
        wait(1)  -- 每5秒检查一次
        loadWhitelistFromGitHub()  -- 重新加载最新白名单
        -- 检查当前用户是否仍在白名单中
        if not isInWhitelist(player.Name) then
            player:Kick("白名单验证失败，已移除访问权限")
            break  -- 踢出后终止循环
        else
            print(player.Name .. "仍在白名单中，验证通过")
        end
    end
end

-- 初始化：加载白名单并执行首次检查
loadWhitelistFromGitHub()

if not isInWhitelist(player.Name) then
    -- 非白名单用户处理（如踢出）
    player:Kick("你不在白名单中，无法进入游戏")
else
    print(player.Name, "是白名单用户，允许进入")
    -- 启动定时检查循环
    spawn(startWhitelistCheckLoop)  -- 使用spawn单独开启线程，避免阻塞后续代码
end
--白名单--

local CoreGui = game:GetService("StarterGui") 
local function notify(t,j,d)
    CoreGui:SetCore("SendNotification", { 
        Title = t, 
        Text = j, 
        Duration = d,  
    })
end
 
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/kkaaccnnbb/Logan/refs/heads/main/uiilb"))()

local win = UI:new("Virtual")
local tab = win:Tab("名字")
  
local section = tab:section("验证卡密",true)
section:Textbox("请输入文本", 'TextBoxfalg', "文本", function(txt)
    key = txt
end)
section:Button("验证文本",function()
    if key == "文本" then
        notify("验证成功","",3)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        getgenv().ImageOpen="https://raw.githubusercontent.com/kkaaccnnbb/troll/refs/heads/main/Screenshot_2024_1031_113319.png"--开关
getgenv().ImageHttp="https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/Image_1753417347791.jpg"--背景
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/UI%E5%8A%A0%E5%AF%86.lua"))()
local win = ui:new("")

    
    else
        notify("验证失败","",3)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
      wait(1)
      loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
      wait(1)
      loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
      wait(1)
    end
end)
