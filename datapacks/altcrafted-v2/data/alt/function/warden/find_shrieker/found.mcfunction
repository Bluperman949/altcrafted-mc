scoreboard players set $x alt.raycast 20
scoreboard players set $y alt.raycast 20
scoreboard players set $z alt.raycast 20

item replace entity @s armor.head with stone_button[custom_data={"alt:shrieker_pos":{},"alt:id":"warden_armor"}] 1
data modify entity @s drop_chances.head set value 1
summon leash_knot ~ ~ ~ {Tags:["alt.shrieker_knot"]}
data modify storage alt:shrieker pos set from entity @e[type=leash_knot,tag=alt.shrieker_knot,distance=..1,limit=1] Pos
execute store result entity @s equipment.head.components."minecraft:custom_data"."alt:shrieker_pos".x int 1 run data get storage alt:shrieker pos[0]
execute store result entity @s equipment.head.components."minecraft:custom_data"."alt:shrieker_pos".y int 1 run data get storage alt:shrieker pos[1]
execute store result entity @s equipment.head.components."minecraft:custom_data"."alt:shrieker_pos".z int 1 run data get storage alt:shrieker pos[2]
kill @e[type=leash_knot,tag=alt.shrieker_knot,distance=..1,limit=1]