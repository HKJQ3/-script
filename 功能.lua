local player = game.Players.LocalPlayer
getgenv().ImageOpen="https://raw.githubusercontent.com/kkaaccnnbb/troll/refs/heads/main/Screenshot_2024_1031_113319.png"--开关
getgenv().ImageHttp="https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/Image_1753417347791.jpg"--背景
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/HKJQ3/-script/refs/heads/main/UI%E5%8A%A0%E5%AF%86.lua"))()
local win = ui:new("XN脚本")
local uiTab1 = win:Tab("『信息』",'4483345998')

local about = uiTab1:section("查看作者信息",true)

about:Label("作者：小叶")
about:Label("漏洞修复者：Nova")
about:Label("技术支持者：Nova")


local about = uiTab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Button("怕点不到才加的",function()

end)

local uiTab2 = win:Tab("『公告』",'4483345998')
local about = uiTab2:section("『公告』",true)

local uiTab3 = win:Tab("通用",'4483345998')
local about = uiTab3:section("『通用』",true)
about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
end)
about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)
about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)
about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
end)
local uiTab4 = win:Tab("木材",'4483345998')
local about = uiTab4:section("『通用』",true)
about:Toggle("拖拽器","Toggleflag",false,function(state)
	if state then
		workspace.ChildAdded:connect(function(Dragger)
			if tostring(Dragger)=="Dragger"then
				local BodyGyro=Dragger:WaitForChild"BodyGyro";
				local BodyPosition=Dragger:WaitForChild"BodyPosition";
				repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";
			   
					BodyPosition.P=120000;
					BodyPosition.D=1000;
					BodyPosition.maxForce=Vector3.new(1,1,1)*1000000;
					BodyGyro.maxTorque=Vector3.new(1,1,1)*200;
					BodyGyro.P=1200;
					BodyGyro.D=140;
			   
			end
		end)
	else
	

workspace.ChildAdded:connect(function(Dragger)
if tostring(Dragger)=="Dragger"then
local BodyGyro=Dragger:WaitForChild"BodyGyro";
local BodyPosition=Dragger:WaitForChild"BodyPosition";
repeat game:GetService"RunService".Stepped:wait()until workspace:FindFirstChild"Dragger";


BodyPosition.P=10000;
BodyPosition.D=800;
BodyPosition.maxForce=Vector3.new(17000,17000,17000);
BodyGyro.maxTorque=Vector3.new(200,200,200);
BodyGyro.P=1200;
BodyGyro.D=140;
end;
end)

	end
end)
local f
tp = function(cf)
    f = cf
