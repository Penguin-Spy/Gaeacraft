# Initalize various things
#Players
execute as @a[tag=!global.ignore] run function gaeacraft:init/player
#0,0 Chunk
function gaeacraft:init/chunk_0_0

scoreboard objectives add gaeacraft.ver dummy
scoreboard players set $major gaeacraft.ver 0
scoreboard players set $minor gaeacraft.ver 3
scoreboard players set $patch gaeacraft.ver 1

scoreboard objectives add gaeacraft.const dummy
scoreboard players set -1 gaeacraft.const -1
scoreboard players set $durability_stoneAxe gaeacraft.const 131
scoreboard objectives add gaeacraft.durab dummy
#used as temp scoreboard, but not named temp because temperature is stored in temp. yeah, weird naming, but idc
scoreboard objectives add gaeacraft.count dummy
scoreboard objectives add gaeacraft.player dummy
scoreboard objectives add gaeacraft.sneakT minecraft.custom:minecraft.sneak_time
scoreboard objectives add gaeacraft.craftX dummy
scoreboard objectives add gaeacraft.craftY dummy

#player data
scoreboard objectives add gaeacraft.health health
scoreboard objectives add gaeacraft.armor armor
scoreboard objectives add gaeacraft.hunger food
scoreboard objectives add gaeacraft.thirst dummy
scoreboard objectives add gaeacraft.aura dummy
scoreboard objectives add gaeacraft.energy dummy
#temp stands for temperature, not temporary!
scoreboard objectives add gaeacraft.temp dummy

schedule function gaeacraft:tick 1t

tellraw @a[gamemode=creative] [{"translate":"description.gaeacraft.version.prefix","color":"green"},{"score": {"objective": "gaeacraft.ver","name": "$major"}},{"text":"."},{"score": {"objective": "gaeacraft.ver","name": "$minor"}},{"text":"."},{"score": {"objective": "gaeacraft.ver","name": "$patch"}},{"translate":"description.gaeacraft.version.suffix"}]
