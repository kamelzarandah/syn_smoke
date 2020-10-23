local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

VorpInv.RegisterUsableItem("cigarette", function(data)
    VorpInv.subItem(data.source, "cigarette", 1)
    TriggerClientEvent("syn:smokecig", data.source)
end)

VorpInv.RegisterUsableItem("cigar", function(data)
    VorpInv.subItem(data.source, "cigar", 1)
    TriggerClientEvent("syn:smokecigar", data.source)
end)