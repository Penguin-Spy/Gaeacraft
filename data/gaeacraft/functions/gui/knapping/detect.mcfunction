# detects if there is a recipe in the table
# unless data entity @s Items[{Slot:1b}] unless data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}]

execute store success score $success gaeacraft.count run data remove entity @s Items[{Slot:15b}]
execute if entity @s[tag=gaeacraft.gui_cart.knapping.has_output] if score $success gaeacraft.count matches 0 at @s as @a[tag=gaeacraft.player.gui_available.knapping] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping.has_output,sort=nearest,limit=1] gaeacraft.player run function gaeacraft:gui/knapping/finish

tag @s remove gaeacraft.gui_cart.knapping.has_output

# Recipes

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

# Close gui (and remove items) if every slot has been clicked
execute unless data entity @s Items[{Slot:1b}] unless data entity @s Items[{Slot:2b}] unless data entity @s Items[{Slot:3b}] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:11b}] unless data entity @s Items[{Slot:12b}] unless data entity @s Items[{Slot:19b}] unless data entity @s Items[{Slot:20b}] unless data entity @s Items[{Slot:21b}] at @s as @a[tag=gaeacraft.player.gui_available.knapping] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping,sort=nearest,limit=1] gaeacraft.player run function gaeacraft:gui/knapping/finish