scoreboard players set $horse alt.test 0
execute as @e[type=#alt:horses,limit=1,sort=nearest,distance=..5] run function alt:horse/store_stats
execute if score $horse alt.test matches 1 run function alt:horse/print_stats
scoreboard players reset @s alt.horseStats
scoreboard players enable @s alt.horseStats