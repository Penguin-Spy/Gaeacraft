data modify storage custom_crafting_table:craft Items[{Slot:8b}] merge value {id:"minecraft:knowledge_book",tag:{Crafting_Book:1,Recipes:["custom_crafting_table:book"]}}

execute store success score Name CustomCraftingT if data storage custom_crafting_table:craft Items[{Slot:15b}].tag.display.Name


execute if score Name CustomCraftingT matches 0 run summon item 0 0 0 {Item:{Count:1b,id:"minecraft:stone"},Tags:["Set_Name"]}
execute if score Name CustomCraftingT matches 0 positioned 0 0 0 run data modify entity @e[type=item,tag=Set_Name,distance=..0.2,limit=1] Item set from storage custom_crafting_table:craft Items[{Slot:15b}]

execute store result score Count CustomCraftingT run data get storage custom_crafting_table:craft Items[{Slot:15b}].Count

execute if score Name CustomCraftingT matches 0 run data merge block 0 0 0 {Text1:'[{"selector":"@e[type=item,tag=Set_Name,distance=..10,limit=1]","italic":"false"},{"text":" x","italic":"false","color":"gray"},{"score":{"name":"Count","objective":"CustomCraftingT"},"color":"gray","italic":"false"}]'}

execute if score Name CustomCraftingT matches 1 run data merge block 0 0 0 {Text1:'[{"nbt":"Items[{Slot:15b}].tag.display.Name","storage":"custom_crafting_table:craft","interpret":true},{"text":" x","italic":"false","color":"gray"},{"score":{"name":"Count","objective":"CustomCraftingT"},"color":"gray","italic":"false"}]'}



execute positioned 0 0 0 run kill @e[type=item,tag=Set_Name,distance=..0.2,limit=1]
data modify storage custom_crafting_table:craft Items[{Slot:8b}].tag.display.Name set from block 0 0 0 Text1

execute if entity @s[tag=!gaeacraft.cct.cart] run data modify block ~ ~ ~ Items prepend from storage custom_crafting_table:craft CCT_GUI_Item[]
execute if entity @s[tag=gaeacraft.cct.cart] run data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items prepend from storage custom_crafting_table:craft CCT_GUI_Item[]

execute if entity @s[tag=!gaeacraft.cct.cart] run data modify storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_GUI_Item append from block ~ ~ ~ Items[{tag:{CCT_GUI_Item:1}}]
execute if entity @s[tag=gaeacraft.cct.cart] run data modify storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_GUI_Item append from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gaeacraft.cct.chest_minecart] Items[{tag:{CCT_GUI_Item:1}}]


data modify storage custom_crafting_table:craft Items[{Slot:8b}].tag.CCT_Result_Craft set from storage custom_crafting_table:craft Items[{Slot:15b}]


data modify storage custom_crafting_table:craft Lore set from storage custom_crafting_table:craft Items
data remove storage custom_crafting_table:craft Lore[{Slot:15b}]
data remove storage custom_crafting_table:craft Lore[{Slot:8b}]

scoreboard players set Lore CustomCraftingT 0
function custom_crafting_table:table/change/book/lore





