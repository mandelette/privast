local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/potatoei/Site-19-GUI/main/GUI%20BACKUP.lua"))()
local ws = workspace
local Forums = Library.new("SCP: Facility Breach GUI")
local main = Forums:NewSection("Items")
local misc = Forums:NewSection('misc')
local lplr = game.Players.LocalPlayer
local function notifyfb(title, text, duration)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title,
		Text = text,
		Duration = duration
	})
end
if game.PlaceId ~= 10192723897 then
	print('Not in the right game!')
	return
end

local items = {
	AK47 = "AK47",
	BerettaM9 = "Beretta M9",
	Bloodreaver = "Bloodreaver",
	Candy = "Candy",
	Glock = "Glock",
	HK417 = "HK417",
	HoneyBadger = "Honey Badger",
	L86 = "L86 LSW",
	M16A4 = "M16A4",
	M1911 = "M1911",
	M4A1 = "M4A1",
	MP9 = "MP9",
	Magnum = "Magnum",
	Maxim9 = "Maxim 9",
	Medicine = "Medicine",
	Medkit = "Medkit",
	Milkshake = "Milkshake",
	Polaris = "Polaris",
	PumpShotgun = "PumpShotgun",
	Radiance = "Radiance",
	Railgun = "Railgun",
	Scar_L = "Scar L",
	SCP_268 = "SCP-268",
	SCP_500 = "SCP-500",
	SPAS12 = "Spas-12",
	Saiga12 = "Saiga-12",
	UMP45 = "UMP45",
	Eagle = "Desert Eagle",
	LVTNN57 = "LVTNN-57",
	RPK = "RPK",
	goofy = "goofy gun",
	sniper = "sniper",
	Tempest = "Tempest",
}

for i, v in pairs(items) do
	main:NewButton(v, function()
		local item = ws:FindFirstChild(v)
		if item then
			if item:IsA("Tool") then
				lplr.Character.Humanoid:EquipTool(item)
			end
		else
			notifyfb('Item Not Found', 'Item not found, try again!', 5)
		end
	end)
end

main:NewButton("Level-1", function()
	for i, v in pairs(ws:GetChildren()) do
		if v:IsA("Tool") and v.Name == "Keycard" and v:FindFirstChild("CardLevel") and v.CardLevel.Value == 1 then
			lplr.Character.Humanoid:EquipTool(v)
			break
		end
	end
end)

--notify('Item Not Found', 'Item not found, try again!', 5)
main:NewButton("Level-2", function()
	for i, v in pairs(ws:GetChildren()) do
		if v:IsA("Tool") and v.Name == "Keycard" and v:FindFirstChild("CardLevel") and v.CardLevel.Value == 2 then
			lplr.Character.Humanoid:EquipTool(v)
			break
		end
	end
end)

main:NewButton("Level-3", function()
	for i, v in pairs(ws:GetChildren()) do
		if v:IsA("Tool") and v.Name == "Keycard" and v:FindFirstChild("CardLevel") and v.CardLevel.Value == 3 then
			lplr.Character.Humanoid:EquipTool(v)
			break
		end
	end
end)

main:NewButton("Level-4", function()
	for i, v in pairs(ws:GetChildren()) do
		if v:IsA("Tool") and v.Name == "Keycard" and v:FindFirstChild("CardLevel") and v.CardLevel.Value == 4 then
			lplr.Character.Humanoid:EquipTool(v)
			break
		end
	end
end)

main:NewButton("Level-5", function()
	for i, v in pairs(ws:GetChildren()) do
		if v:IsA("Tool") and v.Name == "Keycard" and v:FindFirstChild("CardLevel") and v.CardLevel.Value == 5 then
			lplr.Character.Humanoid:EquipTool(v)
			break
		end
	end
end)

misc:NewButton("Infinite Stamina", function()
	local InfStamina = false
	if InfStamina == false then
		lplr.Character.Stamina.MaxStamina.Value = 99999
		lplr.Character.Stamina.NewStamina.Value = 99999
		notifyfb("Infinite Stamina", "Enabled",5)
	end
end)

misc:NewButton("Escape", function()
	lplr.Character.HumanoidRootPart.CFrame = workspace.CurrentMap.Surface.FacilityEscapePart.CFrame
end)

misc:NewButton("Escape Area-51", function()
	lplr.Character.HumanoidRootPart.CFrame = workspace.CurrentMap.FacilityEscapePart.CFrame
end)
misc:NewButton("Escape Pocket Dimension", function()
	local escape
	for i, v in pairs(workspace.CurrentMap.PocketDimension:GetDescendants()) do
		if v:IsA("Part") and v.Name == "PDEscapePart" then
			escape = v
			break 
		end
	end
	
	if escape then
		lplr.Character.HumanoidRootPart.CFrame = escape.CFrame
	else
		notifyfb('Pocket Dimension Error', 'No Pocket Dimension found.', 5)
	end
end)

--lo
