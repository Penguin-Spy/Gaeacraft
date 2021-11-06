# detects if there is a recipe in the table

function gaeacraft:gui/dump

# if outputting & no 15, run :finish
execute if entity @s[tag=gaeacraft.gui_cart.knapping.has_output] unless data entity @s Items[{Slot:15b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/knapping/finish


# if not outputting & 15, run :dump_output
execute if entity @s[tag=!gaeacraft.gui_cart.knapping.has_output] if data entity @s Items[{Slot:15b}] run function gaeacraft:gui/dump_output

# store success if outputting & 15, copy 15 to armorstand data.15
scoreboard players set $success gaeacraft.count 0
execute if entity @s[tag=gaeacraft.gui_cart.knapping.has_output] if data entity @s Items[{Slot:15b}] store success score $success gaeacraft.count run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
# if success, run :dump_output
execute if score $success gaeacraft.count matches 1 run function gaeacraft:gui/dump_output
execute if score $success gaeacraft.count matches 1 as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/knapping/finish

# clear 15
# clear outputting
data remove entity @s Items[{Slot:15b}]
tag @s remove gaeacraft.gui_cart.knapping.has_output


##Recipes

# copy slots 1-9 to fishing armor_stand's rod (incl. empty slots)
data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping set value {slots:{a:0b,b:0b,c:0b,d:0b,e:0b,f:0b,g:0b,h:0b,i:0b}}
execute if data entity @s Items[{Slot:1b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.a set value 1b
execute if data entity @s Items[{Slot:2b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.b set value 1b
execute if data entity @s Items[{Slot:3b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.c set value 1b
execute if data entity @s Items[{Slot:10b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.d set value 1b
execute if data entity @s Items[{Slot:11b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.e set value 1b
execute if data entity @s Items[{Slot:12b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.f set value 1b
execute if data entity @s Items[{Slot:19b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.g set value 1b
execute if data entity @s Items[{Slot:20b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.h set value 1b
execute if data entity @s Items[{Slot:21b}] run data modify entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] HandItems[0].tag.knapping.slots.i set value 1b

# run loot as fishing_armor_stand
execute if entity @s[tag=gaeacraft.gui_cart.knapping.stone] as @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] run loot replace block 1 0 0 container.15 fish gaeacraft:recipes/knapping/stone ~ ~ ~ mainhand
execute if entity @s[tag=gaeacraft.gui_cart.knapping.clay] as @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand,limit=1] run loot replace block 1 0 0 container.15 fish gaeacraft:recipes/knapping/clay ~ ~ ~ mainhand
# copy to our slot 15 & if item in shulker, add gaeacraft.gui_cart.knapping.has_output
execute if data block 1 0 0 Items[{Slot:15b}].tag run data modify entity @s Items append from block 1 0 0 Items[{Slot:15b}]
execute if data entity @s Items[{Slot:15b}] run tag @s add gaeacraft.gui_cart.knapping.has_output


##Cleanup

# Close gui (and remove items) if every slot has been clicked
execute unless data entity @s Items[{Slot:1b}] unless data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/knapping/finish

#END: if outputting, copy 15 to armorstand data.15
execute if entity @s[tag=gaeacraft.gui_cart.knapping.has_output] run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]
