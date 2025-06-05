execute as @a[scores={alt.horseStats=1..}] at @s run function alt:horse/stats

scoreboard players add $200 alt.tick 1
execute if score $200 alt.tick matches 200.. as @a run function alt:check_scores

scoreboard players add $100 alt.tick 1
execute if score $100 alt.tick matches 100.. as @a run function alt:warden/tick_search
execute at @e[type=warden,tag=alt.warden.buffed] run function alt:warden/tick