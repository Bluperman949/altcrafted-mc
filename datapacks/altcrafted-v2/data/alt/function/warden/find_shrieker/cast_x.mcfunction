function alt:warden/find_shrieker/cast_y

scoreboard players add $x alt.raycast 1
execute unless score $x alt.raycast matches 13.. positioned ~-1 ~ ~ run function alt:warden/find_shrieker/cast_x
execute if score $x alt.raycast matches 13.. run scoreboard players reset $x alt.raycast