forceload add 0 0
fill 0 1 0 15 1 15 minecraft:bedrock
fill 0 0 0 15 0 15 minecraft:air
setblock 0 0 0 minecraft:oak_wall_sign[facing=south]
setblock 1 0 0 minecraft:yellow_shulker_box[facing=down]
setblock 2 0 0 minecraft:yellow_shulker_box[facing=down]
#execute unless entity @e[type=armor_stand,tag=gaeacraft.fishing_armor_stand] run summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["gaeacraft.fishing_armor_stand"],HandItems:[{id:"minecraft:fishing_rod",Count:1b}]}