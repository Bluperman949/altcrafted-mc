advancement revoke @s only alt:internal/use_bedrock_breaker
scoreboard players set @s alt.test 0
execute store success score @s alt.test at @e[tag=alt.bedrock_breaker,limit=1,sort=nearest] if block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ air
execute unless entity @s[gamemode=creative] if entity @e[tag=alt.bedrock_breaker,distance=..8] if score @s alt.test matches 0 run loot give @s loot alt:bedrock_breaker
kill @e[tag=alt.bedrock_breaker,limit=1,sort=nearest]