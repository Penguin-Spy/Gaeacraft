# remove advancement that triggered this function
advancement revoke @s only gaeacraft:utility/item_durability_changed

#say getting tool durability

#actual function stuff
execute store result score @s gaeacraft.durab run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s gaeacraft.durab *= -1 gaeacraft.const
#choose which one based on SelectedItem.id
scoreboard players operation @s gaeacraft.durab += $durability_stoneAxe gaeacraft.const
#sign, make last text based on scoreboard chosen by SelectedItem.id
data modify block 0 0 0 Text1 set value '{"text":" ","color":"blue","italic":"false","extra":[{"score":{"objective":"gaeacraft.durab","name":"@p"}},{"text":"/131"}]}'
#shulker box
data modify block 1 0 0 Items[{Slot:0b}] set from entity @s SelectedItem
data modify block 1 0 0 Items[{Slot:0b}].tag.display.Lore[3] set from block 0 0 0 Text1
loot replace entity @s weapon.mainhand 1 mine 1 0 0 minecraft:air{drop_contents:1b}