end
about = uiTab4:section("传送")
about:Dropdown("传送","Dropdown",{"出生点","木材反斗城","回家","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","罗布克斯商店","肯德坤专卖店","秋季商店"}, function(b)
	list = b
	if list == "出生点"then
		tp(CFrame.new(187,3,55))
		
	elseif list == "木材反斗城"then
		tp(CFrame.new(265, 5, 57))
		
	elseif list == "洞穴" then
		
        tp(CFrame.new(3581, -177, 430))
	
	elseif list == "连接逻辑店" then
		tp(CFrame.new(4607, 9, -798))
		
	elseif list == "雪山" then
		tp(CFrame.new(1451.66248, 412.208405, 3183.47607))
	
	elseif list == "土地商店" then
		tp(CFrame.new(258, 5, -99))
		
	elseif list == "画店" then
		tp(CFrame.new(5207, -156, 719))
		
	elseif list == "火木" then
		tp(CFrame.new(-1585, 625, 1140))
	
	elseif list == "沙滩" then
		tp(CFrame.new(2549, 5, -42))
	
	elseif list == "桥对岸"then
		tp(CFrame.new(109,5,-1166))
		
	elseif list == "会员商店" then
		tp(CFrame.new(907,4,-92))
		
	elseif list == "码头" then
		tp(CFrame.new(1122,1,-203))
		
	elseif list == "黑市" then
		tp(CFrame.new(-22,61,1377))
		
	elseif list == "糖果原" then
		tp(CFrame.new(-561,272,2312))
		
	elseif list == "雪地入口"then
		tp(CFrame.new(888,61,1188))
	
	elseif list == "盖克斯航运"then
		tp(CFrame.new(1894,-2,1581))
	
	elseif list == "玻璃冰木入口" then
		tp(CFrame.new(1929,256,2918))
		
	elseif list == "云层" then
		tp(CFrame.new(2073,495,2967))
	
	elseif list == "山边商品"then
		tp(CFrame.new(-640,160,374))
		
	elseif list == "章鱼哥祭坛" then
		tp(CFrame.new(-1622,196,941))
		
	elseif list == "沼泽商店" then
		tp(CFrame.new(-1274,133,-1443))
		
	elseif list == "沼泽" then
		tp(CFrame.new(-999,133,-1191))
	
	elseif list == "石头商店" then
		tp(CFrame.new(-2387,302,-1899))
		
	elseif list == "冰胡" then
		tp(CFrame.new(-2149,321,743))
		
	elseif list == "沙漠" then
		tp(CFrame.new(-612,46,-3169))
		
	elseif list == "辐射商店" then
		tp(CFrame.new(172,12,-2627))
		
	elseif list == "核污染区" then
		tp(CFrame.new(207,15,-2752))
		
	elseif list == "种子商人" then
		tp(CFrame.new(-24,18,-2684))
		
	elseif list == "鲍勃的店" then
		tp(CFrame.new(261,9,-2541))
		
	elseif list == "家具店" then
		tp(CFrame.new(492,4,-1723))
	
	elseif list == "车店" then
		tp(CFrame.new(512,4,-1459))
	
	elseif list == "罗布克斯商店" then
		tp(CFrame.new(652,4,-1589))
		
	elseif list == "肯德坤专卖店" then
		tp(CFrame.new(65,4,-455))
	
	elseif list == "秋季商店" then
		tp(CFrame.new(6004,4,33))
    elseif list == "回家" then
		for i,v in pairs(game.Workspace.Properties:GetChildren()) do
			if v.Owner.Value == lp then
				tp(v.OriginSquare.CFrame + Vector3.new(0,10,0)) 
			end
			end
		end
	
	
	

end)
about:Button("传送",function()
    if game.Players.LocalPlayer.Character and f then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = f
    end
end)
local c
cartp = function(cf)
    c = cf
end
about:Dropdown("汽车传送","Dropdown",{"出生点","回家","木材反斗城","连接逻辑店","土地商店","会员商店","画店","桥对岸","沙滩","火木","雪山","洞穴","码头","黑市","糖果原","雪地入口","盖克斯航运","玻璃冰木入口","云层","山边商品","章鱼哥祭坛","沼泽商店","石头商店","沼泽","冰胡","沙漠","辐射商店","核污染区","种子商人","鲍勃的店","家具店","车店","罗布克斯商店","肯德坤专卖店","秋季商店"}, function(v)
	list = v
	if list == "出生点"then
		
		cartp(CFrame.new(187,5,55))

	elseif list == "木材反斗城"then
		
		cartp(CFrame.new(245, 5, 57))

	elseif list == "洞穴" then
		
		cartp(CFrame.new(3581, -177, 430))

	elseif list == "连接逻辑店" then
		
		cartp(CFrame.new(4607, 9, -740))

	elseif list == "雪山" then
		
		cartp(CFrame.new(1451.66248, 412.208405, 3183.47607))

	elseif list == "土地商店" then
		
		cartp(CFrame.new(230, 5, -99))

	elseif list == "画店" then
		
		cartp(CFrame.new(5207, -156, 719))

	elseif list == "火木" then
		
		cartp(CFrame.new(-1585, 625, 1140))

	elseif list == "沙滩" then
		
		cartp(CFrame.new(2549, 5, -42))

	elseif list == "桥对岸"then
		
		cartp(CFrame.new(109,5,-1166))

	elseif list == "会员商店" then
		
		cartp(CFrame.new(907,4,-115))

	elseif list == "码头" then
		
		cartp(CFrame.new(1122,1,-203))

	elseif list == "黑市" then
		
		cartp(CFrame.new(-15,61,1365))

	elseif list == "糖果原" then
		
		cartp(CFrame.new(-561,272,2312))

	elseif list == "雪地入口"then
		
		cartp(CFrame.new(888,61,1188))

	elseif list == "盖克斯航运"then
		
		cartp(CFrame.new(1894,-2,1581))

	elseif list == "玻璃冰木入口" then
		
		cartp(CFrame.new(1929,256,2918))

	elseif list == "云层" then
		
		cartp(CFrame.new(2060,495,2967))

	elseif list == "山边商品"then
		
		cartp(CFrame.new(-640,160,374))

	elseif list == "章鱼哥祭坛" then
		
		cartp(CFrame.new(-1622,196,941))

	elseif list == "沼泽商店" then
		
		cartp(CFrame.new(-1274,133,-1443))

	elseif list == "沼泽" then
		
		cartp(CFrame.new(-999,133,-1191))

	elseif list == "石头商店" then
		
		cartp(CFrame.new(-2395,302,-1899))

	elseif list == "冰胡" then
		
		cartp(CFrame.new(-2149,321,743))

	elseif list == "沙漠" then
		
		cartp(CFrame.new(-612,46,-3169))

	elseif list == "辐射商店" then
		
		cartp(CFrame.new(172,12,-2627))

	elseif list == "核污染区" then
		
		cartp(CFrame.new(207,15,-2752))

	elseif list == "种子商人" then
		
		cartp(CFrame.new(-15,18,-2680))

	elseif list == "鲍勃的店" then
		
		cartp(CFrame.new(245,9,-2541))

	elseif list == "家具店" then
		
		cartp(CFrame.new(490,4,-1690))

	elseif list == "车店" then
		
		cartp(CFrame.new(512,4,-1490))

	elseif list == "罗布克斯商店" then
		
		cartp(CFrame.new(652,4,-1565))

	elseif list == "肯德坤专卖店" then
		
		cartp(CFrame.new(100,4,-455))

	elseif list == "秋季商店" then
		
		cartp(CFrame.new(6004,4,33))
    elseif list == "回家" then
		for i,v in pairs(game.Workspace.Properties:GetChildren()) do
			if v.Owner.Value == lp then
				cartp(v.OriginSquare.CFrame + Vector3.new(0,10,0)) 
			end
			end
		end
	




end)
about:Button("传送",function()
  Vehicle = player.Character.Humanoid.SeatPart.Parent
  spawn(function()
    for i = 1, 3 do
      task.wait()
      Vehicle:SetPrimaryPartCFrame(c)
    end
  end)
end)
local uiTab5 = win:Tab("墨水游戏",'4483345998')
local about = uiTab5:section("无卡密",true)
about:Button("汉化",function()
--[[ v1.0.0 https://wearedevs.net/obfuscator ]] return(function(...)local q={"\111\108\101\107\066\086\102\085","\106\052\118\087\111\103\061\061","\067\086\112\107\111\050\102\087\048\043\118\110\111\089\061\061";"\102\101\103\079\072\086\118\097\102\056\077\056\102\069\073\050\099\086\065\061","";"\066\053\102\120\099\118\102\068\070\053\077\050\072\097\066\118\067\114\061\061","\122\101\112\073\067\043\072\118\115\088\061\061","\066\108\072\057\111\069\056\102\084\101\107\121\057\056\111\084\066\089\061\061";"\077\086\056\090\048\086\077\079\098\053\072\118\066\086\077\051\066\086\077\069\098\103\061\061";"\111\043\105\071\067\068\098\061","\120\122\084\116\050\073\066\078\055\070\072\111\098\072\076\070\119\055\057\101\109\074\054\122\076\053\087\068\065\084\090\098\084\072\121\083\072\065\043\067\102\082\049\101\083\098\077\051\118\110\049\100\097\114\055\107\101\110\071\071\077\055\101\110\104\070\054\089\115\110\068\116\113\072\112\072\055\089\048\111\068\106\071\086\086\073\117\078\055\088\061\061","\121\047\075\087\084\057\065\089\048\068\107\117\106\043\077\110\106\103\061\061","\111\108\056\090\111\103\061\061","\070\050\072\087\048\053\066\118\066\088\061\061","\072\051\066\084\106\118\111\077\055\077\075\051\047\077\073\050\084\057\106\061";"\048\068\072\079\055\057\054\052","\111\122\080\079\067\068\098\061","\111\068\102\101\106\114\061\061","\067\086\077\110","\066\086\056\120\067\086\084\061";"\121\120\114\118\111\076\085\073\121\114\061\061";"\066\057\054\089\106\057\102\116";"\111\050\102\099\111\053\098\108\057\097\080\049\067\087\105\119\048\086\065\061","\115\086\102\111\084\056\080\107\070\050\080\107\047\043\073\101\067\086\099\061";"\122\101\112\052\106\089\061\061";"\066\086\112\110\066\057\101\120\111\122\098\061","\106\108\112\110\106\108\056\087","\066\122\080\073\055\118\073\117\077\087\118\056\070\084\101\076\099\103\061\061";"\067\057\056\087\055\088\061\061";"\072\051\072\116\067\069\090\068\106\122\102\079\070\087\066\084\067\051\053\061";"\048\108\118\053\057\053\105\110\099\097\066\076\121\057\098\061","\122\101\112\090\111\122\072\107\066\086\056\120\067\086\084\061","\048\086\102\107\067\086\089\061";"\067\097\053\061";"\122\101\112\119\111\057\065\061","\048\108\077\087\067\057\077\087\106\122\072\107\106\043\105\118";"\048\043\056\110\111\086\112\090","\048\122\053\089\067\087\111\106\099\122\066\106\077\069\054\099\048\088\061\061";"\099\084\111\085\055\084\066\101\103\122\056\071\111\051\111\070\066\086\072\077","\077\087\073\069\070\097\056\086\057\118\056\085\077\043\054\102\047\103\061\061","\066\043\111\097\102\101\107\085\066\069\118\069\099\057\101\121\121\057\053\061";"\048\043\077\090\067\068\111\118";"\067\097\098\061","\106\108\107\107\048\114\061\061";"\121\114\061\061";"\072\069\111\117\055\087\072\075\103\122\077\120\057\118\107\090\066\114\061\061";"\066\086\112\117\066\050\080\073\067\043\048\061"}local function a(a)return q[a-(-130884-(-158500))]end for a,X in ipairs({{833336+-833335,1019551+-1019504},{-103832+103833;197827-197787},{33530+-33489,589676+-589629}})do while X[682795+-682794]<X[765697-765695]do q[X[-38594-(-38595)]],q[X[13933-13931]],X[300754+-300753],X[-902646+902648]=q[X[-527350-(-527352)]],q[X[971776+-971775]],X[459728-459727]+(804409+-804408),X[-883380-(-883382)]-(-875935+875936)end end do local a=table.concat local X=string.len local x=string.char local M=string.sub local h=q local L=math.floor local C=table.insert local G=type local g={["\053"]=240069-240065,w=926825-926781;["\047"]=848005+-847986;i=490068-490019;m=718023-717964,k=-1047697+1047730;["\051"]=47730+-47695,f=846028+-846015,q=835057-834994;F=-474238+474256,o=740012+-739987;c=30248-30236;W=-373964-(-374016);J=680981-680919,l=679514-679460,["\050"]=652282+-652275,U=163778-163738;L=883043+-883041,B=752108+-752079,V=187787+-187781,["\056"]=863076-863071,b=953053-953045;P=179252+-179243,u=785258+-785207,h=-28307+28338;O=-948643-(-948693),D=-515016+515071,R=-475168-(-475228),A=92446+-92390,a=1039791+-1039788;H=814600-814583;y=679323-679309,Y=-381759+381807,S=185912-185902;j=213769-213745,g=-95082-(-95098);["\043"]=381034-380996,z=76012+-75989,["\048"]=-968194+968222,s=988880+-988850;X=559723-559723;v=115016-114979,E=-53238+53274;I=637445-637404;C=854541+-854514,M=146087-146066;["\049"]=523965-523954,r=-308597-(-308629),N=206504+-206462,["\052"]=610205+-610166,n=1041650-1041604;T=464220-464200,t=-753942-(-753985);["\054"]=-493084+493141,Z=-798763+798808;K=554101+-554100;x=-367966+368000,e=767122-767069;Q=774396-774338;["\057"]=-577635+577657,p=-360480+360541,d=-892540-(-892555);G=207508-207461;["\055"]=-103726-(-103752)}for q=823093+-823092,#h,-561947+561948 do local T=h[q]if G(T)=="\115\116\114\105\110\103"then local G=X(T)local N={}local j=158843-158842 local s=-435018-(-435018)local D=-566406-(-566406)while j<=G do local q=M(T,j,j)local a=g[q]if a then s=s+a*(228145-228081)^((183636-183633)-D)D=D+(200519-200518)if D==521774+-521770 then D=761143-761143 local q=L(s/(380625-315089))local a=L((s%(-810045+875581))/(702152+-701896))local X=s%(852033+-851777)C(N,x(q,a,X))s=135484+-135484 end elseif q=="\061"then C(N,x(L(s/(-440270+505806))))if j>=G or M(T,j+(847441-847440),j+(-994955+994956))~="\061"then C(N,x(L((s%(-340411-(-405947)))/(107378-107122))))end break end j=j+(-120418+120419)end h[q]=a(N)end end end return(function(q,x,M,h,L,C,G,V,D,m,T,d,N,I,l,Q,s,F,S,j,X,g)F,I,m,j,S,V,g,N,Q,l,T,X,D,s,d=function(q,a)local x=s(a)local M=function(M,h,L)return X(q,{M,h;L},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C,G)return X(q,{M;h,L;C;G},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C,G,g)return X(q,{M,h;L;C,G,g},a,x)end return M end,421443-421443,function(q)T[q]=T[q]-(-98523-(-98524))if T[q]==-65711-(-65711)then T[q],g[q]=nil,nil end end,function(q,a)local x=s(a)local M=function(...)return X(q,{...},a,x)end return M end,{},function()j=(326908+-326907)+j T[j]=260377-260376 return j end,function(q,a)local x=s(a)local M=function(M,h)return X(q,{M;h},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C)return X(q,{M,h;L,C},a,x)end return M end,{},function(X,M,h,L)local G,W,c,o,f,B,H,Y,i,p,O,y,b,T,w,k,j,U,u,Z,n,s,K,e,J,D,E,A,V,v,R,P,r,t while X do if X<8706345-538511 then if X<2946409-130883 then if X<-289892+1280492 then if X<347874-(-249650)then if X<-197380+642873 then if X<-529883-(-776510)then if X<309978+-91982 then X=-387327+10600524 i=a(470143-442512)e=q[i]G=e else X=953945+5980064 g[h[-888683+888688]]=G T=nil end else X=true X=X and-36143+812533 or 1042955-420866 end else if X<-21940-(-508327)then y=g[j]E=y X=y and 2326904-(-216424)or 495588+11848910 else r=not P i=i+u n=i<=e n=r and n r=i>=e r=P and r n=r or n r=694513+9893468 X=n and r n=8056842-(-974329)X=X or n end end else if X<1160949-361697 then if X<-946560+1623133 then G={}X=q[a(-198332+225949)]else T=a(-168515+196158)G=a(725165-697513)X=q[G]G=q[T]T=a(603623-575980)q[T]=X T=a(112379-84727)q[T]=G X=955506+-682571 T=g[h[-784300-(-784301)]]j=T()end else if X<-585835+1572407 then X=-769650+5524684 else K=a(-973133+1000785)X=q[K]K=a(-660965+688608)q[K]=X X=-785635+8448661 end end end else if X<2612585-91467 then if X<1600018-(-310714)then if X<510301-(-556482)then if X<423693-(-596102)then s=a(-979367-(-1006996))j=q[s]s=a(554347+-526696)T=j[s]s=g[h[-559301+559302]]j={T(s)}G={x(j)}X=q[a(1023025+-995365)]else X=true X=10337665-85028 end else b=a(490230+-462574)X=q[b]f=a(706485-678842)K=q[f]b=X(K)X=a(-508908-(-536560))q[X]=b X=8118964-455938 end else if X<2942346-545759 then X=851838+1784852 J=S(J)o=S(o)c=S(c)B=S(B)A=S(A)Z=nil f=S(f)else V=35184372426266-337434 n=a(161789+-134164)H=-321718+321973 X={}g[h[313937+-313935]]=X G=g[h[-272959-(-272962)]]D=G G=j%V g[h[-435451-(-435455)]]=G w=j%H H=1019658-1019656 V=w+H g[h[-326672-(-326677)]]=V H=q[n]n=a(-484603-(-512231))w=H[n]H=w(T)i=-947270+947271 w=a(608696+-581035)n=54686-54685 u=i s[j]=w e=H w=128880+-128631 i=194036+-194036 X=58057+452673 P=u<i i=n-u end end else if X<-753004+3416325 then if X<2900749-342609 then v=986216+-986215 y=Z[v]X=605294+11739204 E=y else f=not K W=W+b G=W<=t G=f and G f=W>=t f=K and f G=f or G f=16103330-(-124674)X=G and f G=38809+13462142 X=X or G end else if X<3397957-617244 then O=O+f R=O<=K o=not A R=o and R o=O>=K o=A and o R=o or R o=112843+3935817 X=R and o R=7455912-(-708287)X=X or R else g[j]=W X=g[j]X=X and 9261567-(-456987)or 1994320-935670 end end end end else if X<821477+6217587 then if X<4362322-(-278053)then if X<4752447-966361 then if X<923622+2813438 then if X<826195+2563714 then X=g[h[-259742-(-259743)]]e=-774064-(-774319)n=133991-133991 H=X(n,e)j=s T[j]=H X=6840727-(-92234)j=nil else j=a(-797110-(-824758))G=-59667+15164700 s=11279768-114867 T=j^s X=G-T T=X G=a(345495-317855)X=G/T G={X}X=q[a(-881293-(-908955))]end else X=1934209-(-851383)t=u==P W=t end else if X<-911723+5074515 then R=O o=R r[R]=o R=nil X=156941+2590632 else p=333258+-333257 U=Z[p]y=X p=false v=U==p X=v and 830996+15566446 or 63466+7010435 E=v end end else if X<790909+4854224 then if X<4039216-(-686613)then H=a(9013+18625)w=G G=q[H]H=a(-315014+342660)X=G[H]H=N()n=a(-473194-(-500823))P=a(185289-157660)g[H]=X G=q[n]n=a(988646-961010)X=G[n]u=q[P]i=X e=u n=X X=u and 915318+6229591 or-106118+13213302 else X=true X=X and 8159909-1001394 or 14720919-416616 end else if X<7083407-149540 then s=s+V j=s<=D H=not w j=H and j H=s>=D H=w and H j=H or j H=2436834-(-414869)X=j and H j=17576233-882941 X=X or j else X=g[h[-700583+700590]]X=X and 13846702-(-209899)or-433882+12267534 end end end else if X<7423410-(-20627)then if X<-350256+7508721 then if X<-216249+7363797 then if X<7713728-608285 then X=y G=E X=328467+12295019 else r=a(381722-354093)P=q[r]X=14018334-911150 r=a(-925990-(-953621))u=P[r]e=u end else s=470958+-470957 j=g[h[-482878+482881]]T=j~=s X=T and 8039766-(-137956)or-349584+9075777 end else if X<8136644-869620 then b=544260-544259 K=100062+-100056 X=g[H]t=X(b,K)X=a(-423458+451110)q[X]=t K=a(706603+-678951)
about:Button("无汉化功能更全面",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexScriptX/Ink-Game-Script/refs/heads/main/Ink%20Game%20by%20AlexScriptX.lua"))()



