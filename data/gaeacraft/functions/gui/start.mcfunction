# summons the minecart & armorstand, copies playerID scores, & sets up tags

execute if predicate gaeacraft:gui_available/knapping if entity @s[tag=!gaeacraft.temp.minecart_gui] run function gaeacraft:gui/knapping/start
execute if predicate gaeacraft:gui_available/toolmaking if entity @s[tag=!gaeacraft.temp.minecart_gui] run function gaeacraft:gui/toolmaking/start

# set scores to find the player's gui entities in later ticks
scoreboard players operation @e[tag=gaeacraft.just_summoned] gaeacraft.player = @s gaeacraft.player
tag @e[tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned

# general gui_available tag (start sets gui-specific one)
tag @s add gaeacraft.player.gui_available