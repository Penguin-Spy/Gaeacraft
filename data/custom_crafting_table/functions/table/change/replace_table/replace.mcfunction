#setblock 16942001 1 -14269007 yellow_shulker_box
execute unless entity @s[tag=CCT_Display_Craft] run item block ~ ~ ~ container.15 replace feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1}
execute if score Book_Slot8 CustomCraftingT matches 0 run item block ~ ~ ~ container.8 replace feather{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1}
execute if score Book_Slot8 CustomCraftingT matches 1 run data modify block ~ ~ ~ Items[{Slot:8b}].Count set value 64
function custom_crafting_table:table/change/replace_table/recursive


execute if score Book_Slot8 CustomCraftingT matches 0 run data remove block ~ ~ ~ Items[{Slot:8b}]
data remove block ~ ~ ~ Items[{tag:{CCT_fill:1}}]
execute if score Book_Slot8 CustomCraftingT matches 1 run data modify block ~ ~ ~ Items[{Slot:8b}].Count set value 1
data modify block ~ ~ ~ Items append from storage custom_crafting_table:craft ClearSlotUseless[]

