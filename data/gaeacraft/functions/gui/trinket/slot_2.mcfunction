clear @s minecraft:structure_void

recipe take @s[tag=gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/2
recipe give @s[tag=gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/2
recipe give @s[tag=gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/2
recipe take @s[tag=!gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/2
recipe take @s[tag=!gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/2
recipe give @s[tag=!gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/2

replaceitem entity @s inventory.0 minecraft:structure_void 4