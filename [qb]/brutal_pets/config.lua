----------------------------------------------------------------------------------------------
--------------------------------------| BRUTAL PETS :) |--------------------------------------
----------------------------------------------------------------------------------------------

--[[
Hi, thank you for buying our script, We are very grateful!

For help join our Discord server:     https://discord.gg/85u2u5c8q9
More informations about the script:   https://docs.brutalscripts.com
--]]

Config = {
    Core = 'QBCORE',  -- ESX / QBCORE | Other core setting on the 'core' folder and the client and server utils.lua
    BrutalNotify = false, -- Buy here: (4€+VAT) https://store.brutalscripts.com | Or set up your own notify >> cl_utils.lua
    Target = 'oxtarget', -- '3dtext' / 'oxtarget' / 'qb-target'
    LocallyInvisible = true, -- true or false | If your ANTICHEAT ban the player with 'Invisible' reason, set to false!
    AfkZoomDisabled = true,  -- true or false
    BallProp = 'w_am_baseball',
    BallWeapon = 'WEAPON_BALL',

    MaxPetCount = 3, -- Player Maximum Pets count
    SendHomeAutomativally = true, -- if the player left behind the pet, it will send to home automatically
    DeletePetAfterDie = false, -- if this is true, when the player's pet dies, it is deleted from the database and cannot be revived.
    IdentifierType = 'steam',  -- steam / license / discord / core (default core's identifier) | What you can copy in the admin menu!
    
    UsePermission = false,
    Permission = {
        'discord:811436286006657025',
        'discord:692782027866636308',

        --[[ TYPES ]]--
        -- 'steam:123456789',
        -- 'license:123456789',
        -- 'discord:123456789'
    },

    Shop = {
        -- Settings for this PAID MLO: https://unclejust.tebex.io/package/5074561
        Model = 'a_f_m_soucent_02',
        Coords = vector4(563.729, 2752.991, 42.877, 182.545),
        PetPosition = { ['left/right'] = -9.5,  ['forward/backward'] = 1.4,  ['up/down'] = -0.98, ['heading'] = 270 },
        Blip = {use = true, label = 'Pet Shop', size = 0.7, sprite = 442, color = 48},

       -- Settings for this FREE MLO: https://forum.cfx.re/t/release-sandy-pet-shop-mlo/2172530
        --Model = 'a_f_m_soucent_02',
        --Coords = vector4(563.2282, 2753.2305, 42.8770, 183.7384),
        --PetPosition = { ['left/right'] = 0.0,  ['forward/backward'] = 3.0,  ['up/down'] = -0.98, ['heading'] = 270 },
        --Blip = {use = true, label = 'Pet Shop', size = 0.7, sprite = 442, color = 48},
    },

    StatusUpdateTime = 3,  -- Pet Status update time in minutes, when the Pet is out! 
    Medikit = {Progressbar = true, Label = 'Using the medikit...', Time = 7, anim = {'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'}, Cooldown = 10},
    Items = {
        [1] = {Item = 'pet_water', Label = 'Pet Water', Type = 'drink', price = 100, value = 20}, -- You can't give the same Item to two different Items in the shop
        [2] = {Item = 'pet_food', Label = 'Pet Food', Type = 'food', price = 100, value = 20},
        [3] = {Item = 'pet_medikit', Label = 'Pet Medikit', Type = 'medikit', price = 1000},
        [4] = {Item = 'WEAPON_BALL', Label = 'Pet Ball', Type = 'ball', price = 1000},
    },

    TaskMenuPosition = { -- The position of the panel which shows the task of the pet
        top = 80,   -- in percentages
        left = 25,
    },

    Commands = {

        PetMenu = {
            Command = 'petmenu', 
            Suggestion = 'Open Pet Menu', 
            Control = 'Delete'  -- Controls list:  https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        },

        MenuPosition = {
            Command = 'petmenupos', 
            Suggestion = 'Pet Menu Position edit', 
        },

        MenuHide = {
            AlwaysStayHide = false,
            Command = 'petmenuhide', 
            Suggestion = 'Pet Menu Hide', 
        },

        -- Admin Command
        GetPlayerIdentifier = {
            Use = true,
            Command = 'getidentifier', 
        },

        PetControl = {
            PetSpawn = {
                Command = 'petspawn', 
                Suggestion = 'Spawn the selected pet',
                Control = '' }, -- If '' the value it won't register any contol to it

            PetSleep = {
                Command = 'petsleep', 
                Suggestion = 'Send the selected pet to sleep',
                Control = '' },

            PetSit = {
                Command = 'petsit', 
                Suggestion = 'Sits down/stands up the selected pet',
                Control = '' },

            PetFollow = {
                Command = 'petfollow', 
                Suggestion = 'The selected pet start/stop following',
                Control = '' },

            PetAttack = {
                Command = 'petattack', 
                Suggestion = 'The selected pet start/stop attacking',
                Control = '' },
        },
    },

    SniffOutDrogs = {
        Command = 'petsniff', 
        Suggestion = 'Pet will sniff out the drogs', 
        Control = '',
        Jobs = {'police', 'sheriff', 'fbi'}, -- Ranks which can use this function
        Drogs = {'heroin', 'iron'} -- Drogs which your pet can sniff out
    },

    PetBlip = {Use = true, ShortRange = true, colour = 34, label = 'Pet:', size = 0.7, sprite = 1 },  -- Blip to a Pet if Pet is out

    Pets = {
        -- The first pet's job have to be false (Jobs = false)
        [1] = {label = 'Husky', model = 'A_C_Husky', type = 'BigDogs', price = {money = 0, premium = 100}, Skin = {0, 2}, Collar = {3, 0}, Jobs = false},
        [2] = {label = 'Rottweiler', model = 'A_C_Rottweiler', type = 'BigDogs', price = {money = 0, premium = 0}, Skin = {4, 2}, Collar = {3, 3}, Jobs = false},
        [3] = {label = 'Retriever', model = 'A_C_Retriever', type = 'BigDogs', price = {money = 500, premium = 100}, Skin = {0, 3}, Collar = {3, 0}, Jobs = false},
        [4] = {label = 'Westy', model = 'A_C_Westy', type = 'SmallDogs', price = {money = 500, premium = 100}, Skin = {4, 2}, Collar = {3, 5}, Jobs = false},
        [5] = {label = 'Pug', model = 'A_C_Pug', type = 'SmallDogs', price = {money = 500, premium = 100}, Skin = {4, 3}, Collar = {3, 5}, Jobs = false},
        [6] = {label = 'Poodle', model = 'A_C_Poodle', type = 'SmallDogs', price = {money = 500, premium = 100}, Skin = {0, 0}, Collar = {3, 0}, Jobs = false},
        [7] = {label = 'Panther', model = 'A_C_Panther', type = 'BigCat', price = {money = 500, premium = 100}, Skin = {0, 0}, Collar = {3, 0}, Jobs = false},
        [8] = {label = 'Lion', model = 'A_C_MtLion', type = 'BigCat', price = {money = 500, premium = 100}, Skin = {0, 2}, Collar = {3, 0}, Jobs = false},
        [9] = {label = 'Cat', model = 'A_C_Cat_01', type = 'SmallCat', price = {money = 500, premium = 100}, Skin = {0, 2}, Collar = {3, 0}, Jobs = false},
        [10] = {label = 'K9 Dog', model = 'A_C_shepherd', type = 'PoliceDogs', price = {money = 500, premium = 0}, Skin = {0, 2}, Collar = {3, 3}, Jobs = {'police', 'sheriff', 'fbi'}},
        -- If you want to use the K9 dog you have to download the ped model: https://forum.cfx.re/uploads/short-url/jG6S1jPCPgG48VqBghwuxrkyl9z.rar
    },

    PetConfig = {
        SmallDogs = {
            Tasks = {Attack = false, Ball = true, Sniff = false},
            SitAnim = {"creatures@pug@amb@world_dog_sitting@idle_a", "idle_b"},
            OtherAnims = {
                [1] = {"Bark", "creatures@pug@amb@world_dog_barking@idle_a", "idle_a"},
                [2] = {"Bark 2", "creatures@pug@amb@world_dog_barking@idle_a", "idle_b"},
                [3] = {"Bark", "creatures@pug@amb@world_dog_barking@idle_a", "idle_c"},
            }
        },

        BigDogs = {
            Tasks = {Attack = true, Ball = true, Sniff = false},
            SitAnim = {"creatures@retriever@amb@world_dog_sitting@idle_a", "idle_b"},
            OtherAnims = {
                [1] = {"Normal Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_a"},
                [2] = {"Standing Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_b"},
                [3] = {"Rotate Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_c"},
                [4] = {"Sit 1", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_a"},
                [5] = {"Sit 2", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_b"},
                [6] = {"Sit 3", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_c"},
                [7] = {"Sit 4", "creatures@retriever@amb@world_dog_sitting@base", "base"},
                [8] = {"Indicate Ahead", "creatures@rottweiler@indication@", "indicate_ahead"},
                [9] = {"Indicate High", "creatures@rottweiler@indication@", "indicate_high"},
                [10] = {"Indicate Low", "creatures@rottweiler@indication@", "indicate_low"},
                [11] = {"Petting Chop", "creatures@rottweiler@tricks@", "petting_chop"},
                [12] = {"Fetch Drop", "CREATURES@ROTTWEILER@MOVE", "fetch_drop"},
                [13] = {"Fetch Pickup", "CREATURES@ROTTWEILER@MOVE", "fetch_pickup"},
            }
        },

        SmallCat = {
            Tasks = {Attack = false, Ball = false, Sniff = false},
            SitAnim = {"creatures@cat@amb@world_cat_sleeping_ledge@idle_a", "idle_a"},
            OtherAnims = {
                [1] = {"Sleep", "creatures@cat@amb@world_cat_sleeping_ground@base", "base"},
                [2] = {"Looking up", "creatures@cat@move", "idle_dwn"},
                [3] = {"Stealth", "creatures@cat@move", "idle_upp"},

            }
        },

        BigCat = {
            Tasks = {Attack = true, Ball = true, Sniff = false},
            SitAnim = {"creatures@cougar@amb@world_cougar_rest@idle_a", "idle_c"},
            OtherAnims = {
                -- We did not find.
            }
        },

        PoliceDogs = {
            Tasks = {Attack = true, Ball = true, Sniff = true},
            SitAnim = {"creatures@retriever@amb@world_dog_sitting@idle_a", "idle_b"},
            OtherAnims = {
                [1] = {"Normal Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_a"},
                [2] = {"Standing Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_b"},
                [3] = {"Rotate Bark", "creatures@retriever@amb@world_dog_barking@idle_a", "idle_c"},
                [4] = {"Sit 1", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_a"},
                [5] = {"Sit 2", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_b"},
                [6] = {"Sit 3", "creatures@retriever@amb@world_dog_sitting@idle_a", "idle_c"},
                [7] = {"Sit 4", "creatures@retriever@amb@world_dog_sitting@base", "base"},
                [8] = {"Indicate Ahead", "creatures@rottweiler@indication@", "indicate_ahead"},
                [9] = {"Indicate High", "creatures@rottweiler@indication@", "indicate_high"},
                [10] = {"Indicate Low", "creatures@rottweiler@indication@", "indicate_low"},
                [11] = {"Petting Chop", "creatures@rottweiler@tricks@", "petting_chop"},
                [12] = {"Fetch Drop", "CREATURES@ROTTWEILER@MOVE", "fetch_drop"},
                [13] = {"Fetch Pickup", "CREATURES@ROTTWEILER@MOVE", "fetch_pickup"},
            }
        },
    },

    BlackListedVehicles = {
        'bf400',
        -- You can add more
    },

    -----------------------------------------------------------
    -----------------------| TRANSLATE |-----------------------
    -----------------------------------------------------------

    MoneyForm = '$',
    PremiumForm = 'P',
    
    Texts = {
        [1] = {'To open pet shop menu, press ~w~[~g~E~w~]', 38}, -- 'TEXT', 'CONTROL'       Controls: https://docs.fivem.net/docs/game-references/controls/

        ------- Show Help Notify -------

        [2] = {'Press ~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~ ~b~to send the pet to a place', 182},
        [3] = {'Press ~INPUT_CELLPHONE_LEFT~ and ~INPUT_CELLPHONE_RIGHT~ ~o~to rotate the Pet', 174, 175},
        [4] = {'Press ~INPUT_FRONTEND_RRIGHT~ ~r~to cancel', 194},
        [5] = {'~b~Pet can go to the designated place~w~\nPress ~INPUT_DETONATE~ ~p~to the pet go there', 47},
        [6] = {'~b~Throw the ball away!~w~'},
        [7] = {'~y~Stay near to you pet to attack someone!~w~\nPress ~INPUT_FRONTEND_RRIGHT~ to ~r~cancel~w~ the attack', 194},
        [8] = {'~r~Control:~w~ ~INPUT_CELLPHONE_LEFT~ & ~INPUT_CELLPHONE_RIGHT~\n~b~Current Emote: ~w~', 174, 175, 191},
        [9] = {'~r~Control:~w~ ~INPUT_CELLPHONE_LEFT~ & ~INPUT_CELLPHONE_RIGHT~\n~b~Current Drog Type: ~w~', 174, 175, 191},
    },

    TargetTexts = {
        [1] = {'Open Shop Menu', 'fa-solid fa-basket-shopping'},
        [2] = {'Open Pet Menu', 'fa-solid fa-paw'},
    },

    Notify = { 
        [1] = {"PET MENU", "Your pet is still alive!", 5000, "error"}, -- Error = notify type, "Your pet is still alive!" = Message, 5000 = time, 5000 = 5 sec
        [2] = {"PET MENU", "Your pet is dead! Use a medikit item to revive it!", 5000, "warning"}, -- TYPE, MESSAGE, TIME
        [3] = {"PET MENU", "Your pet far away!", 5000, "error"},
        [4] = {"PET MENU", "You succesfully adopted the pet!", 5000, "success"},
        [5] = {"PET MENU", "You succesfully revived your pet!", 5000, "success"},
        [6] = {"PET MENU", "Feed or water your pet!", 5000, "warning"},
        [7] = {"PET MENU", "You have let free your pet!", 5000, "success"},
        [8] = {"PET MENU", "The pet name should be between 3-15 character!", 5000, "error"},
        [9] = {"PET MENU", "You already have a pet!", 5000, "error"},
        [10] = {"PET MENU", "You don't have a pet!", 5000, "error"},
        [11] = {"PET MENU", "Your pet is sleeping!", 5000, "error"},
        [12] = {"PET MENU", "You can't open the menu, because your pet is died! Go to the pet Hospital!", 5000, "error"},
        [13] = {"PET MENU", "You have gone too far!", 5000, "error"},
        [14] = {"PET MENU", "Your pet is sleeping! Send the pet out!", 5000, "error"},
        [15] = {"PET MENU", "Your pet is already out!", 5000, "error"},
        [16] = {"PET MENU", "You don't have enough money!", 5000, "error"},
        [17] = {"PET MENU", "You successfully used the pet Water!", 5000, "success"},
        [18] = {"PET MENU", "You successfully used the pet Food!", 5000, "success"},
        [19] = {"PET MENU", "Your PET is not hungry / thirsty!", 5000, "error"},
        [20] = {"PET MENU", "Successfully purchase!", 5000, "success"},
        [21] = {"PET MENU", "You don't have permission to open the Shop!", 5000, "error"},
        [22] = {"PET MENU", "You can't buy more pets!", 5000, "error"},
        [23] = {"PET MENU", "Your pet can't do it!", 5000, "error"},
        [24] = {"PET MENU", "There are no emotions available for this Pet!", 7000, "error"},
        [25] = {"PET MENU", "You have no ball in your hand!", 7000, "error"},
        [26] = {"PET MENU", "Invalid Player ID!", 7000, "error"},
        [27] = {"PET MENU", "Printed!", 7000, "success"},
        [28] = {"PET MENU", "You don't have permission to buy a K9 dog! Cause you're not cop!", 5000, "error"},
        [29] = {"PET MENU", "Your pet is dead forever!", 5000, "error"},
        [30] = {"PET MENU", "You don't have permission to do this!", 5000, "error"},
    },
 
    Instructions = {  -- Maximum 20 character!
        Follow = 'Follow',
        SitDown = 'Sit down',
        LayDown = 'Lay down',
        GoTo = 'Go to place',
        Sit = 'Sitting',
        Sleep = 'Go to sleeping',
        Ball = 'Plays with ball',
        Attack = 'Attacking',
        Play = 'Playing',
        Sniff = "Sniff's out drogs",
    }
}