#gaeacraft:blocks/detect/scan.mcfunction
#scans the entire area a player could have placed a block, looking for player skulls. if one is found, gaeacraft:blocks/detect/convert is called at its position

#revoke the advancement that triggered this function
advancement revoke @s only gaeacraft:utility/skull_placed

#scan the full placeable area
execute positioned ~ ~-4 ~ run function gaeacraft:blocks/detect/5_5
execute positioned ~ ~-3 ~ run function gaeacraft:blocks/detect/7_7
execute positioned ~ ~-2 ~ run function gaeacraft:blocks/detect/9_9
execute positioned ~ ~-1 ~ run function gaeacraft:blocks/detect/11_11_small
execute positioned ~ ~ ~ run function gaeacraft:blocks/detect/11_11_full
execute positioned ~ ~1 ~ run function gaeacraft:blocks/detect/11_11_full
execute positioned ~ ~2 ~ run function gaeacraft:blocks/detect/11_11_full
execute positioned ~ ~3 ~ run function gaeacraft:blocks/detect/11_11_small
execute positioned ~ ~4 ~ run function gaeacraft:blocks/detect/9_9
execute positioned ~ ~5 ~ run function gaeacraft:blocks/detect/7_7
execute positioned ~ ~6 ~ run function gaeacraft:blocks/detect/5_5