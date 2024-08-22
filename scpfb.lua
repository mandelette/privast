local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/potatoei/Site-19-GUI/main/GUI%20BACKUP.lua"))()
local ws = workspace
local Forums = Library.new("SCP: Facility Breach GUI")
local main = Forums.NewSection("Click here!")
local lplr = game.Players.LocalPlayer

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
	SCP_500 = "SCP-500",
	SPAS12 = "Spas-12",
	Saiga12 = "Saiga-12",
	UMP45 = "UMP45",
}

for i, v in pairs(items) do
	main:NewButton(v, function()
		local item = ws:FindFirstChild(v)
		if item then
			if item:IsA("Tool") then
				lplr.Character.Humanoid:EquipTool(item)
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "Item Not Found",
				Text = "Item not found, try again.",
				Duration = 5
			})
		end
	end)
end
