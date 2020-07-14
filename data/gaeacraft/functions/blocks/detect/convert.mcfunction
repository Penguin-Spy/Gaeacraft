#gaeacraft:blocks/detect/convert.mcfunction
#determines which block is being converted, and runs the appropriate subfunction

execute if block ~ ~ ~ minecraft:player_head run function gaeacraft:blocks/detect/convert_player_head
execute if block ~ ~ ~ minecraft:player_wall_head run function gaeacraft:blocks/detect/convert_player_wall_head