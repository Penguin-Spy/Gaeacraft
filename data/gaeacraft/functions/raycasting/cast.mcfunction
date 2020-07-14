summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["raycast"]}
scoreboard players set @s count 0
scoreboard players operation @e[type=minecraft:armor_stand,tag=raycast,limit=1,sort=nearest] playerID = @s playerID
execute if entity @s[scores={sneakTime=0}] rotated as @s as @e[type=minecraft:armor_stand,tag=raycast] run tp @s ~ ~1.6 ~ ~ ~
execute if entity @s[scores={sneakTime=1..}] rotated as @s as @e[type=minecraft:armor_stand,tag=raycast] run tp @s ~ ~1.25 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=raycast] at @s run function gaeacraft:raycasting/loop
schedule function gaeacraft:raycasting/end 1t