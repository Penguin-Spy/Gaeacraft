execute store result score $slot_1 crafting_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score $slot_2 crafting_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score $slot_3 crafting_data run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score $slot_4 crafting_data run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute store result score $slot_5 crafting_data run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result score $slot_6 crafting_data run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result score $slot_7 crafting_data run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute store result score $slot_8 crafting_data run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result score $slot_9 crafting_data run data get block ~ ~ ~ Items[{Slot:21b}].Count

scoreboard players remove $slot_1 crafting_data 1
scoreboard players remove $slot_2 crafting_data 1
scoreboard players remove $slot_3 crafting_data 1
scoreboard players remove $slot_4 crafting_data 1
scoreboard players remove $slot_5 crafting_data 1
scoreboard players remove $slot_6 crafting_data 1
scoreboard players remove $slot_7 crafting_data 1
scoreboard players remove $slot_8 crafting_data 1
scoreboard players remove $slot_9 crafting_data 1

execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $slot_1 crafting_data
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $slot_2 crafting_data
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get $slot_3 crafting_data
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get $slot_4 crafting_data
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get $slot_5 crafting_data
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get $slot_6 crafting_data
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get $slot_7 crafting_data
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get $slot_8 crafting_data
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get $slot_9 crafting_data

#execute if score $full_inv loottablerecipes matches 1 at @p run function loot_table_recipes:crafting_table/get_loot_table/spawn
#execute if score $full_inv loottablerecipes matches 0 run function loot_table_recipes:crafting_table/get_loot_table/give

function loot_table_recipes:crafting_table/copy_item