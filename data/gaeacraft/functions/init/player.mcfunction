# ran by every player when gaeacraft:init is called

# set health attribute
attribute @s minecraft:generic.max_health base set 40

# player ID
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players operation @s gaeacraft.player = $nextID gaeacraft.player
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players add $nextID gaeacraft.player 1
execute if entity @s[tag=!gaeacraft.player.hasID] run tag @s add gaeacraft.player.hasID

# setup inital tags
tag @s[predicate=gaeacraft:holding_tool] add gaeacraft.player.holding_tool