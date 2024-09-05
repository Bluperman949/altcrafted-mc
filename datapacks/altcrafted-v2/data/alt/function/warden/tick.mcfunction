# scoreboard players set $10 alt.tick 0
particle glow ~ ~1.5 ~ 0.7 0.8 0.7 0 2 force
execute anchored eyes as @e[type=#arrows,distance=..5,nbt={inGround:0b}] at @s run function alt:warden/delete_arrow