function alt:warden/find_shrieker/cast_x

scoreboard players add $z alt.raycast 1
execute unless score $z alt.raycast matches 13.. positioned ~ ~ ~-1 run function alt:warden/find_shrieker/cast_z
execute if score $z alt.raycast matches 13.. run scoreboard players reset $z alt.raycast