# remove advancement that triggered this function
advancement revoke @s only gaeacraft:utility/item_durability_changed

#say getting tool durability

#actual function stuff
execute store result score @s gc_durability run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s gc_durability *= -1 gc_constants
#choose which one based on SelectedItem.id
scoreboard players operation @s gc_durability += $dura_stoneAxe gc_constants
#sign, make last text based on scoreboard chosen by SelectedItem.id
data modify block 0 0 0 Text1 set value '{"text":" ","color":"blue","italic":"false","extra":[{"score":{"objective":"gc_durability","name":"@p"}},{"text":"/131"}]}'
#shulker box
data modify block 1 0 0 Items[{Slot:0b}] set from entity @s SelectedItem
data modify block 1 0 0 Items[{Slot:0b}].tag.display.Lore[3] set from block 0 0 0 Text1
#clears armor and offhand for some reason
#loot replace entity @s weapon.mainhand mine 1 0 0 minecraft:stick{dropContents:1b}