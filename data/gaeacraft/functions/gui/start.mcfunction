# summons the minecart & armorstand, copies playerID scores, & sets up tags

execute if predicate gaeacraft:gui_available/knapping run function gaeacraft:gui/knapping/start
execute if predicate gaeacraft:gui_available/toolmaking run function gaeacraft:gui/toolmaking/start

scoreboard players operation @e[tag=gaeacraft.just_summoned] gaeacraft.player = @s gaeacraft.player
tag @e[tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned

tag @s add gaeacraft.player.gui_available