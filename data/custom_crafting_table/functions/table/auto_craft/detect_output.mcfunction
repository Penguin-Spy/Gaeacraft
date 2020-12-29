data remove block ~ ~-1 ~ Items[{tag:{CCT_fill:1}}]
execute if block ~ ~-2 ~ hopper run data remove block ~ ~-2 ~ Items[{tag:{CCT_fill:1}}]

execute if entity @s[tag=!gaeacraft.cct.cart] run item block ~ ~ ~ container.0 replace minecraft:feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1} 2
execute if entity @s[tag=gaeacraft.cct.cart] run item entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.0 replace minecraft:feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1} 2

execute if entity @s[tag=CCT_Auto_Craft_Enabled] unless data block ~ ~-1 ~ Items[4] run function custom_crafting_table:table/auto_craft/test_craft

