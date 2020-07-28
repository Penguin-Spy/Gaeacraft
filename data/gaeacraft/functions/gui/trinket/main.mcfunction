#unused, but left in incase i want to revisit it. currently too buggy and annoying to be used
#i cant really give every item in the player's inventory a tag, because that messes things up
#and is super laggy, but without that i cannot detect a trinket being put in if they have another
#of the same type in their inventory.

function phi.modifyinv:setup/whole_inventory
function phi.modifyinv:load/inventory
data remove block -30000000 0 1602 Items[].tag.Gaeacraft.In_Inventory
function phi.modifyinv:apply/inventory
function phi.modifyinv:load/hotbar
data remove block -30000000 0 1602 Items[].tag.Gaeacraft.In_Inventory
function phi.modifyinv:apply/hotbar

tag @s remove gaeacraft.gui_holding.trinket
tag @s remove gaeacraft.gui_holding.trinket.feather
tag @s remove gaeacraft.gui_holding.trinket.apple
execute store result score @s gaeacraft.count run clear @s minecraft:feather{Gaeacraft:{Trinket:1b,In_Inventory:1b}} 0
execute if entity @s[scores={gaeacraft.count=1..},nbt=!{Inventory:[{id:"minecraft:feather",tag:{Gaeacraft:{Trinket:1b,In_Inventory:1b}}}]}] run tag @s add gaeacraft.gui_holding.trinket
execute if entity @s[scores={gaeacraft.count=1..},nbt=!{Inventory:[{id:"minecraft:feather",tag:{Gaeacraft:{Trinket:1b,In_Inventory:1b}}}]}] run tag @s add gaeacraft.gui_holding.trinket.feather
execute store result score @s gaeacraft.count run clear @s minecraft:apple{Gaeacraft:{Trinket:1b,In_Inventory:1b}} 0
execute if entity @s[scores={gaeacraft.count=1..},nbt=!{Inventory:[{id:"minecraft:apple",tag:{Gaeacraft:{Trinket:1b,In_Inventory:1b}}}]}] run tag @s add gaeacraft.gui_holding.trinket
execute if entity @s[scores={gaeacraft.count=1..},nbt=!{Inventory:[{id:"minecraft:apple",tag:{Gaeacraft:{Trinket:1b,In_Inventory:1b}}}]}] run tag @s add gaeacraft.gui_holding.trinket.apple


execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:structure_void",Count:1b}]}] run function gaeacraft:gui/trinket/slot_1
execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:structure_void",Count:2b}]}] run function gaeacraft:gui/trinket/slot_2
execute if entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:structure_void",Count:3b}]}] run function gaeacraft:gui/trinket/slot_3
execute unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:structure_void"}]}] run function gaeacraft:gui/trinket/slot_4

#tag all items in inventory
function phi.modifyinv:setup/whole_inventory
function phi.modifyinv:load/inventory
data modify block -30000000 0 1602 Items[].tag.Gaeacraft.In_Inventory set value 1b
data remove block -30000000 0 1602 Items[{id:"minecraft:structure_void"}].tag
function phi.modifyinv:apply/inventory
function phi.modifyinv:load/hotbar
data modify block -30000000 0 1602 Items[].tag.Gaeacraft.In_Inventory set value 1b
data remove block -30000000 0 1602 Items[{id:"minecraft:structure_void"}].tag
function phi.modifyinv:apply/hotbar