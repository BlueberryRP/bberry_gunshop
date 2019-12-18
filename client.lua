keys = {
    ['G'] = 0x760A9C6F,
    ['S'] = 0xD27782E3,
    ['W'] = 0x8FD015D8,
	['H'] = 0x24978A28,
	['G'] = 0x5415BE48,
	['E'] = 0xDFF812F9
}



Citizen.CreateThread(function()
 WarMenu.CreateMenu('ShopWeapon', 'Gun Shop')
 WarMenu.CreateSubMenu('Vintovki', 'ShopWeapon', 'Rifle')
 WarMenu.CreateSubMenu('Shotgun', 'ShopWeapon', 'Shotgun')
 WarMenu.CreateSubMenu('Other', 'ShopWeapon', 'Other')
 WarMenu.CreateSubMenu('Ammo', 'ShopWeapon', 'Ammo')
 WarMenu.SetSubTitle('ShopWeapon', 'Weapon list')
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		if WarMenu.IsMenuOpened('ShopWeapon') then
			if WarMenu.MenuButton('Rifle', 'Vintovki') then end
			if WarMenu.MenuButton('Shotgun', 'Shotgun') then end
			if WarMenu.MenuButton('Other', 'Other') then end
			if WarMenu.MenuButton('Ammo', 'Ammo') then end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Vintovki') then
			if WarMenu.Button('Varmint 20 $ [1]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_RIFLE_VARMINT', 1)
				elseif WarMenu.Button('Bolt action rifle 50$ [1]') then
					TriggerServerEvent('bberry:buyweapon', 50, 'WEAPON_RIFLE_BOLTACTION', 1)
			end
				WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Shotgun') then 
			if WarMenu.Button('Double barrel shotgun 30$ [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_SHOTGUN_DOUBLEBARREL', 1)
				elseif WarMenu.Button('Sawed-off shotgun 30$ [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_SHOTGUN_SAWEDOFF', 1)
				elseif WarMenu.Button('Pump shotgun 50$ [1]') then
				TriggerServerEvent('bberry:buyweapon', 50, 'WEAPON_SHOTGUN_PUMP', 1)
				elseif WarMenu.Button('Semi-automatic shotgun 60$ [1]') then
				TriggerServerEvent('bberry:buyweapon', 60, 'WEAPON_SHOTGUN_SEMIAUTO', 1)
				elseif WarMenu.Button('Repeater shotgun 80$ [1]') then
				TriggerServerEvent('bberry:buyweapon', 80, 'WEAPON_SHOTGUN_REPEATING', 1)
			end
			WarMenu.Display()
				elseif WarMenu.IsMenuOpened('Other') then
					if WarMenu.Button('Lasso 10$') then
						TriggerServerEvent('bberry:buyweapon', 10, 'WEAPON_LASSO', 1)
						elseif WarMenu.Button('Throwing knifes 20$ [1]') then
						TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_THROWN_THROWING_KNIVES', 1)
						elseif WarMenu.Button('Tomahawk 20$ [1]') then
						TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_THROWN_TOMAHAWK', 1)
						elseif WarMenu.Button('Dynamite 50$ [1]') then
						TriggerServerEvent('bberry:buyweapon', 50, 'WEAPON_THROWN_DYNAMITE', 1)
					end
						WarMenu.Display()
						elseif WarMenu.IsMenuOpened('Ammo') then
					if WarMenu.Button('Ammo for all type of weapons 40$') then
						TriggerServerEvent('bberry:buyammo', 40)
					end
				WarMenu.Display()
		end
	for k,v in pairs(Config.Coords) do
			if Vdist(coords, v) < 2 then
				DrawTxt(Config.Shoptext, 0.50, 0.95, 0.6, 0.6, true, 255, 255, 255, 255, true, 10000)
				if IsControlJustReleased(0, keys['E']) then
					WarMenu.OpenMenu('ShopWeapon')
				end
			end
		end
	end
end)


RegisterNetEvent('Message:cancel')	
AddEventHandler('Message:cancel', function()
local timer = 200
	while timer > 0 do
		Citizen.Wait(0)
		DrawTxt(Config.NoMoney, 0.50, 0.90, 0.6, 0.6, true, 161, 3, 0, 255, true, 10000)
		timer = timer - 1
	end
end)

RegisterNetEvent('give:weapon')
AddEventHandler('give:weapon', function(weapon)
    Citizen.CreateThread(function()
        local weapon = GetHashKey(weapon)
		local playerPed = PlayerPedId()
        Wait(1000)
		GiveDelayedWeaponToPed(playerPed, weapon, 100, true, 2)
    end)
end)

RegisterNetEvent('give:weaponammo')
AddEventHandler('give:weaponammo', function()
	Citizen.CreateThread(function()
		vintova = {
		'WEAPON_RIFLE_VARMINT',
		'WEAPON_RIFLE_BOLTACTION',
		'WEAPON_RIFLE_SPRINGFIELD',
		'WEAPON_SHOTGUN_DOUBLEBARREL',
		'WEAPON_SHOTGUN_SAWEDOFF',
		'WEAPON_SHOTGUN_PUMP',
		'WEAPON_SHOTGUN_SEMIAUTO',
		'WEAPON_SHOTGUN_REPEATING',
		'WEAPON_PISTOL_VOLCANIC',
		'WEAPON_PISTOL_SEMIAUTO',
		'WEAPON_PISTOL_MAUSER'
				}
		Wait(1000)
		for k,v in pairs(vintova) do
			local weapon = GetHashKey(v)
			SetPedAmmo(GetPlayerPed(), weapon, 100)
		end
    end)
end)

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
 local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
	SetTextScale(w, h)
	SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 10);
	DisplayText(str, x, y)
end

Citizen.CreateThread(function()
	Wait(0)
	for k,v in pairs(Config.Coords) do
		Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v)
	end
end)
