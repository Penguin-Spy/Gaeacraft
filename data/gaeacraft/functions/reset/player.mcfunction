#gaeacraft:reset/player.mcfunction
#resets a player to an inital state.

#set health, hunger, and thirst to full
effect give @s minecraft:instant_health 1 10 true
effect give @s minecraft:saturation 1 255 true
scoreboard players set @s gaeacraft.thirst 20