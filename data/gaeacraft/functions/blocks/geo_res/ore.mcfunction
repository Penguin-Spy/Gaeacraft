execute store result score $ore.quality gaeacraft.count run data get block ~ ~ ~ SkullOwner.Id[1]
execute store result score $ore.stone gaeacraft.count run data get block ~ ~ ~ SkullOwner.Id[2]
execute store result score $ore.resource gaeacraft.count run data get block ~ ~ ~ SkullOwner.Id[3]

execute if score $ore.quality gaeacraft.count matches 0 run function gaeacraft:blocks/geo_res/ore_poor
execute if score $ore.quality gaeacraft.count matches 1 run function gaeacraft:blocks/geo_res/ore_normal
execute if score $ore.quality gaeacraft.count matches 2 run function gaeacraft:blocks/geo_res/ore_rich