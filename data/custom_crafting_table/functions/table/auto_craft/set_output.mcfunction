data modify storage custom_crafting_table:craft Items[{Slot:15b}] set value {Slot:15b,id:"minecraft:feather",Count:1b,tag:{CustomModelData:2,CCT_fill:1,CCT_GUI_Clear:1}}


data modify block 1 0 0 Items[] set from storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_Result_Craft

loot insert ~ ~-1 ~ mine 1 0 0 air{drop_contents:1b}


execute if data storage custom_crafting_table:craft Items[{tag:{CCT_GUI_Item:1}}] run data modify storage custom_crafting_table:craft Items[{tag:{CCT_GUI_Item:1}}].Count set value 2
function custom_crafting_table:table/custom_craft/clear/clear_craft_slot



execute if entity @s[tag=!gaeacraft.cct.cart] run data modify block ~ ~ ~ Items set from storage custom_crafting_table:craft Items
execute if entity @s[tag=gaeacraft.cct.cart] run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items set from storage custom_crafting_table:craft Items


