# Silently removes the minecart & armorstand, clears tags, and decrements the items used to craft

execute at @s as @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run data remove entity @s Items
execute at @s as @e[tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @p[distance=0] gaeacraft.player run kill @s
tag @s remove gaeacraft.player.can_knap
item modify entity @s weapon.mainhand gaeacraft:remove_one
item modify entity @s weapon.offhand gaeacraft:remove_one