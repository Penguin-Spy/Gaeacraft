
execute if entity @s[tag=!gaeacraft.cct.cart] run data modify storage custom_crafting_table:craft Items set from block ~ ~ ~ Items
execute if entity @s[tag=gaeacraft.cct.cart] run data modify storage custom_crafting_table:craft Items set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items


data modify storage custom_crafting_table:craft Test set from storage custom_crafting_table:craft Items
data remove storage custom_crafting_table:craft Test[{tag:{CCT_GUI_Clear:1}}]
data remove storage custom_crafting_table:craft Test[{Slot:8b}]

execute store result score Count CustomCraftingT if data storage custom_crafting_table:craft Test[]

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

execute if entity @s[tag=CCT_Display_Craft] store success score Success CustomCraftingT run data modify storage custom_crafting_table:craft Items[{Slot:15b}] merge from storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_Result_Craft

execute if entity @s[tag=CCT_Display_Craft] if score Success CustomCraftingT matches 0 run function custom_crafting_table:table/auto_craft/set_output

data remove storage custom_crafting_table:craft Items[{Slot:15b}]