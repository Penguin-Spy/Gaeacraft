execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {Tags:["global.ignore","global.ignore.kill","gaeacraft.block.ore_block"],NoGravity:1b,Marker:1b,Invisible:1b,HandItems:[{id:"minecraft:iron_block",Count:1b,tag:{CustomModelData:30}}],Pose:{LeftArm:[0f,0f],RightArm:[0f,0f]}}
execute align xyz positioned ~.5 ~.5 ~.5 store result entity @e[type=armor_stand,limit=1,sort=nearest] HandItems[0].tag.CustomModelData byte 1 run scoreboard players get $ore.resource gaeacraft.count
setblock ~ ~ ~ minecraft:black_stained_glass