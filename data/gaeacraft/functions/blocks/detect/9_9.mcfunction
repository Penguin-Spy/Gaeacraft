#gaeacraft:blocks/detect/9_9.mcfunction
#finds player heads in a 9x9 area (without the 3 blocks in the corners) and runs gaeacraft:blocks/detect/convert on them
#calls gaeacraft:blocks/detect/7_7 for the inner area

#Inner area
function gaeacraft:blocks/detect/7_7

#Z = -4
execute positioned ~-4 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = -3
execute positioned ~-3 ~ ~-3 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~3 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = -2
execute positioned ~-2 ~ ~-4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = -1
execute positioned ~-1 ~ ~-4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 0
execute positioned ~ ~ ~-4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 1
execute positioned ~ ~ ~-4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 2
execute positioned ~1 ~ ~-4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~4 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 3
execute positioned ~3 ~ ~-3 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~3 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 4
execute positioned ~4 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert