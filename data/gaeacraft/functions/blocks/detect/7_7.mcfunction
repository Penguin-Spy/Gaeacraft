#gaeacraft:blocks/detect/7_7.mcfunction
#finds player heads in a 7x7 area (without the corners) and runs gaeacraft:blocks/detect/convert on them
#calls gaeacraft:blocks/detect/5_5 for the inner area

#Inner area
function gaeacraft:blocks/detect/5_5

#Z = -3
execute positioned ~-3 ~ ~-2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~-1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~ if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -2
execute positioned ~-2 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -1
execute positioned ~-1 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 0
execute positioned ~ ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 1
execute positioned ~1 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~1 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 2
execute positioned ~1 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 3
execute positioned ~3 ~ ~-2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~-1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~ if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert