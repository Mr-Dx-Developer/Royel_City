Config = {}

Config.Framework = 'QBCore'  -- QBCore or ESX or OLDQBCore or NewESX
Config.Map = 'rounded' -- rounded or standart
Config.Refresh = 'refreshud' -- HudRefresh

-- Vehicle Fuel
Config.GetVehFuel = function(vehicle)
    return GetVehicleFuelLevel(vehicle)  -- exports["LegacyFuel"]:GetFuel(Veh)
end

Config.Percentage = 2.23694 -- Speed Value Percentage [2.23694 - MP/H] [3.6 - KM/H]


-- Nitro Settings
Config.NitroItem = "nitrous"  -- Item to install nitro to a vehicle - noss
Config.NitroControl = "G"
Config.NitroForce = 40.0  -- Nitro force when player using nitro
Config.RemoveNitroOnpress = 2  -- Determines of how much you want to remove nitro when player press nitro key

-- Seatbelt Control
Config.SeatbeltControl = 'B'  -- Control switch for seat belt (Players can change the key according to their wishes)

-- Stress Mechanics
Config.StressChance = 0.1  -- Default: 10% -- Percentage Stress Chance When Shooting (0-1)
Config.MinimumStress = 50  -- Minimum Stress Level For Screen Shaking
Config.WhitelistedWeaponStress = {
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`
}

-- Stress Mechanics Control
Config.UseStress = false  -- If you set this to false, the stress HUD will be removed
Config.StressWhitelistJobs = {  -- Add here jobs you want to disable stress
    'police', 'ambulance'
}

-- Stress Mechanics Increment
Config.AddStress = {
    ["on_shoot"] = {
        min = 3,
        max = 5,
        enable = false,
    },
    ["on_fastdrive"] = {
        min = 1,
        max = 3,
        enable = false,
    },
}

-- Stress Mechanics Decrement
Config.RemoveStress = {
    ["on_eat"] = {
        min = 5,
        max = 10,
        enable = false,
    },
    ["on_drink"] = {
        min = 5,
        max = 10,
        enable = false,
    },
    ["on_swimming"] = {
        min = 5,
        max = 10,
        enable = false,
    },
    ["on_running"] = {
        min = 5,
        max = 10,
        enable = false,
    },
}

-- Speed-Based Stress
Config.MinimumSpeed = 10  -- Going Over This Speed Will Cause Stress
Config.MinimumSpeedUnbuckled = 50  -- Going Over This Speed Will Cause Stress
Config.DisablePoliceStress = true  -- If true, will disable stress for people with the police job

-- Stress Intensity Levels
Config.Intensity = {
    [1] = {
        min = 50,
        max = 60,
        intensity = 1500,
    },
    [2] = {
        min = 60,
        max = 70,
        intensity = 2000,
    },
    [3] = {
        min = 70,
        max = 80,
        intensity = 2500,
    },
    [4] = {
        min = 80,
        max = 90,
        intensity = 2700,
    },
    [5] = {
        min = 90,
        max = 100,
        intensity = 3000,
    },
}

-- Stress Effect Interval
Config.EffectInterval = {
    [1] = {
        min = 50,
        max = 60,
        timeout = math.random(50000, 60000),
    },
    [2] = {
        min = 60,
        max = 70,
        timeout = math.random(40000, 50000),
    },
    [3] = {
        min = 70,
        max = 80,
        timeout = math.random(30000, 40000),
    },
    [4] = {
        min = 80,
        max = 90,
        timeout = math.random(20000, 30000),
    },
    [5] = {
        min = 90,
        max = 100,
        timeout = math.random(15000, 20000),
    },
}

function GetFramework()
    local Get = nil
    if Config.Framework == "ESX" then
        while Get == nil do
            TriggerEvent('esx:getSharedObject', function(Set) Get = Set end)
            Citizen.Wait(0)
        end
    elseif Config.Framework == "NewESX" then
        Get = exports['es_extended']:getSharedObject()
    elseif Config.Framework == "QBCore" then
        Get = exports["qb-core"]:GetCoreObject()
    elseif Config.Framework == "OldQBCore" then
        while Get == nil do
            TriggerEvent('QBCore:GetObject', function(Set) Get = Set end)
            Citizen.Wait(200)
        end
    end
    return Get
end
