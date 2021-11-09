# detects if there is a recipe in the table

# fix widgets and enable slots based on items in the gui
function gaeacraft:gui/toolmaking/fix_widgets

# tag items we want to keep,
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.binding] run data modify entity @s Items[{Slot:11b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.one_head] run data modify entity @s Items[{Slot:3b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.two_heads] run data modify entity @s Items[{Slot:2b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.two_heads] run data modify entity @s Items[{Slot:12b}] merge value {tag:{gaeacraft_temp:{gui_dont_dump:1b}}}
# dump everything else
function gaeacraft:gui/dump
# then clear the tag
data remove entity @s Items[{tag:{gaeacraft_temp:{}}}].tag.gaeacraft_temp

# if outputting & no 15, run :finish
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] unless data entity @s Items[{Slot:15b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/finish

# if not outputting & 15, run :dump_output
execute if entity @s[tag=!gaeacraft.gui_cart.toolmaking.has_output] if data entity @s Items[{Slot:15b}] run function gaeacraft:gui/dump_output

# store success if outputting & 15, copy 15 to armorstand data.15
scoreboard players set $success gaeacraft.count 0
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] if data entity @s Items[{Slot:15b}] store success score $success gaeacraft.count run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
# if success, run :dump_output
execute if score $success gaeacraft.count matches 1 run function gaeacraft:gui/dump_output
execute if score $success gaeacraft.count matches 1 as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/finish

# clear 15
# clear outputting
data remove entity @s Items[{Slot:15b}]
tag @s remove gaeacraft.gui_cart.toolmaking.has_output


## Recipes

# copy slots 1-9 to fishing armor_stand's rod (incl. empty slots)
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking set value {}
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.handle set from entity @s Items[{Slot:19b}]
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.binding set from entity @s Items[{Slot:11b}]
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.one_head set from entity @s Items[{Slot:3b}]
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.left_head set from entity @s Items[{Slot:2b}]
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.toolmaking.right_head set from entity @s Items[{Slot:12b}]

data remove block 1 0 0 Items
# run loot as fishing_armor_stand
execute as @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] run loot replace block 1 0 0 container.15 fish gaeacraft:recipes/toolmaking/tools ~ ~ ~ mainhand
# copy to our slot 15 & if item in shulker, add gaeacraft.gui_cart.toolmaking.has_output
execute if data block 1 0 0 Items[{Slot:15b}].tag run data modify entity @s Items append from block 1 0 0 Items[{Slot:15b}]
execute if data entity @s Items[{Slot:15b}] run tag @s add gaeacraft.gui_cart.toolmaking.has_output


##Cleanup

#END: if outputting, copy 15 to armorstand data.15
execute if entity @s[tag=gaeacraft.gui_cart.toolmaking.has_output] run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
