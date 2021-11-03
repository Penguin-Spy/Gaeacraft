# ran by the armorstand
# tps the group to the player's head, and checks for updates in the cart's inventory

tp @s ~ ~1.25 ~
execute store success score $success gaeacraft.count run data modify entity @s ArmorItems[3].tag.Items set from entity @e[type=chest_minecart,tag=gaeacraft.temp.minecart_gui,limit=1] Items
execute if score $success gaeacraft.count matches 1 run function gaeacraft:gui/change