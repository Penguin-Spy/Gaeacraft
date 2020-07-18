execute unless entity @s[tag=CCT_Display_Craft] if data storage custom_crafting_table:craft Items[{Slot:15b}] run function custom_crafting_table:table/custom_craft/output/replace_output

execute store result score Count CustomCraftingT if data storage custom_crafting_table:craft Items[]

execute if entity @s[tag=CCT_Display_Craft] unless data storage custom_crafting_table:craft Items[{Slot:15b}] run function custom_crafting_table:table/custom_craft/clear/clear_craft_slot
execute if entity @s[tag=CCT_Display_Craft] if data storage custom_crafting_table:craft Items[{Slot:15b}] run function custom_crafting_table:table/custom_craft/output/test

execute if data storage custom_crafting_table:craft Items[{Slot:8b}] run scoreboard players remove Count CustomCraftingT 1
execute if data storage custom_crafting_table:craft Items[{Slot:15b}] run scoreboard players remove Count CustomCraftingT 1
execute store result score GUI CustomCraftingT if data storage custom_crafting_table:craft Items[{tag:{CCT_GUI_Item:1}}]

scoreboard players operation Count CustomCraftingT -= GUI CustomCraftingT

data remove storage custom_crafting_table:craft Items[{Slot:15b}]
execute if entity @s[tag=!gaeacraft.cct.cart] run function gaeacraft:gui/check_crafting_barrel
execute if entity @s[tag=gaeacraft.cct.cart] run function gaeacraft:gui/check_crafting_cart

#tag @s remove CCT_Display_Craft
#tag @s remove CCT_Damage_Craft
#tag @s remove CCT_Bucket_Craft
#
#execute if score Count CustomCraftingT matches 1 run function #custom_crafting_table:craft/1
#execute if score Count CustomCraftingT matches 2 run function #custom_crafting_table:craft/2
#execute if score Count CustomCraftingT matches 3 run function #custom_crafting_table:craft/3
#execute if score Count CustomCraftingT matches 4 run function #custom_crafting_table:craft/4
#execute if score Count CustomCraftingT matches 5 run function #custom_crafting_table:craft/5
#execute if score Count CustomCraftingT matches 6 run function #custom_crafting_table:craft/6
#execute if score Count CustomCraftingT matches 7 run function #custom_crafting_table:craft/7
#execute if score Count CustomCraftingT matches 8 run function #custom_crafting_table:craft/8
#execute if score Count CustomCraftingT matches 9 run function #custom_crafting_table:craft/9


data modify entity @s ArmorItems[3].tag.Display set from storage custom_crafting_table:craft Items[{Slot:15b}]

execute if entity @s[tag=CCT_Display_Craft] if data storage custom_crafting_table:craft Items[{Slot:8b,id:"minecraft:book"}] run function custom_crafting_table:table/change/book/set_craft

execute if entity @s[tag=CCT_Auto_Craft_Enabled] unless data storage custom_crafting_table:craft Items[{Slot:8b,id:"minecraft:knowledge_book"}] run data remove storage custom_crafting_table:craft Items[{tag:{CCT_GUI_Item:1}}]
tag @s remove CCT_Auto_Craft_Enabled
execute if data storage custom_crafting_table:craft Items[{Slot:8b,id:"minecraft:knowledge_book"}] run function custom_crafting_table:table/change/book/gui
clear @a[tag=!global.ignore] #custom_crafting_table:clear{CCT_GUI_Clear:1}


execute if entity @s[tag=!gaeacraft.cct.cart] run data modify block ~ ~ ~ Items set from storage custom_crafting_table:craft Items
execute if entity @s[tag=gaeacraft.cct.cart] run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items set from storage custom_crafting_table:craft Items

