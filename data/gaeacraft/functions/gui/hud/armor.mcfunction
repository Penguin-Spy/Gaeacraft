#gaeacraft:gui/hud/armor.mcfunction
#loop for generating the player's armor section of their hud.
#called once to start creating display, returns full display in 0 0 0's Text1 & Text2
#E000 - E004: heart

#Determine the character, and append it to previous text
execute if score $temp gaeacraft.count matches 4.. run data modify storage gaeacraft:hud armor append value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE01F"}]}'
execute if score $temp gaeacraft.count matches 3 run data modify storage gaeacraft:hud armor append value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE020"}]}'
execute if score $temp gaeacraft.count matches 2 run data modify storage gaeacraft:hud armor append value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE021"}]}'
execute if score $temp gaeacraft.count matches 1 run data modify storage gaeacraft:hud armor append value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE022"}]}'
execute if score $temp gaeacraft.count matches ..0 run data modify storage gaeacraft:hud armor append value '{"translate":"space.-2","with":[{"font":"gaeacraft:icons","text":"\\uE023"}]}'

#sub 4 from both temps
scoreboard players remove $maxTemp gaeacraft.count 4
scoreboard players remove $temp gaeacraft.count 4

#loop if there are more characters necessary
execute if score $maxTemp gaeacraft.count matches 1.. run function gaeacraft:gui/hud/armor