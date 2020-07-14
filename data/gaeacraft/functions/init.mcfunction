# Initalize various things
#Players
execute as @a at @s run function gaeacraft:init/player
#0,0 Chunk
function gaeacraft:init/chunk_0_0





scoreboard objectives add gc_constants dummy
scoreboard players set -1 gc_constants -1
scoreboard players set $dura_stoneAxe gc_constants 131
scoreboard objectives add gc_durability dummy
scoreboard objectives add gc_count dummy
scoreboard objectives add gc_playerID dummy
scoreboard objectives add gc_sneakTime minecraft.custom:minecraft.sneak_time
#gamerule maxCommandChainLength 999999999

#player data
scoreboard objectives add gc_health health
scoreboard objectives add gc_armor armor
scoreboard objectives add gc_hunger food
scoreboard objectives add gc_thirst dummy
scoreboard objectives add gc_aura dummy
scoreboard objectives add gc_energy dummy
scoreboard objectives add gc_temperature dummy