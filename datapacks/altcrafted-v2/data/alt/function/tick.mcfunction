execute as @a[scores={alt.horseStats=1..}] at @s run function alt:horse/stats
scoreboard players add $200 alt.tick 1
execute if score $200 alt.tick matches 200.. as @a run function alt:check_scores