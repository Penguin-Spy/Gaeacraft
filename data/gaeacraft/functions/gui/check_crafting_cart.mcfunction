#remove these tags, they are set by the recipe
tag @s remove CCT_Display_Craft
tag @s remove CCT_Damage_Craft
tag @s remove CCT_Bucket_Craft

#copy items to temp storage so that we can remove things
data modify storage custom_crafting_table:craft Temp set from storage custom_crafting_table:craft Items
data remove storage custom_crafting_table:craft Temp[{tag:{CCT_GUI_Clear:1}}]
data remove storage custom_crafting_table:craft Temp[{Slot:8b}]
data remove storage custom_crafting_table:craft Temp[{Slot:15b}]
#locked slot items
data remove storage custom_crafting_table:craft Temp[{id:"minecraft:feather",CustomModelData:1}]

# if there is an item in the row, the score is set to 1
scoreboard players set $dimension_x1 CustomCraftingT 1
scoreboard players set $dimension_x2 CustomCraftingT 1
scoreboard players set $dimension_x3 CustomCraftingT 1
scoreboard players set $dimension_y1 CustomCraftingT 1
scoreboard players set $dimension_y2 CustomCraftingT 1
scoreboard players set $dimension_y3 CustomCraftingT 1
execute unless data storage custom_crafting_table:craft Temp[{Slot:1b}] unless data storage custom_crafting_table:craft Temp[{Slot:10b}] unless data storage custom_crafting_table:craft Temp[{Slot:19b}] run scoreboard players set $dimension_x1 CustomCraftingT 0
execute unless data storage custom_crafting_table:craft Temp[{Slot:2b}] unless data storage custom_crafting_table:craft Temp[{Slot:11b}] unless data storage custom_crafting_table:craft Temp[{Slot:20b}] run scoreboard players set $dimension_x2 CustomCraftingT 0
execute unless data storage custom_crafting_table:craft Temp[{Slot:3b}] unless data storage custom_crafting_table:craft Temp[{Slot:12b}] unless data storage custom_crafting_table:craft Temp[{Slot:21b}] run scoreboard players set $dimension_x3 CustomCraftingT 0
execute unless data storage custom_crafting_table:craft Temp[{Slot:1b}] unless data storage custom_crafting_table:craft Temp[{Slot:2b}] unless data storage custom_crafting_table:craft Temp[{Slot:3b}] run scoreboard players set $dimension_y1 CustomCraftingT 0
execute unless data storage custom_crafting_table:craft Temp[{Slot:10b}] unless data storage custom_crafting_table:craft Temp[{Slot:11b}] unless data storage custom_crafting_table:craft Temp[{Slot:12b}] run scoreboard players set $dimension_y2 CustomCraftingT 0
execute unless data storage custom_crafting_table:craft Temp[{Slot:19b}] unless data storage custom_crafting_table:craft Temp[{Slot:20b}] unless data storage custom_crafting_table:craft Temp[{Slot:21b}] run scoreboard players set $dimension_y3 CustomCraftingT 0

#if there is something in rows 1 & 3, include row 2 (otherwise it will be detected as only 2 rows, even though its 3 rows with one empty)
execute if score $dimension_x1 CustomCraftingT matches 1 if score $dimension_x3 CustomCraftingT matches 1 run scoreboard players set $dimension_x2 CustomCraftingT 1
execute if score $dimension_y1 CustomCraftingT matches 1 if score $dimension_y3 CustomCraftingT matches 1 run scoreboard players set $dimension_y2 CustomCraftingT 1

#add up how many rows are filled to get the total x and y size
scoreboard players operation @s gaeacraft.craftX = $dimension_x1 CustomCraftingT
scoreboard players operation @s gaeacraft.craftX += $dimension_x2 CustomCraftingT
scoreboard players operation @s gaeacraft.craftX += $dimension_x3 CustomCraftingT
scoreboard players operation @s gaeacraft.craftY = $dimension_y1 CustomCraftingT
scoreboard players operation @s gaeacraft.craftY += $dimension_y2 CustomCraftingT
scoreboard players operation @s gaeacraft.craftY += $dimension_y3 CustomCraftingT

#remove HandItems entries for empty rows (necessary, otherwise detecting smaller areas wont work when not in the top left [which is the whole point of this])
execute if score $dimension_x1 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/x1
execute if score $dimension_x2 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/x2
execute if score $dimension_x3 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/x3
execute if score $dimension_y1 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/y1
execute if score $dimension_y2 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/y2
execute if score $dimension_y3 CustomCraftingT matches 1 run function gaeacraft:gui/remove_rows_columns/y3

#set Slot to the index in the list
data modify storage custom_crafting_table:craft Temp[0].Slot set value 0b
data modify storage custom_crafting_table:craft Temp[1].Slot set value 1b
data modify storage custom_crafting_table:craft Temp[2].Slot set value 2b
data modify storage custom_crafting_table:craft Temp[3].Slot set value 3b
data modify storage custom_crafting_table:craft Temp[4].Slot set value 4b
data modify storage custom_crafting_table:craft Temp[5].Slot set value 5b
data modify storage custom_crafting_table:craft Temp[6].Slot set value 6b
data modify storage custom_crafting_table:craft Temp[7].Slot set value 7b
data modify storage custom_crafting_table:craft Temp[8].Slot set value 8b

#copy grid to hand
data modify entity @s HandItems[0].tag.Items set from storage custom_crafting_table:craft Temp
data remove storage custom_crafting_table:craft Temp2
data modify storage custom_crafting_table:craft Temp2 set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:15b}]


#get the output
execute if score @s gaeacraft.craftX matches 3 if score @s gaeacraft.craftY matches 3 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/3x3 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 2 if score @s gaeacraft.craftY matches 3 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/2x3 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 3 if score @s gaeacraft.craftY matches 2 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/3x2 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 1 if score @s gaeacraft.craftY matches 3 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/1x3 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 1 if score @s gaeacraft.craftY matches 2 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/1x2 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 3 if score @s gaeacraft.craftY matches 1 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/3x1 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 2 if score @s gaeacraft.craftY matches 2 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/2x2 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 2 if score @s gaeacraft.craftY matches 1 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/2x1 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 1 if score @s gaeacraft.craftY matches 1 run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] container.15 fish gaeacraft:recipes/crafting_table/1x1 ~ ~ ~ mainhand
execute if score @s gaeacraft.craftX matches 0 if score @s gaeacraft.craftY matches 0 run data remove entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:15b}]

#copy output to Items[{Slot:15b}], and add the CCT_Display_Craft tag if an item was returned
data modify storage custom_crafting_table:craft Items[{Slot:15b}] merge from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:15b}]
execute if data entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{Slot:15b}] run tag @s add CCT_Display_Craft
data modify block ~ ~ ~ Items append from storage custom_crafting_table:craft Temp2