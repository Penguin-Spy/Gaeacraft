#clear the advancement that triggered this
advancement revoke @s only gaeacraft:utility/inventory_changed

execute unless entity @s[tag=gaeacraft.player.ignore_inventory_changed] run function gaeacraft:events/inventory_changed