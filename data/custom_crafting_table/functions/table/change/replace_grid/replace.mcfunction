#setblock 16942001 1 -14269007 yellow_shulker_box
execute unless entity @s[tag=CCT_Display_Craft] run replaceitem entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1}
execute if score Book_Slot8 CustomCraftingT matches 0 run replaceitem entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.8 feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1}
execute if score Book_Slot8 CustomCraftingT matches 1 run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:8b}].Count set value 64
function custom_crafting_table:table/change/replace_grid/recursive


execute if score Book_Slot8 CustomCraftingT matches 0 run data remove entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:8b}]
data remove entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{tag:{CCT_fill:1}}]
execute if score Book_Slot8 CustomCraftingT matches 1 run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:8b}].Count set value 1
data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items append from storage custom_crafting_table:craft ClearSlotUseless[]

