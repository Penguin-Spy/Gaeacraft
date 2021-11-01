# ran by the armorstand
# tps the group to the player's head, and checks for updates in the cart's inventory

tp @s ~ ~1.25 ~
execute at @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping] if score @s gaeacraft.player = @e[type=chest_minecart,tag=gaeacraft.gui_cart.knapping,distance=0,limit=1] gaeacraft.player store success score $success gaeacraft.count run data modify entity @s ArmorItems[3].tag.Items set from entity @e[type=chest_minecart,limit=1,sort=nearest,tag=gaeacraft.gui_cart.knapping] Items
execute if score $success gaeacraft.count matches 1 run function gaeacraft:gui/knapping/change