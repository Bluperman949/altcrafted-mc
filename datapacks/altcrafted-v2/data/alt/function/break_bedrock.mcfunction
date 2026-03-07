execute store success score @s alt.test if block ~ ~-1 ~ bedrock run setblock ~ ~-1 ~ air
execute if score @s alt.test matches 1 if block ~ ~-2 ~ bedrock run setblock ~ ~-2 ~ air
execute if score @s alt.test matches 1 if block ~ ~-3 ~ bedrock run setblock ~ ~-3 ~ air

