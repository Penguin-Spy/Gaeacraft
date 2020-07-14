#kill @e[type=item,limit=1,sort=nearest,distance=..7,nbt={Item:{tag:{loot_table_recipes:{take_item:1b}}}}]

execute store result score $gui_intact crafting_data if data block ~ ~ ~ Items[].tag.loot_table_recipes.gui
execute unless score $gui_intact crafting_data matches 17 run function loot_table_recipes:crafting_table/reset_gui

 
execute store result score @s current_output run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if score @s current_output < @s output_count run function loot_table_recipes:crafting_table/crafted_something
execute if score @s current_output > @s output_count run function loot_table_recipes:crafting_table/copy_difference

execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{loot_table_recipes:{take_item:1b}}}] run function loot_table_recipes:crafting_table/copy_item

function loot_table_recipes:crafting_table/transfer_crafting_data
execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify block ~ ~ ~ Items[{Slot:15b}] merge value {tag:{loot_table_recipes:{take_item:1b}}}
execute store result score @s output_count run data get block ~ ~ ~ Items[{Slot:15b}].Count