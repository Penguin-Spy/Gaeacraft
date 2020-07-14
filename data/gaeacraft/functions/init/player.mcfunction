# ran by every player when gaeacraft:init is called

# set health attribute
attribute @s minecraft:generic.max_health base set 40

#set health, hunger, and thirst to full
#effect give @s minecraft:instant_health 1 10 true
#effect give @s minecraft:saturation 1 255 true

# player ID
execute if entity @s[tag=!gc_has_ID] run scoreboard players operation @s gc_playerID = nextID gc_playerID
execute if entity @s[tag=!gc_has_ID] run scoreboard players add nextID gc_playerID 1
execute if entity @s[tag=!gc_has_ID] run tag @s add gc_has_ID
