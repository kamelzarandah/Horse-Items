local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()

    Citizen.Wait(1000)


    VorpInv.RegisterUsableItem("consumable_haycube", function(data)

        VorpInv.subItem(data.source, "consumale_haycube", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're using some hay", 5000)
        TriggerClientEvent("syn:haycube", data.source)
    end)

    VorpInv.RegisterUsableItem("carrot", function(data)

        VorpInv.subItem(data.source, "carrot", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You're using some carrots", 5000)
        TriggerClientEvent("syn:carrot", data.source)
    end)


    VorpInv.RegisterUsableItem("horsebrush", function(data)
        TriggerClientEvent("syn:brush", data.source)
    end)


    VorpInv.RegisterUsableItem("stim", function(data)

        VorpInv.subItem(data.source, "stim", 1)
        TriggerClientEvent("vorp:TipRight", data.source, "You gave your horse stimulants", 5000)
        TriggerClientEvent("syn:horsestimulant", data.source)
    end)

end)

