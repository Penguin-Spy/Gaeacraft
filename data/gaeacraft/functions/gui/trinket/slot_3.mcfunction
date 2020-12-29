clear @s minecraft:structure_void

recipe take @s[tag=gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/3
recipe give @s[tag=gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/3
recipe give @s[tag=gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/3
recipe take @s[tag=!gaeacraft.gui_holding.trinket.feather] gaeacraft:trinkets/feather/3
recipe take @s[tag=!gaeacraft.gui_holding.trinket.apple] gaeacraft:trinkets/apple/3
recipe give @s[tag=!gaeacraft.gui_holding.trinket] gaeacraft:trinkets/empty/3

item entity @s inventory.0 replace minecraft:structure_void 4