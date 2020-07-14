#gaeacraft:blocks/detect/5_5.mcfunction
#finds player heads in a 5x5 area and runs gaeacraft:blocks/detect/convert on them

#Z = -2
execute positioned ~-2 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = -1
execute positioned ~-1 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 0
execute positioned ~ ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 1
execute positioned ~1 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~1 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~1 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~1 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert

#Z = 2
execute positioned ~2 ~ ~-2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~-1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~ if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~1 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~2 if block ~ ~ ~ #gaeacraft:player_heads run function gaeacraft:blocks/detect/convert