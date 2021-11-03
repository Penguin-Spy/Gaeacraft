# Silently removes the minecart & armorstand, and clears tags

# but first, tick the gui one last time to clear out any player shenanigans
tag @e[tag=gaeacraft.temp.minecart_gui] add gaeacraft.temp.minecart_gui_end
function gaeacraft:gui/set_tags

execute as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui_end,limit=1] run data remove entity @s Items[{tag:{gaeacraft:{gui_item:1b}}}]
execute as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui_end,limit=1] run data remove entity @s Items[{id:"minecraft:scute",Slot:15b}]
execute as @e[type=!player,tag=gaeacraft.temp.minecart_gui_end] run kill @s

# clear tag used to keep track of the entities we need to reference during this function
tag @s remove gaeacraft.temp.minecart_gui_end

# clear tag of what gui this was
tag @s remove gaeacraft.player.gui_available
tag @s remove gaeacraft.player.gui_available.knapping
tag @s remove gaeacraft.player.gui_available.toolmaking

# clear button items (if the GUI was closed by the player swapping a stone with a button using the # keys)
clear @s #gaeacraft:gui_items{gaeacraft:{gui_item:1b}}