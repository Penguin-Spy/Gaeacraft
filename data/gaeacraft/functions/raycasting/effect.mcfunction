#if no conditions are true, no breaking is default
#effect give @s minecraft:mining_fatigue 1 255 true

#hand detection first, then tool specific will override
#if hand_slow, clear then give less
execute if block ~ ~ ~ #gaeacraft:raycast/hand_slow run effect clear @s minecraft:mining_fatigue
execute if block ~ ~ ~ #gaeacraft:raycast/hand_slow run effect give @s minecraft:mining_fatigue 1 1 true
#if hand_normal, clear
execute if block ~ ~ ~ #gaeacraft:raycast/hand_normal run effect clear @s minecraft:mining_fatigue


#if stone_hoe_normal and holding stone_hoe, clear
execute if block ~ ~ ~ #gaeacraft:raycast/stone_hoe_normal if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run effect clear @s minecraft:mining_fatigue
#if stone_axe_normal and holding stone_axe, clear
execute if block ~ ~ ~ #gaeacraft:raycast/stone_axe_normal if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect clear @s minecraft:mining_fatigue
