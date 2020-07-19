#gaeacraft:hud/main.mcfunction
#called by each player, assembles and then displays their hud

#E000 - E004: heart
#E005 - E009: hunger
#E00A - E00E: thirst
#E00F - E014: aura
#E015 - E019: energy
#E01A - E01E: temperature
#E01F - E023: armor

#health[10]
#temperature
#thirst[10]
#hunger[10]
#aura[10]
#energy[10]
#armor[10]


# Prepare, then call each section's build function
data remove storage gaeacraft:hud health
data remove storage gaeacraft:hud armor
data remove storage gaeacraft:hud temperature
data remove storage gaeacraft:hud thirst
data remove storage gaeacraft:hud hunger
data remove storage gaeacraft:hud aura
data remove storage gaeacraft:hud energy
#Health
scoreboard players set $maxTemp gaeacraft.count 40
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.health
function gaeacraft:hud/health
#Armor
scoreboard players set $maxTemp gaeacraft.count 40
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.armor
function gaeacraft:hud/armor
#Temperature

function gaeacraft:hud/temperature
#Thirst
scoreboard players set $maxTemp gaeacraft.count 20
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.thirst
function gaeacraft:hud/thirst
#Hunger
scoreboard players set $maxTemp gaeacraft.count 20
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.hunger
function gaeacraft:hud/hunger
#Aura
scoreboard players set $maxTemp gaeacraft.count 20
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.aura
function gaeacraft:hud/aura
#Energy
scoreboard players set $maxTemp gaeacraft.count 20
scoreboard players operation $temp gaeacraft.count = @s gaeacraft.energy
function gaeacraft:hud/energy


# Display the created hud
title @a actionbar ["",{"translate":"space.2"},{"nbt":"health[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[9]","storage":"gaeacraft:hud","interpret":true},{"translate":"space.-80"},{"nbt":"armor[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[9]","storage":"gaeacraft:hud","interpret":true},{"translate":"space.0"},{"nbt":"temperature","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[9]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[9]","storage":"gaeacraft:hud","interpret":true},{"translate":"space.-80"},{"nbt":"aura[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[9]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[9]","storage":"gaeacraft:hud","interpret":true}]


#outdated stuff
#,{"nbt":"health[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"health[9]","storage":"gaeacraft:hud","interpret":true}

#,{"text":"\uF80B\uF809"}

#,{"nbt":"armor[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"armor[9]","storage":"gaeacraft:hud","interpret":true}

#,{"text":"\uF822"}

#,{"nbt":"temperature","storage":"gaeacraft:hud","interpret":true}

#,{"nbt":"thirst[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"thirst[9]","storage":"gaeacraft:hud","interpret":true}

#,{"nbt":"hunger[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"hunger[9]","storage":"gaeacraft:hud","interpret":true}

#,{"text":"\uF80B\uF809"}

#,{"nbt":"aura[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"aura[9]","storage":"gaeacraft:hud","interpret":true}

#,{"nbt":"energy[0]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[1]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[2]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[3]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[4]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[5]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[6]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[7]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[8]","storage":"gaeacraft:hud","interpret":true},{"nbt":"energy[9]","storage":"gaeacraft:hud","interpret":true}


#title @a actionbar ["",{"nbt":"Text1","block":"0 0 0","interpret":true}]
#,{"text":"\uE01E\uE00A\uF802\uE00B\uF802\uE00C\uF802\uE00D\uF802\uE00E\uF802\uE005\uF802\uE006\uF802\uE007\uF802\uE008\uF802\uE009\uF80B\uF809\uF802\uE00F\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE013\uF802\uE015\uF802\uE016\uF802\uE017\uF802\uE018\uF802\uE019"}

#old placeholder bar
#                           hearts →                                                                                                ← hearts | temp | thirst/hunger →                                                                                 ← thirst/hunger | mana/energy → \uF80B\uF809\uF802
#title @a actionbar {"text":"\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE001\uF802\uE004\uE01E\uE00D\uF802\uE00A\uF802\uE00A\uF802\uE00A\uF802\uE00A\uF802\uE009\uF802\uE009\uF802\uE007\uF802\uE005\uF802\uE005\uF80B\uF809\uF802\uE014\uF802\uE013\uF802\uE010\uF802\uE00F\uF802\uE00F\uF802\uE019\uF802\uE017\uF802\uE015\uF802\uE015\uF802\uE015"}
#title @a actionbar {"text":"\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE000\uF802\uE001\uF802\uE004\uE01E\uE00A\uF802\uE00B\uF802\uE00C\uF802\uE00D\uF802\uE00E\uF802\uE005\uF802\uE006\uF802\uE007\uF802\uE008\uF802\uE009\uF80B\uF809\uF802\uE00F\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE013\uF802\uE015\uF802\uE016\uF802\uE017\uF802\uE018\uF802\uE019"}