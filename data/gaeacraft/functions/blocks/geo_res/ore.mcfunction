execute align xyz run summon minecraft:armor_stand ~.5 ~.5 ~.5 {Tags:["global.ignore","global.ignore.kill","gaeacraft.block.ore"],NoGravity:1b,Marker:1b,Invisible:1b,HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:gold_ore",Count:1b,tag:{CustomModelData:34}}],Pose:{LeftArm:[0f,0f],RightArm:[0f,0f]}}
execute align xyz positioned ~.5 ~.5 ~.5 store result entity @e[type=armor_stand,limit=1,sort=nearest] HandItems[1].tag.CustomModelData byte 1 run scoreboard players get $ore.id gaeacraft.count
setblock ~ ~ ~ minecraft:black_stained_glass