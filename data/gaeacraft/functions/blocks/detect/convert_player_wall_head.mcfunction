#gaeacraft:blocks/detect/convert_player_wall_head.mcfunction
#converts a player wall head into the block it should be

#----- STONE -----
#raw
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,1]}} run setblock ~ ~ ~ minecraft:white_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,2]}} run setblock ~ ~ ~ minecraft:white_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,3]}} run setblock ~ ~ ~ minecraft:white_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,4]}} run setblock ~ ~ ~ minecraft:white_glazed_terracotta[facing=south]

#cobblestone
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,11]}} run setblock ~ ~ ~ minecraft:orange_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,12]}} run setblock ~ ~ ~ minecraft:orange_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,13]}} run setblock ~ ~ ~ minecraft:orange_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,14]}} run setblock ~ ~ ~ minecraft:orange_glazed_terracotta[facing=south]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,15]}} run setblock ~ ~ ~ minecraft:yellow_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,16]}} run setblock ~ ~ ~ minecraft:yellow_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,17]}} run setblock ~ ~ ~ minecraft:yellow_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,18]}} run setblock ~ ~ ~ minecraft:yellow_glazed_terracotta[facing=south]

#polished
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,21]}} run setblock ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,22]}} run setblock ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,23]}} run setblock ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,24]}} run setblock ~ ~ ~ minecraft:magenta_glazed_terracotta[facing=south]

#bricks
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,31]}} run setblock ~ ~ ~ minecraft:light_blue_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,32]}} run setblock ~ ~ ~ minecraft:light_blue_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,33]}} run setblock ~ ~ ~ minecraft:light_blue_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,34]}} run setblock ~ ~ ~ minecraft:light_blue_glazed_terracotta[facing=south]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,35]}} run setblock ~ ~ ~ minecraft:lime_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,36]}} run setblock ~ ~ ~ minecraft:lime_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,37]}} run setblock ~ ~ ~ minecraft:lime_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,38]}} run setblock ~ ~ ~ minecraft:lime_glazed_terracotta[facing=south]

#----- MACHINES -----
#crafting grid
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,100]}} run function gaeacraft:blocks/machine/crafting_grid/place
execute if block ~ ~ ~ minecraft:player_wall_head{SkullOwner:{Id:[I;0,0,0,101]}} run function custom_crafting_table:table/place