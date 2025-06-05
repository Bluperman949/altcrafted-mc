execute if block ~ ~ ~ sculk_shrieker[can_summon=true] run function alt:warden/find_shrieker/found

scoreboard players add $y alt.raycast 1
execute unless score $y alt.raycast matches 13.. positioned ~ ~-1 ~ run function alt:warden/find_shrieker/cast_y
execute if score $y alt.raycast matches 13.. run scoreboard players reset $y alt.raycast