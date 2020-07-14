tp @s ^ ^ ^.05
scoreboard players add @s count 1
execute at @s[scores={count=..100}] if block ~ ~ ~ #gaeacraft:raycast/travel_through run function gaeacraft:raycasting/loop
execute at @s if block ~ ~ ~ minecraft:oak_log run function gaeacraft:raycasting/end