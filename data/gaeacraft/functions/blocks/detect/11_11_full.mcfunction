#gaeacraft:blocks/detect/11_11_full.mcfunction
#finds player heads in a 11x11 area (without the 3 blocks in the corners) and runs gaeacraft:blocks/detect/convert on them
#calls gaeacraft:blocks/detect/11_11_small for the inner area

#Inner area
function gaeacraft:blocks/detect/11_11_small

#Z = -5
execute positioned ~-5 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~-2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~-1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~ if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-5 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -4
execute positioned ~-4 ~ ~-4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-4 ~ ~4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -3
execute positioned ~-3 ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~-4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-3 ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -2
execute positioned ~-2 ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-2 ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = -1
execute positioned ~-1 ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~-1 ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 0
execute positioned ~ ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 1
execute positioned ~ ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~ ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 2
execute positioned ~1 ~ ~-5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~2 ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 3
execute positioned ~3 ~ ~-4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~3 ~ ~4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 4
execute positioned ~4 ~ ~-4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~4 ~ ~4 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
#execute positioned ~4 ~ ~5 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert

#Z = 5
execute positioned ~5 ~ ~-3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~-2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~-1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~ if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~1 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~2 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert
execute positioned ~5 ~ ~3 if block ~ ~ ~ #gaeacraft:detect_placed run function gaeacraft:blocks/detect/convert