scoreboard players set #timer CustomCraftingT 0
data remove storage custom_crafting_table:craft Test2

data modify block ~ ~ ~ Items append from storage custom_crafting_table:craft FillSlot[]

function custom_crafting_table:table/change/replace_table/set


data modify block 1 0 0 Items set from storage custom_crafting_table:craft Test2
loot insert ~ ~ ~ mine 1 0 0 air{drop_contents:1b}


execute if data block ~ ~ ~ Items[22] run function custom_crafting_table:table/change/replace_table/summon

execute if data storage custom_crafting_table:craft Test[0] run function custom_crafting_table:table/change/replace_table/recursive
