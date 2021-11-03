# detects if there is a recipe in the table

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

#axe
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] if data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/axe
execute unless data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] if data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/axe
#hoe
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/hoe
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/hoe
#hammer
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/hammer
#shovel
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] if data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/shovel
#arrowhead
execute unless data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] if data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] if data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/arrow
#knife blade
execute if data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] if data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/knife
execute unless data entity @s Items[{Slot:1b}] if data entity @s Items[{Slot:2b}] if data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:11b}] if data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] if data entity @s Items[{Slot:21b}] run function gaeacraft:gui/knapping/output/knife

##End Recipes

# Close gui (and remove items) if every slot has been clicked
execute unless data entity @s Items[{Slot:1b}] unless data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/knapping/finish

#END: if outputting, copy 15 to armorstand data.15
execute if entity @s[tag=gaeacraft.gui_cart.knapping.has_output] run data modify entity @e[type=armor_stand,tag=gaeacraft.temp.minecart_gui,limit=1] ArmorItems[3].tag.output set from entity @s Items[{Slot:15b}]

# clear tags used to keep track of the entities we need to reference during this function
tag @e[tag=gaeacraft.temp.minecart_gui] remove gaeacraft.temp.minecart_gui