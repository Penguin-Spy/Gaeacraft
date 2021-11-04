# Ran by every player when they first join the game via the advancement gaeacraft:init_player
# Also ran on respawn via scoreboard detection + @e[type=player]

# reset scoreboard
scoreboard players set @s gaeacraft.deaths 0

# set health attribute
attribute @s minecraft:generic.max_health base set 40

# reset status items
effect give @s minecraft:instant_health 1 10 true
#effect give @s minecraft:saturation 1 255 true
scoreboard players set @s gaeacraft.thirst 20

# player ID
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players operation @s gaeacraft.player = $nextID gaeacraft.player
execute if entity @s[tag=!gaeacraft.player.hasID] run scoreboard players add $nextID gaeacraft.player 1
execute if entity @s[tag=!gaeacraft.player.hasID] run tag @s add gaeacraft.player.hasID

# reset mining system
execute if entity @s[predicate=gaeacraft:holding_tool] run function gaeacraft:tools/start_holding
execute if entity @s[predicate=!gaeacraft:holding_tool] run function gaeacraft:tools/stop_holding

# summon a marker for this player (to store arbitrary player-specific data)
#summon minecraft:marker 0 0 0 {Tags:["gaeacraft.just_summoned"]}
#scoreboard players operation @e[tag=gaeacraft.just_summoned] gaeacraft.player = @s gaeacraft.player
#tag @e[tag=gaeacraft.just_summoned] remove gaeacraft.just_summoned