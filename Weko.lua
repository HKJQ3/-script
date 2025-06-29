if getgenv()["Laad"] == nil then
  getgenv()["Laad"]="Fix Version"
end
local lp=game.Players.LocalPlayer
local mouse = lp:GetMouse()
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local bai = {
  autoaxedupe=false,
  cuttreeselect="Generic",
  axedupepick=nil,
  autodupe=false,
  dxmz="",
  slot=-1,
  zlwjia="",
  zix=1,
  zlz=3,
  bringamount=1,
  bringtree=false,
  waterwalk=false,
  awaysday=false,
  awaysdnight=false,
  nofog=false,
  cswjiail=nil,
  itemset=nil,
  autocsdx=nil,
  autobuystop=false,
  autobuyamount=1,
  away = nil
}

local function notify(Title,Text,Duration) -- Sends Notification in the bottom right of the screen
  game.StarterGui:SetCore("SendNotification", {
    Title = Title;
    Text = Text;
    Icon = nil;
    Duration = Duration
  })
end
function Dupeaxe()


  lp.Character.Humanoid:UnequipTools()
  local oldpos = lp.Character.HumanoidRootPart.CFrame
  for i,v in pairs(game:service"Players".LocalPlayer.Backpack:GetChildren()) do
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool")
  end

  game:service"Players".LocalPlayer.Character.Head:Destroy()
  wait(6)
  lp.Character.HumanoidRootPart.CFrame=oldpos
end
local Vehicle
function cartp(cframe)
  Vehicle = lp.Character.Humanoid.SeatPart.Parent
  spawn(function()
    for i = 1, 3 do
      task.wait()
      Vehicle:SetPrimaryPartCFrame(cframe)
    end
  end)
end
function ItemStackeraxe(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) ==bai.zlwjia
      then if (
        v:FindFirstChild "DraggableItem" and tostring(v.DraggableItem.Parent) == ItemType)
        then table
        .
        insert(Items, v)
      end
    end
  end
  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do for X = 1, XAxis do for Z = 1, ZAxis do Count = Count
        + 1
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player
        ,
        game.Players.LocalPlayer, nil, Items[Count], true)
      end
    end
  end
end
function ItemStackerbox(ItemType, XAxis, ZAxis)
  local Player = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
  local Items = {}

  for i, v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
    if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == bai.zlwjia then
      if v:FindFirstChild("PurchasedBoxItemName") and tostring(v.PurchasedBoxItemName.Value) == ItemType then
        table.insert(Items, v)
        print("Added item to Items table:", v)
      end
    end
  end

  print("Total items found:", #Items)

  local Count = 0
  for Y = 1, math.ceil(#Items / (XAxis * ZAxis)) do
    for X = 1, XAxis do
      for Z = 1, ZAxis do
        Count = Count + 1
        if Count > #Items then
          break
        end
        game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedStructure:FireServer(nil,
        CFrame.new(X * Items[1].Main.Size.X, Y * Items[1].Main.Size.Y, Z * Items[1].Main.Size.Z) + Player,
        game.Players.LocalPlayer, nil, Items[Count], true)
        print("Placed item at position:", X, Y, Z, Items[Count])
      end
    end
  end
end
local function CheckIfSlotAvailable(Slot)
  for a,b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do
    if a == Slot then
      for c,d in pairs(b) do
        if c == "NumSaves" and d ~= 0 then
          return true
         else
          return false
        end
      end
    end
  end
end

local function CheckSlotNumber() --Checks if the slot number is right
  if bai.slot == "1" or bai.slot == "2" or bai.slot == "3" or bai.slot == "4" or bai.slot == "5" or bai.slot == "6" then
    local SlotNumber = tonumber(bai.slot)
    return SlotNumber
   else return false
  end
end




function toolsta(toolname)
  return require(game.ReplicatedStorage.Purchasables.Tools.AllTools[toolname].AxeClass).new()
end

local function table_foreach(table, callback)
  for i=1,#table do
    callback(i, table[i])
  end
end


local function tp(pos)
  if typeof(pos) == "CFrame" then
    lp.Character:SetPrimaryPartCFrame(pos)
   elseif typeof(pos) == "Vector3" then
    lp.Character:MoveTo(pos)
  end
end

function sellwood()
  for _, Log in pairs(workspace.LogModels:GetChildren()) do
    if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
      if Log.Owner.Value == game.Players.LocalPlayer then
        for i,v in pairs(Log:GetChildren()) do
          if v.Name=="WoodSection" then
            spawn(function()
              for i=1,100 do
                wait();
                game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.WoodSection)
                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.WoodSection)
                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
              end
            end)
          end
        end

      end
    end
  end
