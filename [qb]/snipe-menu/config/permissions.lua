
--[[
    All the roles here can access the admin menu
    Only the GOD can set the panels for the other roles
    There are 3 options
    1. God -> can access all the commands
    
    IMPORTANT: DO NOT REMOVE GOD ROLE, IF YOU DO SO, YOU WILL NOT BE ABLE TO ACCESS THE ADMIN MENU AT ALL

    If you have a new role, you can add it here and select to give either God, Admin or Moderator or any of the custom perms you want

    eg. ["new_role"] = "God",
    eg. ["dev"] = "Admin",
]]--
Config.GodRoles = {
    ["god"] = "God", -- This is the biggest role (DO NOT REMOVE THIS ROLE)
    ["admin"] = "Admin", -- This is just a custom role
    ["mod"] = "Moderator", -- This is just a custom role
    -- ["new_role1"] = "Test", -- if you want to add more roles just add them here
    -- ["new_role2"] = "Test", -- if you want to add more roles just add them here
    -- ["new_role3"] = "Test",
    -- if you want to add more roles just add them here
    -- ["NEW_ROLE_HERE"] = "God",
    -- ["NEW_ROLE_HERE"] = "Admin",
    -- ["NEW_ROLE_HERE"] = "Moderator",
}

-- Original Permissions table for information on all possible available options
Config.Permissions = {
    ["license:6d3b6254a50416697dcaa91878e2eb03d9112302"] = "god", -- the role god, admin or mod should be the key from Config.GodRoles which means the values that are added in square brackets.
    ["fivem:1234"] = "god",
    ["steam:1234"] = "god",
    ["124584938326312"] = "god", -- discord roles (copy the role id and paste it here) (If you want to use the discord roles, you need to add the bot token and server id in sv_perms.lua at the top)
    ["XY123456"] = "god", -- citizenid for qbcore
    ["char1:12334"] = "god", -- charid for ESX


    ["license:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5"] = "god",  --- DX


    ["license:785b2cb3dc205f35007f7551708a8f72ca502162"] = "god",    --- Huzaifa

    ["discord:676142935338909728"] = "god",    --- Sajjad
    -- ["license:6d3b6254a50416697dcaa91878e2eb03d9112302"] = {"mod", "admin"}, -- the role god, admin or mod should be the key from Config.GodRoles which means the values that are added in square brackets.
    -- ["license:1234"] = "admin",
    -- ["license:1234"] = "mod",
    -- ["license:1234"] = "new_role1",
    -- ["license:1234"] = "new_role2",
    -- ["license:1234"] = "new_role3",
}

