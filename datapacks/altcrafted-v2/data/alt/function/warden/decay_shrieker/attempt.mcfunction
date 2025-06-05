scoreboard players set $foundShrieker alt.test 0
scoreboard players set $decayedShrieker alt.test 0
function alt:warden/decay_shrieker/goto_shrieker with entity @s Item.components."minecraft:custom_data"."alt:shrieker_pos"

execute if score $foundShrieker alt.test matches 1 run loot spawn ~ ~ ~ loot alt:warden
execute if score $decayedShrieker alt.test matches 1 run function alt:warden/decay_shrieker/succeed
kill @s