--- <auto-generated>
---     Generated by the moonfly tool.  DO NOT EDIT!
--- </auto-generated>

local M={
    C2SLogin = 1,
    S2CLogin = 2,
    S2CErrorCode = 3,
    C2SEquip = 4,
    S2CEquip = 5,
    C2SUpgradeWeapon = 6,
    S2CUpgradeWeapon = 7,
    C2SGacha = 8,
    S2CGacha = 9,
    C2SPurchasePack = 10,
    S2CPurchasePack = 11,
    S2CUserData = 12,
    C2SBag = 13,
    S2CBag = 14,
    C2SUnEquip = 15,
    S2CUnEquip = 16,
    S2CUpdateMail = 17,
    C2SMailList = 18,
    S2CMailList = 19,
    C2SMailState = 20,
    S2CMailState = 21,
    C2SMailRecive = 22,
    S2CMailRecive = 23,
    C2SMailDelete = 24,
    S2CMailDelete = 25,
    C2SMailRecives = 26,
    S2CMailRecives = 27,
    C2SMailDeletes = 28,
    S2CMailDeletes = 29,
    C2SGM = 30,
    S2CGM = 31,
    C2SExchangeGift = 32,
    S2CExchangeGift = 33,

}

local forward = {
    C2SLogin = 'addr_user',
    C2SEquip = 'addr_user',
    C2SUpgradeWeapon = 'addr_user',
    C2SGacha = 'addr_user',
    C2SPurchasePack = 'addr_user',
    C2SBag = 'addr_user',
    C2SUnEquip = 'addr_user',
    C2SMailList = 'addr_mail',
    C2SMailState = 'addr_mail',
    C2SMailRecive = 'addr_mail',
    C2SMailDelete = 'addr_mail',
    C2SMailRecives = 'addr_mail',
    C2SMailDeletes = 'addr_mail',
    C2SGM = 'addr_user',
    C2SExchangeGift = 'addr_user',

}

local mt = { forward = forward }

mt.__newindex = function(_, name, _)
    local msg = "attemp index unknown message: " .. tostring(name)
    error(debug.traceback(msg, 2))
end

mt.__index = function(_, name)
    if name == "forward" then
        return forward
    end
    local msg = "attemp index unknown message: " .. tostring(name)
    error(debug.traceback(msg, 2))
end

return setmetatable(M,mt)
