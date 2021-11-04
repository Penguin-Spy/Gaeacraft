# Silently removes the minecart & armorstand, and clears tags

# tag entities we need to access
tag @s add gaeacraft.temp.minecart_gui
execute at @s as @e[type=armor_stand,tag=gaeacraft.gui_cart] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.minecart_gui
execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run tag @s add gaeacraft.temp.minecart_gui

# dump the gui to clear out all player items
function gaeacraft:gui/dump

execute as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] run data remove entity @s Items
execute as @e[type=!player,tag=gaeacraft.temp.minecart_gui] run kill @s

# clear tag used to keep track of the entities we need to reference during this function
tag @s remove gaeacraft.temp.minecart_gui

# clear tag of what gui this was
tag @s remove gaeacraft.player.gui_available
tag @s remove gaeacraft.player.gui_available.knapping
tag @s remove gaeacraft.player.gui_available.toolmaking

# clear button items (if the GUI was closed by the player swapping a stone with a button using the # keys)
clear @s #gaeacraft:gui_items{gaeacraft:{gui_item:1b}}