execute store result score $ender_eye gaeacraft.count run clear @s ender_eye{CustomModelData:100} 0
execute if score $ender_eye gaeacraft.count matches 3.. run clear @s ender_eye{CustomModelData:100} 3
execute if score $ender_eye gaeacraft.count matches 3.. run loot give @s loot gaeacraft:items/frond_yarn