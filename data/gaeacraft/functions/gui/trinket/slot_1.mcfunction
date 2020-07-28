clear @s minecraft:structure_void
say slot 1
recipe take @s[tag=gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/1
recipe give @s[tag=gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/1
recipe give @s[tag=gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/1
recipe take @s[tag=!gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/1
recipe take @s[tag=!gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/1
recipe give @s[tag=!gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/1

replaceitem entity @s inventory.0 minecraft:structure_void 4