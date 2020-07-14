data remove block ~ ~ ~ Items[{Slot:15b}]
data modify entity @s HandItems[0].tag.loot_table_recipes set value [{Slot:1b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:2b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:3b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:10b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:11b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:12b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:19b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:20b,id:"minecraft:air",tag:{no_nbt:1b}},{Slot:21b,id:"minecraft:air",tag:{no_nbt:1b}}]
data modify entity @s HandItems[0].tag.loot_table_recipes[0].id set from block ~ ~ ~ Items[{Slot:1b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[0].tag set from block ~ ~ ~ Items[{Slot:1b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[1].id set from block ~ ~ ~ Items[{Slot:2b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[1].tag set from block ~ ~ ~ Items[{Slot:2b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[2].id set from block ~ ~ ~ Items[{Slot:3b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[2].tag set from block ~ ~ ~ Items[{Slot:3b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[3].id set from block ~ ~ ~ Items[{Slot:10b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[3].tag set from block ~ ~ ~ Items[{Slot:10b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[4].id set from block ~ ~ ~ Items[{Slot:11b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[4].tag set from block ~ ~ ~ Items[{Slot:11b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[5].id set from block ~ ~ ~ Items[{Slot:12b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[5].tag set from block ~ ~ ~ Items[{Slot:12b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[6].id set from block ~ ~ ~ Items[{Slot:19b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[6].tag set from block ~ ~ ~ Items[{Slot:19b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[7].id set from block ~ ~ ~ Items[{Slot:20b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[7].tag set from block ~ ~ ~ Items[{Slot:20b}].tag
data modify entity @s HandItems[0].tag.loot_table_recipes[8].id set from block ~ ~ ~ Items[{Slot:21b}].id
data modify entity @s HandItems[0].tag.loot_table_recipes[8].tag set from block ~ ~ ~ Items[{Slot:21b}].tag

execute store success score $dimension_x1 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:1b,id:"minecraft:air"},{Slot:10b,id:"minecraft:air"},{Slot:19b,id:"minecraft:air"}]}}]}]
execute store success score $dimension_x2 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:2b,id:"minecraft:air"},{Slot:11b,id:"minecraft:air"},{Slot:20b,id:"minecraft:air"}]}}]}]
execute store success score $dimension_x3 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:3b,id:"minecraft:air"},{Slot:12b,id:"minecraft:air"},{Slot:21b,id:"minecraft:air"}]}}]}]
execute store success score $dimension_y1 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"},{Slot:3b,id:"minecraft:air"}]}}]}]
execute store success score $dimension_y2 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:10b,id:"minecraft:air"},{Slot:11b,id:"minecraft:air"},{Slot:12b,id:"minecraft:air"}]}}]}]
execute store success score $dimension_y3 crafting_data unless entity @s[nbt={HandItems:[{tag:{loot_table_recipes:[{Slot:19b,id:"minecraft:air"},{Slot:20b,id:"minecraft:air"},{Slot:21b,id:"minecraft:air"}]}}]}]

execute if score $dimension_x1 crafting_data matches 1 if score $dimension_x3 crafting_data matches 1 run scoreboard players set $dimension_x2 crafting_data 1
execute if score $dimension_y1 crafting_data matches 1 if score $dimension_y3 crafting_data matches 1 run scoreboard players set $dimension_y2 crafting_data 1

scoreboard players operation @s craft_dimens_x = $dimension_x1 crafting_data
scoreboard players operation @s craft_dimens_x += $dimension_x2 crafting_data
scoreboard players operation @s craft_dimens_x += $dimension_x3 crafting_data
scoreboard players operation @s craft_dimens_y = $dimension_y1 crafting_data
scoreboard players operation @s craft_dimens_y += $dimension_y2 crafting_data
scoreboard players operation @s craft_dimens_y += $dimension_y3 crafting_data

execute if score $dimension_x1 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/x1
execute if score $dimension_x2 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/x2
execute if score $dimension_x3 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/x3
execute if score $dimension_y1 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/y1
execute if score $dimension_y2 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/y2
execute if score $dimension_y3 crafting_data matches 0 run function loot_table_recipes:crafting_table/remove_rows_columns/y3

data modify entity @s HandItems[0].tag.loot_table_recipes[0].Slot set value 0b
data modify entity @s HandItems[0].tag.loot_table_recipes[1].Slot set value 1b
data modify entity @s HandItems[0].tag.loot_table_recipes[2].Slot set value 2b
data modify entity @s HandItems[0].tag.loot_table_recipes[3].Slot set value 3b
data modify entity @s HandItems[0].tag.loot_table_recipes[4].Slot set value 4b
data modify entity @s HandItems[0].tag.loot_table_recipes[5].Slot set value 5b
data modify entity @s HandItems[0].tag.loot_table_recipes[6].Slot set value 6b
data modify entity @s HandItems[0].tag.loot_table_recipes[7].Slot set value 7b
data modify entity @s HandItems[0].tag.loot_table_recipes[8].Slot set value 8b

function loot_table_recipes:crafting_table/get_loot_table/replace
