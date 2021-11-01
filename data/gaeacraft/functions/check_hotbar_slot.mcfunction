execute store result score $compare gaeacraft.hotbar run data get entity @s SelectedItemSlot
execute unless score $compare gaeacraft.hotbar = @s gaeacraft.hotbar run function gaeacraft:inventory_changed
execute store result score @s gaeacraft.hotbar run data get entity @s SelectedItemSlot