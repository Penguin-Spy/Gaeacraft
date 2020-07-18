#detect change
execute if entity @s[tag=gaeacraft.cct.cart] store success score Success CustomCraftingT run data modify entity @s ArmorItems[3].tag.Items set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items
execute if entity @s[tag=!gaeacraft.cct.cart] store success score Success CustomCraftingT run data modify entity @s ArmorItems[3].tag.Items set from block ~ ~ ~ Items
execute if score Success CustomCraftingT matches 1 run function custom_crafting_table:table/change/main



