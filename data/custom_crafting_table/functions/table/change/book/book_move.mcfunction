execute store result storage custom_crafting_table:craft Items[{Slot:8b}].Count byte 0.999999 run data get storage custom_crafting_table:craft Items[{Slot:8b}].Count

data modify storage custom_crafting_table:craft Test set from storage custom_crafting_table:craft Items[{Slot:8b}]
data modify storage custom_crafting_table:craft Test.Slot set value 26b
data modify storage custom_crafting_table:craft Items append from storage custom_crafting_table:craft Test


execute if entity @s[tag=!Custom_Crafting_Grid] run data modify block ~ ~ ~ Items[{Slot:8b}].Count set value 1
execute if entity @s[tag=Custom_Crafting_Grid] run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gc_cct_cart] Items[{Slot:8b}].Count set value 1

