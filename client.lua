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
 WarMenu.CreateSubMenu('Melee', 'ShopWeapon', 'Melee')
 WarMenu.CreateSubMenu('Pistol', 'ShopWeapon', 'Pistol')
 WarMenu.CreateSubMenu('Revolver', 'ShopWeapon', 'Revolver')
 WarMenu.CreateSubMenu('Repeater', 'ShopWeapon', 'Repeater')
 WarMenu.CreateSubMenu('Rifle', 'ShopWeapon', 'Rifle')
 WarMenu.CreateSubMenu('Shotgun', 'ShopWeapon', 'Shotgun')
 WarMenu.CreateSubMenu('Thrown', 'ShopWeapon', 'Thrown')
 WarMenu.CreateSubMenu('Other', 'ShopWeapon', 'Other')
 WarMenu.CreateSubMenu('Ammo', 'ShopWeapon', 'Ammo')
 WarMenu.SetSubTitle('ShopWeapon', 'Weapon list')
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		if WarMenu.IsMenuOpened('ShopWeapon') then
		if WarMenu.MenuButton('Melee', 'Melee') then end
			if WarMenu.MenuButton('Pistol', 'Pistol') then end
			if WarMenu.MenuButton('Revolver', 'Revolver') then end
			if WarMenu.MenuButton('Repeater', 'Repeater') then end
			if WarMenu.MenuButton('Rifle', 'Rifle') then end
			if WarMenu.MenuButton('Shotgun', 'Shotgun') then end
			if WarMenu.MenuButton('Thrown', 'Thrown') then end
			if WarMenu.MenuButton('Other', 'Other') then end
			if WarMenu.MenuButton('Ammo', 'Ammo') then end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Melee') then 
			if WarMenu.Button('Hatchet 18$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 18, 'WEAPON_MELEE_HATCHET', 1)
				elseif WarMenu.Button('Ancient Hatchet shotgun 25$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 25, 'WEAPON_MELEE_ANCIENT_HATCHET', 1)
				elseif WarMenu.Button('Viking Hatchet 30$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_MELEE_HATCHET_VIKING', 1)
				elseif WarMenu.Button('Hewing Hatchet 15$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 15, 'WEAPON_MELEE_HATCHET_HEWING', 1)
				elseif WarMenu.Button('Double-Bit Hatchet shotgun 20$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_MELEE_HATCHET_DOUBLE_BIT', 1)
				elseif WarMenu.Button('Rusted Double-Bit Hatchet 12$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 12, 'WEAPON_MELEE_HATCHET_DOUBLE_BIT_RUSTED', 1)
				elseif WarMenu.Button('Hunter Hatchet 18$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 18, 'WEAPON_MELEE_HATCHET_HUNTER', 1)
				elseif WarMenu.Button('Rusted Hunter Hatchet 12$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 12, 'WEAPON_MELEE_HATCHET_HUNTER_RUSTED', 1)
				elseif WarMenu.Button('Knife 10$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 10, 'WEAPON_MELEE_KNIFE', 1)
				elseif WarMenu.Button('John-Knife 17$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 17, 'WEAPON_MELEE_KNIFE_JOHN', 1)
				elseif WarMenu.Button('Jawbone-Knife 20$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_MELEE_KNIFE_JAWBONE', 1)
				elseif WarMenu.Button('Miner-Knife 15$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 15, 'WEAPON_MELEE_KNIFE_MINER', 1)
				elseif WarMenu.Button('Civil War-Knife 27$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 27, 'WEAPON_MELEE_KNIFE_CIVIL_WAR', 1)
				elseif WarMenu.Button('Bear-Knife 40$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 40, 'WEAPON_MELEE_KNIFE_BEAR', 1)
				elseif WarMenu.Button('Vampire-Knife 35$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 35, 'WEAPON_MELEE_KNIFE_VAMPIRE', 1)
				elseif WarMenu.Button('Machete 35$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 35, 'WEAPON_MELEE_MACHETE', 1)
				elseif WarMenu.Button('Broken Sword 25$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 25, 'WEAPON_MELEE_BROKEN_SWORD', 1)
				elseif WarMenu.Button('Cleaver 25$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 25, 'WEAPON_MELEE_CLEAVER', 1)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Pistol') then
			if WarMenu.Button('Volcanic Pistol 60 $ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 60, 'WEAPON_PISTOL_VOLCANIC', 1)
				elseif WarMenu.Button('Semi-auto Pistol 120$ level require [10]') then
				TriggerServerEvent('bberry:buyweapon', 120, 'WEAPON_PISTOL_SEMIAUTO', 10)
				elseif WarMenu.Button('Mauser Pistol 90$ level require [10]') then
				TriggerServerEvent('bberry:buyweapon', 90, 'WEAPON_PISTOL_MAUSER', 10)
				elseif WarMenu.Button('Mauser Drunk Pistol 130$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 130, 'WEAPON_PISTOL_MAUSER_DRUNK', 12)
				elseif WarMenu.Button('M1899 Pistol 75$ level require [9]') then
				TriggerServerEvent('bberry:buyweapon', 75, 'WEAPON_PISTOL_M1899', 9)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Revolver') then 
			if WarMenu.Button('Double action Revolver 150$ level require [5]') then
				TriggerServerEvent('bberry:buyweapon', 150, 'WEAPON_REVOLVER_DOUBLEACTION', 5)
				elseif WarMenu.Button('Double action Exotic 175$ level require [6]') then
				TriggerServerEvent('bberry:buyweapon', 175, 'WEAPON_REVOLVER_DOUBLEACTION_EXOTIC', 6)
				elseif WarMenu.Button('Double action Gambler 185$ level require [7]') then
				TriggerServerEvent('bberry:buyweapon', 185, 'WEAPON_REVOLVER_DOUBLEACTION_GAMBLER', 7)
				elseif WarMenu.Button('Double action Micah 195$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 195, 'WEAPON_REVOLVER_DOUBLEACTION_MICAH', 8)
				elseif WarMenu.Button('Cattleman Revolver 50$ level require [2]') then
				TriggerServerEvent('bberry:buyweapon', 50, 'WEAPON_REVOLVER_CATTLEMAN', 2)
				elseif WarMenu.Button('Cattleman John 75$ level require [4]') then
				TriggerServerEvent('bberry:buyweapon', 75, 'WEAPON_REVOLVER_CATTLEMAN_JOHN', 4)
				elseif WarMenu.Button('Cattleman Mexican 85$ level require [6]') then
				TriggerServerEvent('bberry:buyweapon', 85, 'WEAPON_REVOLVER_CATTLEMAN_MEXICAN', 6)
				elseif WarMenu.Button('Cattleman Pig 95$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 95, 'WEAPON_REVOLVER_CATTLEMAN_PIG', 8)
				elseif WarMenu.Button('Lemat 110$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 110, 'WEAPON_REVOLVER_LEMAT', 8)
				elseif WarMenu.Button('Highroller Revolver 520$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 520, 'WEAPON_REVOLVER_HIGHROLLER', 12)
				elseif WarMenu.Button('Schofield 155$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 155, 'WEAPON_REVOLVER_SCHOFIELD', 8)
				elseif WarMenu.Button('Schofield Golden 175$ level require [9]') then
				TriggerServerEvent('bberry:buyweapon', 175, 'WEAPON_REVOLVER_SCHOFIELD_GOLDEN', 9)
				elseif WarMenu.Button('Schofield Calloway 195$ level require [10]') then
				TriggerServerEvent('bberry:buyweapon', 195, 'WEAPON_REVOLVER_SCHOFIELD_CALLOWAY', 10)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Repeater') then
			if WarMenu.Button('Carbine 30 $ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_REPEATER_CARBINE', 1)
				elseif WarMenu.Button('Evans 90$ level require [6]') then
				TriggerServerEvent('bberry:buyweapon', 90, 'WEAPON_REPEATER_EVANS', 6)
				elseif WarMenu.Button('Henry 100$ level require [9]') then
				TriggerServerEvent('bberry:buyweapon', 100, 'WEAPON_REPEATER_HENRY', 9)
				elseif WarMenu.Button('Winchester 165$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 165, 'WEAPON_REPEATER_WINCHESTER', 12)
				elseif WarMenu.Button('Litchfield 165$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 165, 'WEAPON_REPEATER_LITCHFIELD', 12)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Rifle') then
			if WarMenu.Button('Varmint 30 $ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_RIFLE_VARMINT', 1)
				elseif WarMenu.Button('Bolt action rifle 130$ level require [9]') then
				TriggerServerEvent('bberry:buyweapon', 130, 'WEAPON_RIFLE_BOLTACTION', 9)
				elseif WarMenu.Button('Springfield 150$ level require [10]') then
				TriggerServerEvent('bberry:buyweapon', 150, 'WEAPON_RIFLE_SPRINGFIELD', 10)
				elseif WarMenu.Button('Carcano Sniper rifle 210$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 210, 'WEAPON_SNIPERRIFLE_CARCANO', 12)
				elseif WarMenu.Button('Rollingblock Sniper rifle 220$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 220, 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK', 12)
				elseif WarMenu.Button('Exotic Rollingblock Sniper rifle 230$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 230, 'WEAPON_SNIPERRIFLE_ROLLINGBLOCK_EXOTIC', 12)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Shotgun') then 
			if WarMenu.Button('Double barrel shotgun 90$ level require [3]') then
				TriggerServerEvent('bberry:buyweapon', 90, 'WEAPON_SHOTGUN_DOUBLEBARREL', 3)
				elseif WarMenu.Button('Double barrel Exotic shotgun 100$ level require [5]') then
				TriggerServerEvent('bberry:buyweapon', 100, 'WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC', 5)
				elseif WarMenu.Button('Sawed-off shotgun 70$ level require [2]') then
				TriggerServerEvent('bberry:buyweapon', 70, 'WEAPON_SHOTGUN_SAWEDOFF', 2)
				elseif WarMenu.Button('Pump shotgun 150$ level require [5]') then
				TriggerServerEvent('bberry:buyweapon', 150, 'WEAPON_SHOTGUN_PUMP', 5)
				elseif WarMenu.Button('Semi-automatic shotgun 260$ level require [12]') then
				TriggerServerEvent('bberry:buyweapon', 260, 'WEAPON_SHOTGUN_SEMIAUTO', 12)
				elseif WarMenu.Button('Repeater shotgun 180$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 180, 'WEAPON_SHOTGUN_REPEATING', 8)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Thrown') then
			if WarMenu.Button('Throwing knifes 20$ level require [3]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_THROWN_THROWING_KNIVES', 3)
				elseif WarMenu.Button('Tomahawk 20$ level require [8]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_THROWN_TOMAHAWK', 8)
				elseif WarMenu.Button('Ancient Tomahawk 25$ level require [9]') then
				TriggerServerEvent('bberry:buyweapon', 25, 'WEAPON_THROWN_TOMAHAWK_ANCIENT', 9)
				elseif WarMenu.Button('Dynamite 150$ level require [15]') then
				TriggerServerEvent('bberry:buyweapon', 150, 'WEAPON_THROWN_DYNAMITE', 15)
				elseif WarMenu.Button('Dynamite 150$ level require [15]') then
				TriggerServerEvent('bberry:buyweapon', 150, 'WEAPON_THROWN_MOLOTOV', 15)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Other') then
			if WarMenu.Button('Bow 120$ level require [10]') then
				TriggerServerEvent('bberry:buyweapon', 120, 'WEAPON_BOW', 10)
				elseif WarMenu.Button('Lasso 30$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 30, 'WEAPON_LASSO', 1)
				elseif WarMenu.Button('Moonshine Jug 10$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 10, 'WEAPON_MOONSHINEJUG', 1)
				elseif WarMenu.Button('Electric Lantern 10$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 10, 'WEAPON_MELEE_LANTERN_ELECTRIC', 1)
				elseif WarMenu.Button('Torch 10$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 10, 'WEAPON_MELEE_TORCH', 1)
				elseif WarMenu.Button('Fishing rod 20$ level require [1]') then
				TriggerServerEvent('bberry:buyweapon', 20, 'WEAPON_FISHINGROD', 1)
			end
			WarMenu.Display()
			elseif WarMenu.IsMenuOpened('Ammo') then
			if WarMenu.Button('Ammo for all type of weapons 10$') then
				TriggerServerEvent('bberry:buyammo', 10)
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

RegisterNetEvent('Message:missinglevel')	
AddEventHandler('Message:missinglevel', function()
local timer = 200
	while timer > 0 do
		Citizen.Wait(0)
		DrawTxt(Config.LevelMissing, 0.50, 0.90, 0.6, 0.6, true, 161, 3, 0, 255, true, 10000)
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
		'WEAPON_PISTOL_MAUSER',
		'WEAPON_REVOLVER_DOUBLEACTION',
		'WEAPON_REVOLVER_CATTLEMAN',
		'WEAPON_REVOLVER_LEMAT',
		'WEAPON_REVOLVER_HIGHROLLER',
		'WEAPON_REVOLVER_SCHOFIELD',
		'WEAPON_BOW'
				}
		Wait(1000)
		for k,v in pairs(vintova) do
			local weapon = GetHashKey(v)
			SetPedAmmo(GetPlayerPed(), weapon, 250)
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