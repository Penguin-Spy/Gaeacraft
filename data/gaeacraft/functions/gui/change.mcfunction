# Clear any player shenanigan items
execute as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/dump

# clear clicked buttons
execute as @p[tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/player
# check for valid recipe
execute if entity @p[tag=gaeacraft.temp.minecart_gui,limit=1,tag=gaeacraft.player.gui_available.knapping] as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/knapping/detect
execute if entity @p[tag=gaeacraft.temp.minecart_gui,limit=1,tag=gaeacraft.player.gui_available.toolmaking] as @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] run function gaeacraft:gui/toolmaking/detect
#

# remove any dropped button items
kill @e[type=item,nbt={Item:{tag:{gaeacraft:{gui_item:1b}}}}]