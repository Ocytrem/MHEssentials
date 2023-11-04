local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ocy's Miners Haven Essentials", HidePremium = false, IntroText = "Made by Ocy", SaveConfig = false, ConfigFolder = "MHN"})

_G.L1 = true
_G.L2 = true
_G.L3 = true
_G.Reb = true


function L1()
while _G.L1 == true do
    wait(0.5)
    for i, v in workspace.Tycoons:GetChildren() do
        if v.Owner.Value == game.Players.LocalPlayer.Name then
            local base = v:GetChildren()
                if #base < 6 then
                    local args = {
                        [1] = "Load",
                        [2] = "Layout1"
                    }
    
                    game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
                end
            end
        end
    end
end
    
function L2()
    while _G.L2 == true do
        wait(0.5)
        for i, v in workspace.Tycoons:GetChildren() do
            if v.Owner.Value == game.Players.LocalPlayer.Name then
                local base = v:GetChildren()
                    if #base < 6 then
                        local args = {
                            [1] = "Load",
                            [2] = "Layout2"
                        }
        
                        game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
                    end
                end
            end
        end
    end
    
function L3()
while _G.L3 == true do
    wait(0.5)
    for i, v in workspace.Tycoons:GetChildren() do
        if v.Owner.Value == game.Players.LocalPlayer.Name then
            local base = v:GetChildren()
                if #base < 6 then
                    local args = {
                        [1] = "Load",
                        [2] = "Layout3"
                    }
    
                    game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
                end
            end
        end
    end
end
    
function Reb()
    while _G.Reb == true do
        wait(0.5)
        local args = {
            [1] = 26
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Rebirth"):InvokeServer(unpack(args))
    end
end


local AutoTab = Window:MakeTab({
    Name = "Automation",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AutoTab:AddToggle({
	Name = "Auto Loadout 1",
	Default = false,
	Callback = function(Value)
		_G.L1 = Value
        L1()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Loadout 2",
	Default = false,
	Callback = function(Value)
		_G.L2 = Value
        L2()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Loadout 3",
	Default = false,
	Callback = function(Value)
		_G.L3 = Value
        L3()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.Reb = Value
        Reb()
	end    
})



OrionLib:Init()
