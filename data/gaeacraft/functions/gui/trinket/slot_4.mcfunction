clear @s minecraft:structure_void

recipe take @s[tag=gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/4
recipe give @s[tag=gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/4
recipe give @s[tag=gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/4
recipe take @s[tag=!gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/4
recipe take @s[tag=!gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/4
recipe give @s[tag=!gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/4

replaceitem entity @s inventory.0 minecraft:structure_void 4