end



local function cutPart (tool,event, treeClass,axestr)
  game:GetService"ReplicatedStorage".Interaction.RemoteProxy:FireServer(event, {
    tool = tool,
    faceVector = Vector3.new(0, 0,-1),
    height = 0.3,
    sectionId = 1,
    hitPoints = axestr,
    cooldown = -14,
    cuttingClass = "Axe"
  })
end
local treeListener = function(treeClass, callback)
  local childAdded
  a= workspace.LogModels.ChildAdded:Connect(function(child)
    local owner = child:WaitForChild("Owner")
    if owner.Value == lp and child.TreeClass.Value == treeClass then
      a:Disconnect()
      callback(child)
    end
  end)
end


local getBiggestTree = function(treeClass)
  for _,v in next,workspace:children()do
    if tostring(v)=="TreeRegion"then
      for _,g in next,v:children()do
        if g:FindFirstChild("TreeClass")and tostring(g.TreeClass.Value)==treeClass and g:FindFirstChild("Owner")then
          if g.Owner.Value==nil or tostring(g.Owner.Value)==tostring(lp)then
            if #g:children() > 5 and g:FindFirstChild("WoodSection")then
              for h,j in next,g:children() do
                if j:FindFirstChild("ID")and j.ID.Value==1 and j.Size.Y>.5 then
                  return j;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  return false;
end
local function lowerBridge(value)

  if value=="Higher"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, 26, 0)
    end

   elseif value=="Lower"then
    for _,v in pairs(game.workspace.Bridge.VerticalLiftBridge.Lift:GetChildren()) do
      v.CFrame = v.CFrame + Vector3.new(0, -26, 0)
    end
  end;
end

if not isfile("NoNNNNVQEBZQGE") then
    notify("Dark","缺失主要文件正在安装中",3)
    local script = [[
local oldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
  if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
    if Log.Owner.Value == game.Players.LocalPlayer then
      --Fix by 0x15 & Laad
      local ltem = Log
      local bypassanticheat = "Ifyouarereadingthisstophackingbrolegitalsokrnlisbadbtw432rewdWdwFe432432rwDWDAVWdawgdGWAYDFGYTUW"
      for e = 1, 15 do
        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(ltem,bypassanticheat)
        ltem:PivotTo(oldPosition)
        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(ltem,bypassanticheat)
        game:GetService('RunService').Stepped:wait();
      end
    end
  end
end
]]
    writefile("NoNNNNVQEBZQGE",script)
end
function modwood()
    local wood
    local Saw
    notify("Dark", "请点击一颗树", 4)
    local ModTree = mouse.Button1Up:Connect(function()
        local obj = mouse.Target.Parent
        if not obj:FindFirstChild "RootCut" and obj.Parent.Name == "TreeRegion" then
            return notify("错误!", "这棵树还没有砍!", 3)
        end
        if obj:FindFirstChild "Owner" and obj.Owner.Value == lp and obj:FindFirstChild "WoodSection" then
            wood = obj
            notify("Dark", "已选择树!", 3)
        end
        if obj.Name:find("Sawmill")then
            Saw=sawmill;
            notify("Dark","剧木机已选择",4)
        elseif obj.Parent.Name:find("Sawmill")or obj.Parent:FindFirstChild"BlockageAlert"then
           Saw=obj.Parent
           notify("Dark","剧木机已选择",4)
        end
    end)
    repeat task.wait(.01) until wood and Saw ~= nil
    ModTree:Disconnect()
    ModTree = nil
    s = true
    local SawC = Saw.Particles.CFrame + Vector3.new(0.7, 0,0)
    local cu,cw= 0,nil
    for p, I in next, wood:GetChildren() do
        if I.Name == "WoodSection" then
            if I.ID.Value > cu then
                cu = I.ID.Value
                cw=I
           end
       end
    end
    for p, I in next, wood:GetChildren() do
        if I.Name == "WoodSection" then
            for p, b in next, I.ChildIDs:GetChildren() do
                if b.Value ==cu then
                    cv = I
                end
            end
        end
    end
    wait() 
    local tool= 0
    for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then
      tool=tool+1
    end
  end
  if tool==0 then
    return
    notify("白","你需要斧头",4)
  end


  for i,v in pairs (lp.Backpack:GetChildren()) do
    if v.Name ~= "BlueprintTool"then

      too = v
    end
  end
    local toolname
  for i ,v in pairs (too:GetChildren()) do
    if v.Name=="ToolName" the
