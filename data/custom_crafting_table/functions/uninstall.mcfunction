execute at @e[type=armor_stand,tag=Custom_Crafting_Table] run setblock ~ ~ ~ air
kill @e[type=armor_stand,tag=Custom_Crafting_Table]

scoreboard objectives remove CustomCraftingT

forceload remove 16942000 -14269007 16942000 -14269007


data remove storage custom_crafting_table:craft Items
data remove storage custom_crafting_table:craft Test
data remove storage custom_crafting_table:craft Test2
data remove storage custom_crafting_table:craft ClearSlotUseless
data remove storage custom_crafting_table:craft FillAllSlot
data remove storage custom_crafting_table:craft FillSlot
data remove storage custom_crafting_table:craft CCT_GUI_Item
data remove storage custom_crafting_table:craft Display