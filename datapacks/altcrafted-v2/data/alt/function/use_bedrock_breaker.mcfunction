advancement revoke @s only alt:internal/use_bedrock_breaker
scoreboard players set @s alt.test 0
execute at @e[limit=1,sort=nearest,distance=..8,tag=alt.bedrock_breaker,type=bat] run function alt:break_bedrock
execute unless entity @s[gamemode=creative] if entity @e[distance=..8,tag=alt.bedrock_breaker,type=bat] if score @s alt.test matches 0 run loot give @s loot alt:bedrock_breaker
kill @e[limit=1,sort=nearest,distance=..8,tag=alt.bedrock_breaker,type=bat]
