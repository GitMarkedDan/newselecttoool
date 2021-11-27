print(pcall(function()
    ST_selected = {}
    ST_stage = 0
    local pos = Vector3.new(0,0,0)
    local Player = game.Players.LocalPlayer
    --wait(3)

    local boxframe = Instance.new("Frame")
    boxframe.Parent = game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object
    boxframe.Name = "boxframe"
    boxframe.Size = UDim2.new(1, 0, 1, 0)
    boxframe.BackgroundTransparency = 1
    boxframe.BorderSizePixel = 0
    boxframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local cframe = Instance.new("TextButton")
    cframe.Name = "cframe"
    cframe.Selectable = false
    cframe.ZIndex = 6
    cframe.Size = UDim2.new(0.550885, 0, 0.09, 0)
    cframe.BackgroundTransparency = 1
    cframe.Position = UDim2.new(0.1761235, 0, 0.3364926, 0)
    cframe.Active = false
    cframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    cframe.FontSize = Enum.FontSize.Size14
    cframe.TextSize = 14
    cframe.TextColor3 = Color3.fromRGB(248, 248, 248)
    cframe.Text = "Use CFrame"
    cframe.TextWrap = true
    cframe.Font = Enum.Font.SourceSansBold
    cframe.TextWrapped = true
    cframe.TextScaled = true
    cframe.Parent = boxframe
    
    local on = Instance.new("BoolValue")
    on.Name = "on"
    on.Parent = cframe
    
    local icon = Instance.new("ImageLabel")
    icon.Name = "icon"
    icon.ZIndex = 6
    icon.Size = UDim2.new(1, 0, 1, 0)
    icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
    icon.BackgroundTransparency = 1
    icon.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.ImageColor3 = Color3.fromRGB(255, 170, 170)
    icon.ImageRectOffset = Vector2.new(128, 0)
    icon.ImageRectSize = Vector2.new(128, 128)
    icon.Image = "rbxassetid://1447370003"
    icon.Parent = cframe
    
    local outline = Instance.new("TextLabel")
    outline.Name = "outline"
    outline.ZIndex = 5
    outline.Size = UDim2.new(1, 0, 1, 0)
    outline.BackgroundTransparency = 1
    outline.Position = UDim2.new(0, 0, 0.05, 0)
    outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline.FontSize = Enum.FontSize.Size14
    outline.TextTransparency = 0.8
    outline.TextSize = 14
    outline.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline.Text = "Use CFrame"
    outline.TextWrap = true
    outline.Font = Enum.Font.SourceSansBold
    outline.TextWrapped = true
    outline.TextScaled = true
    outline.Parent = cframe
    
    local resize = Instance.new("TextButton")
    resize.Name = "resize"
    resize.Selectable = false
    resize.ZIndex = 6
    resize.Size = UDim2.new(0.550885, 0, 0.09, 0)
    resize.BackgroundTransparency = 1
    resize.Position = UDim2.new(0.1761235, 0, 0.2426477, 0)
    resize.Active = false
    resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    resize.FontSize = Enum.FontSize.Size14
    resize.TextSize = 14
    resize.TextColor3 = Color3.fromRGB(248, 248, 248)
    resize.Text = "Can Resize"
    resize.TextWrap = true
    resize.Font = Enum.Font.SourceSansBold
    resize.TextWrapped = true
    resize.TextScaled = true
    resize.Parent = boxframe
    
    local outline1 = Instance.new("TextLabel")
    outline1.Name = "outline"
    outline1.ZIndex = 5
    outline1.Size = UDim2.new(1, 0, 1, 0)
    outline1.BackgroundTransparency = 1
    outline1.Position = UDim2.new(0, 0, 0.05, 0)
    outline1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline1.FontSize = Enum.FontSize.Size14
    outline1.TextTransparency = 0.8
    outline1.TextSize = 14
    outline1.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline1.Text = "Can Resize"
    outline1.TextWrap = true
    outline1.Font = Enum.Font.SourceSansBold
    outline1.TextWrapped = true
    outline1.TextScaled = true
    outline1.Parent = resize
    
    local icon1 = Instance.new("ImageLabel")
    icon1.Name = "icon"
    icon1.ZIndex = 6
    icon1.Size = UDim2.new(1, 0, 1, 0)
    icon1.SizeConstraint = Enum.SizeConstraint.RelativeYY
    icon1.BackgroundTransparency = 1
    icon1.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
    icon1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon1.ImageColor3 = Color3.fromRGB(170, 255, 170)
    icon1.ImageRectSize = Vector2.new(128, 128)
    icon1.Image = "rbxassetid://1447370003"
    icon1.Parent = resize
    
    local on1 = Instance.new("BoolValue")
    on1.Name = "on"
    on1.Value = true
    on1.Parent = resize
    
    local lock = Instance.new("TextButton")
    lock.Name = "lock"
    lock.Selectable = false
    lock.ZIndex = 6
    lock.Size = UDim2.new(0.550885, 0, 0.09, 0)
    lock.BackgroundTransparency = 1
    lock.Position = UDim2.new(0.176, 0, 0.429, 0)
    lock.Active = false
    lock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    lock.FontSize = Enum.FontSize.Size14
    lock.TextSize = 14
    lock.TextColor3 = Color3.fromRGB(248, 248, 248)
    lock.Text = "Lock Position"
    lock.TextWrap = true
    lock.Font = Enum.Font.SourceSansBold
    lock.TextWrapped = true
    lock.TextScaled = true
    lock.Parent = boxframe
    
    local on2 = Instance.new("BoolValue")
    on2.Name = "on"
    on2.Parent = lock
    
    local icon2 = Instance.new("ImageLabel")
    icon2.Name = "icon"
    icon2.ZIndex = 6
    icon2.Size = UDim2.new(1, 0, 1, 0)
    icon2.SizeConstraint = Enum.SizeConstraint.RelativeYY
    icon2.BackgroundTransparency = 1
    icon2.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
    icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon2.ImageColor3 = Color3.fromRGB(255, 170, 170)
    icon2.ImageRectOffset = Vector2.new(128, 0)
    icon2.ImageRectSize = Vector2.new(128, 128)
    icon2.Image = "rbxassetid://1447370003"
    icon2.Parent = lock
    
    local outline2 = Instance.new("TextLabel")
    outline2.Name = "outline"
    outline2.ZIndex = 5
    outline2.Size = UDim2.new(1, 0, 1, 0)
    outline2.BackgroundTransparency = 1
    outline2.Position = UDim2.new(0, 0, 0.05, 0)
    outline2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline2.FontSize = Enum.FontSize.Size14
    outline2.TextTransparency = 0.8
    outline2.TextSize = 14
    outline2.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline2.Text = "Lock Position"
    outline2.TextWrap = true
    outline2.Font = Enum.Font.SourceSansBold
    outline2.TextWrapped = true
    outline2.TextScaled = true
    outline2.Parent = lock
    
    local rel = Instance.new("TextButton")
    rel.Name = "rel"
    rel.Selectable = false
    rel.ZIndex = 6
    rel.Size = UDim2.new(0.550885, 0, 0.09, 0)
    rel.BackgroundTransparency = 1
    rel.Position = UDim2.new(0.176, 0, 0.522, 0)
    rel.Active = false
    rel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    rel.FontSize = Enum.FontSize.Size14
    rel.TextSize = 14
    rel.TextColor3 = Color3.fromRGB(248, 248, 248)
    rel.Text = "Can Resize Unscalable Objects"
    rel.TextWrap = true
    rel.Font = Enum.Font.SourceSansBold
    rel.TextWrapped = true
    rel.TextScaled = true
    rel.Parent = boxframe
    
    local on3 = Instance.new("BoolValue")
    on3.Name = "on"
    on3.Parent = rel
    
    local icon3 = Instance.new("ImageLabel")
    icon3.Name = "icon"
    icon3.ZIndex = 6
    icon3.Size = UDim2.new(1, 0, 1, 0)
    icon3.SizeConstraint = Enum.SizeConstraint.RelativeYY
    icon3.BackgroundTransparency = 1
    icon3.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
    icon3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon3.ImageColor3 = Color3.fromRGB(255, 170, 170)
    icon3.ImageRectOffset = Vector2.new(128, 0)
    icon3.ImageRectSize = Vector2.new(128, 128)
    icon3.Image = "rbxassetid://1447370003"
    icon3.Parent = rel
    
    local outline3 = Instance.new("TextLabel")
    outline3.Name = "outline"
    outline3.ZIndex = 5
    outline3.Size = UDim2.new(1, 0, 1, 0)
    outline3.BackgroundTransparency = 1
    outline3.Position = UDim2.new(0, 0, 0.05, 0)
    outline3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline3.FontSize = Enum.FontSize.Size14
    outline3.TextTransparency = 0.8
    outline3.TextSize = 14
    outline3.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline3.Text = "Can Resize Unscalable Objects"
    outline3.TextWrap = true
    outline3.Font = Enum.Font.SourceSansBold
    outline3.TextWrapped = true
    outline3.TextScaled = true
    outline3.Parent = rel
    
    local delete = Instance.new("TextButton")
    delete.Name = "delete"
    delete.Selectable = false
    delete.ZIndex = 6
    delete.Size = UDim2.new(0.625, 0, 0.09, 0)
    delete.BackgroundTransparency = 1
    delete.Position = UDim2.new(0.18, 0, 0.708, 0)
    delete.Active = false
    delete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    delete.FontSize = Enum.FontSize.Size14
    delete.TextSize = 14
    delete.TextColor3 = Color3.fromRGB(248, 0, 4)
    delete.Text = "DELETE ALL SELECTED"
    delete.TextWrap = true
    delete.Font = Enum.Font.SourceSansBold
    delete.TextWrapped = true
    delete.TextScaled = true
    delete.Parent = boxframe
    
    local outline4 = Instance.new("TextLabel")
    outline4.Name = "outline"
    outline4.ZIndex = 5
    outline4.Size = UDim2.new(1, 0, 1, 0)
    outline4.BackgroundTransparency = 1
    outline4.Position = UDim2.new(0, 0, 0.05, 0)
    outline4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline4.FontSize = Enum.FontSize.Size14
    outline4.TextTransparency = 0.8
    outline4.TextSize = 14
    outline4.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline4.Text = "DELETE ALL SELECTED"
    outline4.TextWrap = true
    outline4.Font = Enum.Font.SourceSansBold
    outline4.TextWrapped = true
    outline4.TextScaled = true
    outline4.Parent = delete
    
    local key = Instance.new("TextButton")
    key.Name = "key"
    key.Selectable = false
    key.ZIndex = 6
    key.Size = UDim2.new(0.550885, 0, 0.09, 0)
    key.BackgroundTransparency = 1
    key.Position = UDim2.new(0.176, 0, 0.615, 0)
    key.Active = false
    key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    key.FontSize = Enum.FontSize.Size14
    key.TextSize = 14
    key.TextColor3 = Color3.fromRGB(248, 248, 248)
    key.Text = "Enable Keybinds"
    key.TextWrap = true
    key.Font = Enum.Font.SourceSansBold
    key.TextWrapped = true
    key.TextScaled = true
    key.Parent = boxframe
    
    local on4 = Instance.new("BoolValue")
    on4.Name = "on"
    on4.Parent = key
    on4.Value = true
    
    local icon4 = Instance.new("ImageLabel")
    icon4.Name = "icon"
    icon4.ZIndex = 6
    icon4.Size = UDim2.new(1, 0, 1, 0)
    icon4.SizeConstraint = Enum.SizeConstraint.RelativeYY
    icon4.BackgroundTransparency = 1
    icon4.Position = UDim2.new(1.0637609, 0, -0.1141541, 0)
    icon4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon4.ImageColor3 = Color3.fromRGB(170, 255, 170)
    icon4.ImageRectOffset = Vector2.new(0, 0)
    icon4.ImageRectSize = Vector2.new(128, 128)
    icon4.Image = "rbxassetid://1447370003"
    icon4.Parent = key
    
    local outline5 = Instance.new("TextLabel")
    outline5.Name = "outline"
    outline5.ZIndex = 5
    outline5.Size = UDim2.new(1, 0, 1, 0)
    outline5.BackgroundTransparency = 1
    outline5.Position = UDim2.new(0, 0, 0.05, 0)
    outline5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    outline5.FontSize = Enum.FontSize.Size14
    outline5.TextTransparency = 0.8
    outline5.TextSize = 14
    outline5.TextColor3 = Color3.fromRGB(0, 0, 0)
    outline5.Text = "Enable Keybinds"
    outline5.TextWrap = true
    outline5.Font = Enum.Font.SourceSansBold
    outline5.TextWrapped = true
    outline5.TextScaled = true
    outline5.Parent = key
    
    local truebox = Instance.new("Part")
    truebox.Parent = game:GetService("ReplicatedFirst")
    truebox.Name = "selbox"
    truebox.BottomSurface = Enum.SurfaceType.Smooth
    truebox.TopSurface = Enum.SurfaceType.Smooth
    truebox.Transparency = 0.6
    truebox.Color = Color3.fromRGB(172, 0, 143)
    truebox.Material = Enum.Material.SmoothPlastic
    truebox.Size = Vector3.new(0,0,0)
    truebox.Position = Vector3.new(0,0,0)
    truebox.Anchored = true

    local SelectionBox = Instance.new("SelectionBox")
    SelectionBox.Color3 = Color3.fromRGB(172, 0, 143)
    SelectionBox.SurfaceColor3 = Color3.fromRGB(13, 105, 172)
    SelectionBox.Adornee = truebox
    SelectionBox.Parent = truebox
    SelectionBox.LineThickness = 0.15
    SelectionBox.Transparency = 0
    
    local dat = Instance.new("Folder")
    dat.Name = "option"
    dat.Parent = truebox
    for i,v in ipairs(boxframe:GetChildren()) do
        v.MouseEnter:Connect(function()
            textsel = v
        end)
    end
    for i,v in ipairs(boxframe:GetChildren()) do
        if v:FindFirstChild("icon") then
            v.MouseButton1Click:Connect(function()
                if v.on.Value then
                    v.icon.ImageColor3 = Color3.fromRGB(255, 170, 170)
                    v.on.Value = false
                    v.icon.ImageRectOffset = Vector2.new(128,0)
                else
                    v.icon.ImageColor3 = Color3.fromRGB(170, 255, 170)
                    v.on.Value = true
                    v.icon.ImageRectOffset = Vector2.new(0,0)
                end
            end)
        end
    end
    delete.MouseButton1Click:Connect(function()
         ST_delete()
        pause()
    end)
    function ST_createit(a)
        local translist = {[a] = a.Transparency}
        for i,v in ipairs(a:GetChildren()) do
            if v.Name == "vis" or v.Name == "vis2" then
                translist[v] = v.Transparency
            end
        end
        ST_selected[a] = {
            posdiff = a.Position - box.Position,
            rotdiff = a.Orientation - box.Orientation,
            relscalediff = a.Size / box.Size,
            scalediff = a.Size - box.Size,
            cframediff = box.CFrame:ToObjectSpace(a.CFrame),
            origtrans = translist
        }
        a.Transparency = (1 + a.Transparency) / 2
        for i,v in ipairs(a:GetChildren()) do
            if v.ClassName == "Texture" or v.ClassName == "Decal" then
                v.Transparency = 0.5
            elseif v.Name == "vis" or v.Name == "vis2" then
                v.Transparency = (1 + v.Transparency) / 2
            end
        end
        if not a:FindFirstChild("angle") then
            local val = Instance.new("Vector3Value")
            val.Name = "angle"
            val.Parent = a
            val.Value = a.Orientation + Vector3.new(90,0,0)
        end
    end
    
    function ST_clone()
        for i,v in pairs(ST_selected) do
            ST_transchange(i)
            local cloneder = i:Clone()
            cloneder.Position = Vector3.new(math.floor(cloneder.Position.X + 0.5),math.floor(cloneder.Position.Y + 0.5),math.floor(cloneder.Position.Z + 0.5))
            cloneder.Parent = game.workspace.MAKE.place
            i.Transparency = (1 + i.Transparency) / 2
            for i2,v2 in ipairs(i:GetChildren()) do
                if v2.ClassName == "Texture" or v2.ClassName == "Decal" then
                    v2.Transparency = 0.5
                elseif v2.Name == "vis" or v2.Name == "vis2" then
                    v2.Transparency = (1 + v2.Transparency) / 2
                end
            end
        end
    end
    
    function ST_transchange(a)
        a.Transparency = ST_selected[a]["origtrans"][a]
        for i2,v2 in pairs(a:GetChildren()) do
            if v2.ClassName == "Texture" or v2.ClassName == "Decal" then
                v2.Transparency = 0
            elseif v2.Name == "vis" or v2.Name == "vis2" then
                v2.Transparency = ST_selected[a]["origtrans"][v2]
            end
        end
    end
    
    function ST_delete()
        box:Destroy()
        for i,v in pairs(ST_selected) do i:Destroy() end
        ST_selected = {}
        ST_stage = 0
    end
    
    function ST_deselec()
        box:Destroy()
        for i,v in pairs(ST_selected) do
            ST_transchange(i)
            ST_selected[i] = nil
        end
        ST_stage = 0
    end
    
    local tempfunc = transition
    transition = function(a,b)
        local suc,er = pcall(function()
            if map.Name == "MAKE" and box and box.Parent then
                 ST_deselec()
            end
            tempfunc(a,b)
        end)
        if not suc then error(er) end
    end
    
    local tempfunc2 = formatlevel
    formatlevel = function(a)
        local suc,er = pcall(function()
            if map.Name == "MAKE" and box and box.Parent then
                 ST_deselec()
            end
            return tempfunc2()
        end)
        if not suc then
            if not a then error(er)
            else er = false end
        end
        return er
    end
    
    function ST_emergency(message)
        local succ
        local err = "Not in LC, something went extremely wrong..."
        if map.Name == "MAKE" then
            succ,err = pcall(formatlevel,true)
            if not err then
                for i,v in pairs(map.place:GetChildren()) do
                    if not(string.sub(v.Name,1,1) == "P" and tonumber(string.sub(v.Name,2,-1))) then
                        v:Destroy()
                    end        
                end
                succ,err = pcall(formatlevel,true)
                if not err then
                    err = "Unobtainable"
                end
                succ = false
            end        
        end
        print("An error has occured! I can't copy your level code to clipboard, but I can print it. This error won't be reported, so plz screenshot it")
        print("If it says 'unobtainable' just know i tried")
        print(err)
    end
    
    Game:GetService("LogService").MessageOut:Connect(function(message, typer)
        if typer == Enum.MessageType.MessageError then
            ST_emergency(message)
        end
    end)
    
    local func = toattack
    toattack = function(a,b,c)
        local suc,er = pcall(function()
            if make.near and make.mode == "create" and make.near.Name == "selbox" then
                ST_clone()
                return
            end
            pcall(func,a,b,c) -- pcalled for 1 < ...
            if make.mode == "select" then
                ST_stage = ST_stage + 1
                if ST_stage == 2 then
                    ignorelist = {workspace.char,workspace.MAKE.arrow,workspace.MAKE.sel,workspace.MAKE.grid,workspace.MAKE.kill}
                    for i,v in ipairs(game.Workspace:FindPartsInRegion3WithIgnoreList(Region3.new(box.Position - box.Size * 0.5,box.Position + box.Size * 0.5),ignorelist,math.huge)) do
                        if v.Parent == workspace.MAKE.place then
                            ST_createit(v)
                        end
                    end
                    box.Parent = game.workspace.MAKE.place
                elseif ST_stage == 1 then
                    box = truebox:Clone()
                    box.Parent = workspace
                elseif make.hold then
                    local near = make.hold
                    if ST_selected[near] then
                        ST_transchange(near)
                        ST_selected[near] = nil
                    else ST_createit(near) end
                    make.hold = nil
                else  ST_deselec() end
            end
            if map and map.Name == "MAKE" and paused and make.near and make.near.Name == "selbox" and make.mode == "option" then
                for i,v in ipairs(game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object:GetChildren()) do
                    if v.ClassName == "Frame" then
                        v.Visible = false
                    end		
                end
                boxframe.Visible = true
            end
        end)
        if not suc then error(er) end
    end
    
    function ST_roundvec3(a) return Vector3.new(math.floor(a.X/2+0.5)*2,math.floor(a.Y/2+0.5)*2,math.floor(a.Z/2+0.5)*2) end
    
    function ST_createmakebutton(name,color,pos,image,cfunc,dfunc)
        local button = Instance.new("ImageButton")
        button.Parent = Player.PlayerGui.UI.MAKE
        button.BackgroundTransparency = 1
        button.Image = "rbxassetid://1555990934"
        button.Size = UDim2.new(1, 0, 1, 0)
        button.Selectable = true
        button.Position = pos
        button.Name = name
        button.SizeConstraint = Enum.SizeConstraint.RelativeYY
        
        local col = Instance.new("Color3Value")
        col.Parent = game:GetService("ReplicatedFirst").maps.MAKE.arrow
        col.Value = color
        col.Name = name
        
        local label = Instance.new("TextLabel")
        label.Parent = button
        label.Name = "label"
        label.ZIndex = 2
        label.Size = UDim2.new(1, 0, 0.3, 0)
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0, 0, 1, 0)
        label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        label.FontSize = Enum.FontSize.Size14
        label.TextSize = 14
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Text = name
        label.TextWrap = true
        label.Font = Enum.Font.SourceSansBold
        label.TextWrapped = true
        label.TextScaled = true
    
        local outline = Instance.new("TextLabel")
        outline.Name = "outline"
        outline.Size = UDim2.new(1, 0, 1, 0)
        outline.BackgroundTransparency = 1
        outline.Position = UDim2.new(0, 0, 0.05, 0)
        outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        outline.FontSize = Enum.FontSize.Size14
        outline.TextTransparency = 0.8
        outline.TextSize = 14
        outline.TextColor3 = Color3.fromRGB(0, 0, 0)
        outline.Text = name
        outline.TextWrap = true
        outline.Font = Enum.Font.SourceSansBold
        outline.TextWrapped = true
        outline.TextScaled = true
        outline.Parent = label
        
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Parent = button
        ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.Image = image
        ImageLabel.ImageRectOffset = Vector2.new(0, 0)
        ImageLabel.ImageRectSize = Vector2.new(512, 512)
        ImageLabel.Active = true
        
        button.MouseButton1Click:Connect(function()
            make.mode = name
        end)
    end
    
    uis.InputBegan:Connect(function(input)
        if map then
            if map.Name == "MAKE" then
                if input.KeyCode == Enum.KeyCode.RightBracket then
                    if not paused then
                        pause(true)
                        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.pause.bg3.object:GetChildren()) do
                            if v.ClassName == "Frame" then
                                v.Visible = false
                            end		
                        end
                        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.UI.pause.bg3:GetChildren()) do
                            if v.ClassName == "Frame" then
                                v.Visible = false
                            end		
                        end
                        
                        Player.PlayerGui.UI.pause.bg.Visible = false
                        Player.PlayerGui.UI.pause.bg.Active = false
                        Player.PlayerGui.UI.pause.bg3.Visible = true
                        Player.PlayerGui.UI.pause.bg3.Active = true
                        
                        boxframe.Active = true
                        boxframe.Visible = true
                        boxframe.Parent.Active = true
                        boxframe.Parent.Visible = true
                        boxframe.Parent.Parent.Active = true
                        boxframe.Parent.Parent.Visible = true
                    else
                        pause()
                    end
                end
                if box and box.Parent and key.on.Value then 
                    if input.KeyCode == Enum.KeyCode.Z then ST_clone()
                    elseif input.KeyCode == Enum.KeyCode.X then  ST_deselec()
                    elseif input.KeyCode == Enum.KeyCode.C then  ST_delete() end
                end
            end
        end
    end)
    ST_createmakebutton("select",Color3.new(150,255,0),UDim2.new(1.2,0,0,0),"rbxassetid://7409871696")
    
    local sign = game:GetService("ReplicatedFirst").maps.hub["Sheldon Sign"]
    sign.tx.Value = "Ok Imma give you a quick tutorial on how select tool works."
    sign.tx.tx.Value = "Select two corners and you can use different tools such as move, scale, or rotate to modify the box."
    sign.tx.tx.tx.Value = "When the box is active, cloning it will dupe anything in it, deleting the box or clicking again while not near anything with the select tool will remove the box."
    sign.tx.tx.tx.tx.Value = "Also you can select objects not in the box by clicking them with the select tool, same with deselecting already selected objects"
    sign.tx.tx.tx.tx.beebo:Destroy()
    sign.tx.tx.tx.tx.tx.Value = "There's also a properties menu that you can activate by clicking on the box with options, or pressing ]"
    sign.tx.tx.tx.tx.tx.tx.Value = "did i #ask"
    
    local poke = game:GetService("ReplicatedFirst").maps.hub["Poké"]
    poke.tx.Value = "Poke but not actually Poke here, I was sent to explain the properties menu."
    poke.tx.tx.Value = "There is a Enable Keybinds Option, letting you clone with Z, remove the select box with X, and delete everything in the box with C."
    poke.tx.tx.tx.Value = "The Can Resize option is probably self explanatory, Use CFrame rotates objects relative to the box (You'll understand when you use it)."
    local txtt = Instance.new("StringValue", poke.tx.tx.tx)
    txtt.Value = "Lock Position locks all objects in their current positions, and Can Resize Unscalable Objects protects things like candies from being scaled."
    txtt.Name = "tx"
    local ftxt = Instance.new("StringValue", txtt)
    -- I was not working on it -> ftxt.Value = "Final note: Always keep a backup of your levels. This mod/exploit could block you from exporting if it bugs out. (Also precise positioning is a lil weird with this, I'm workin on it)"
    ftxt.Value = "Final note: Always keep a backup of your levels. I've added in a few safegaurds, but still."
    ftxt.Name = "tx"
    
    function ST_compare(a,b)
        if typeof(a) == "table" and typeof(b) == "table" and #a == #b then
            if #a ~= 0 then
                for i,v in pairs(a,true) do
                    if v ~= b[i] then return false end
                end
            end
            return true
        end
        return false
    end

    local oldpair = pairs
    pairs = function(a,b)
        if b then return oldpair(a) end
        if map.Name == "MAKE" then
            local thing = workspace:FindPartsInRegion3WithWhiteList(Region3.new(workspace.char.Position - Vector3.new(2, 2, 2), workspace.char.Position + Vector3.new(2, 2, 2)), map.place:GetChildren())
            local temp = ST_compare(a,thing)
            if temp and not(#a == 0) then
                if make.mode == "select" then
                    if ST_stage == 0 or ST_stage == 1 then
                        a = {}
                    elseif table.find(a,box) then
                        table.remove(a,table.find(a,box))
                    end
                elseif make.mode ~= "option" then
                    for i,v in pairs(a,true) do
                        if ST_selected[v] then
                            table.remove(a,table.find(a,v))
                        end
                    end
                end
            end
        end
        return oldpair(a)
    end
    pause(true)
    textbuttons["hub2"]()
    print("Ran successfully! Warp to hub and talk to sheldon/poké and they'll give advice about this mod/exploit")
    while wait() do
        if map.Name == "MAKE" then
            if ST_stage >= 2 then
                if not (box and box.Parent) then  ST_deselec()
                else
                    for i,v in pairs(ST_selected) do
                        if not lock.on.Value then 
                            if cframe.on.Value then
                                i.CFrame = box.CFrame:ToWorldSpace(v["cframediff"])
                                i.Position = Vector3.new(math.floor(i.Position.X+0.5),math.floor(i.Position.Y+0.5),math.floor(i.Position.Z+0.5))
                            else
                                i.Position = box.Position + v["posdiff"]
                                i.Orientation = box.Orientation + v["rotdiff"]
                            end
                        end
                        if resize.on.Value and (rel.on.Value or (i.Name ~= "P0" and i.Name ~= "P1")) then
                            i.Size = box.Size + v["scalediff"]
                        end
                        if i:FindFirstChild("angle") then
                            i.angle.Value = Vector3.new(i.Orientation.X%360,i.Orientation.Y%360,i.Orientation.Z%360) + Vector3.new(90,0,0)
                        end
                        for v1469, v1470 in pairs(i:GetChildren()) do
                            if v1470.Name == "vis" or v1470.Name == "vis2" then
                                v1470.CFrame = i.CFrame * CFrame.new(v1470.offset.Value) * (v1470:FindFirstChild("r") and CFrame.Angles(math.rad(v1470.r.Value.X), math.rad(v1470.r.Value.Y), math.rad(v1470.r.Value.Z)) or CFrame.new())
                            end			
                        end
                    end
                end
            else
                ST_truepos =  ST_roundvec3(game.workspace.MAKE.arrow.Position - Vector3.new(0,3,0))
                if make.mode == "select" then
                    if ST_stage == 1 then
                        size = pos - ST_truepos
                        box.Size = Vector3.new(math.abs(size.X),math.abs(size.Y),math.abs(size.Z))
                        box.Position = (pos + ST_truepos)/2
                    else
                        pos = ST_truepos
                    end
                end
            end
        end
    end
end))
-- I swear I make myself go more insane for every "final patch" I do
-- also some vars are left global cuz maybe somone wants to getsenv it idk
