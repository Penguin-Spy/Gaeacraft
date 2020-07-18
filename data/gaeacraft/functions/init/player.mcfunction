# ran by every player when gaeacraft:init is called

# set health attribute
attribute @s minecraft:generic.max_health base set 40

# player ID
execute if entity @s[tag=!gc_has_ID] run scoreboard players operation @s gaeacraft.player = nextID gaeacraft.player
execute if entity @s[tag=!gc_has_ID] run scoreboard players add nextID gaeacraft.player 1
execute if entity @s[tag=!gc_has_ID] run tag @s add gc_has_ID
