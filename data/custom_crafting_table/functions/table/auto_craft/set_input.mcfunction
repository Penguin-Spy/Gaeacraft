
execute if entity @s[tag=!gaeacraft.cct.cart] run data modify block ~ ~ ~ Items set from storage custom_crafting_table:craft Items
execute if entity @s[tag=gaeacraft.cct.cart] run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items set from storage custom_crafting_table:craft Items
data modify entity @s ArmorItems[3].tag.Items set from storage custom_crafting_table:craft Items