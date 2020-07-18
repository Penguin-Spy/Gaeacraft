scoreboard players set #timer CustomCraftingT 0
data remove storage custom_crafting_table:craft Test2

data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gc_cct_cart] Items append from storage custom_crafting_table:craft FillSlot[]

function custom_crafting_table:table/change/replace_grid/set


data modify block 1 0 0 Items set from storage custom_crafting_table:craft Test2
data modify block 2 0 0 Items set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gc_cct_cart] Items
loot insert 2 0 0 mine 1 0 0 air{drop_contents:1b}
data modify entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gc_cct_cart] Items set from block 2 0 0 Items

execute if data entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest,tag=gc_cct_cart] Items[22] run function custom_crafting_table:table/change/replace_grid/summon

execute if data storage custom_crafting_table:craft Test[0] run function custom_crafting_table:table/change/replace_grid/recursive
