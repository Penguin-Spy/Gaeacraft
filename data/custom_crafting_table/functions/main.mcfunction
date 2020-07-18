#datapack made by _RedCoal_
#website by Hardel


#replace egg bat by the custom table
execute as @a[tag=!global.ignore,predicate=custom_crafting_table:player_detect/zombie_spawn_egg] unless data entity @s SelectedItem.tag at @s run function custom_crafting_table:replace_item

#place the table
execute as @e[type=area_effect_cloud,tag=CCT_Place] at @s run function custom_crafting_table:table/place

#hopper
function custom_crafting_table:table/auto_craft/lock/test

execute as @e[type=armor_stand,tag=Custom_Crafting_Table,tag=CCT_Closed,tag=CCT_Auto_Craft_Enabled,predicate=custom_crafting_table:hopper/input] at @s run function custom_crafting_table:table/auto_craft/test_input
execute as @e[type=armor_stand,tag=Custom_Crafting_Table,tag=CCT_Closed,tag=CCT_Auto_Craft_Enabled,predicate=custom_crafting_table:hopper/hopper] at @s run function custom_crafting_table:table/auto_craft/detect_output

#disable minecart hopper
execute as @e[distance=..1,type=hopper_minecart,tag=!global.ignore,tag=!IsLock] positioned ~ ~1 ~ if entity @e[distance=..1,type=armor_stand,tag=Custom_Crafting_Table] run data merge entity @s {Enabled:1,Tags:["IsLock"]}


#main
execute as @e[type=armor_stand,tag=Custom_Crafting_Table,tag=!CCT_Closed,predicate=custom_crafting_table:barrel/close] at @s run function custom_crafting_table:table/close
execute as @e[type=armor_stand,tag=Custom_Crafting_Table,tag=CCT_Closed,predicate=custom_crafting_table:barrel/open] at @s run function custom_crafting_table:table/open

execute as @e[type=armor_stand,tag=Custom_Crafting_Table,tag=!CCT_Closed] at @s run function custom_crafting_table:table/main



#timer
scoreboard players add Timer CustomCraftingT 1
execute if score Timer CustomCraftingT matches 1000.. as @e[type=armor_stand,tag=Custom_Crafting_Table] run data modify entity @s Fire set value 32670s
execute if score Timer CustomCraftingT matches 1000.. run scoreboard players set Timer CustomCraftingT 0 


#clear 
clear @a[tag=!global.ignore,predicate=custom_crafting_table:player_detect/gui_clear] #custom_crafting_table:clear{CCT_GUI_Clear:1}

#destroy the table
execute as @e[type=armor_stand,tag=Custom_Crafting_Table,predicate=!custom_crafting_table:barrel/barrel] at @s run function custom_crafting_table:table/destroy


