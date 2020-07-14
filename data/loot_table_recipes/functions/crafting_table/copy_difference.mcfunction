scoreboard players operation @s current_output -= @s output_count
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s current_output
function loot_table_recipes:crafting_table/copy_item