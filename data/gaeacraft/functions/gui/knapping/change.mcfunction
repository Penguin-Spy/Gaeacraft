# clear clicked buttons
execute at @s as @p[tag=gaeacraft.player.can_knap] if score @s gaeacraft.player = @e[type=armor_stand,tag=gaeacraft.gui_cart.knapping,sort=nearest,limit=1] gaeacraft.player run function gaeacraft:gui/knapping/player
# check for valid recipe
execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping,distance=0,limit=1] gaeacraft.player run function gaeacraft:gui/knapping/detect