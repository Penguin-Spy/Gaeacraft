# Ran by every player when they first join the game via the advancement gaeacraft:init_player
#since this advancement is never cleared, this function only runs once

# set health attribute
attribute @s minecraft:generic.max_health base set 40

# player ID
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players operation @s gaeacraft.player = $nextID gaeacraft.player
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players add $nextID gaeacraft.player 1
execute if entity @s[tag=!gaeacraft.player.hasID] run tag @s add gaeacraft.player.hasID

# setup inital tags
tag @s[predicate=gaeacraft:holding_tool] add gaeacraft.player.holding_tool

# summon a marker for this player (to store arbitrary player-specific data)
#summon minecraft:marker 0 0 0 {Tags:["gaeacraft.just_summoned"]}
#scoreboard players operation @e[tag=gaeacraft.just_summoned] gaeacraft.player = @s gaeacraft.player
#tag @e[tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned