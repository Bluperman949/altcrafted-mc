advancement revoke @s only silk_spawners:pick_up_spawner

data modify storage silk_spawners:temp id set from entity @s Inventory[{components:{"minecraft:custom_data":{"silk_spawners:processed":0b}}}].components."minecraft:custom_data"."silk_spawners:id"
clear @s minecraft:spawner[minecraft:custom_data~{"silk_spawners:processed":0b}]
give @s spawner

execute if data storage silk_spawners:temp {id:"minecraft:skeleton"} run give @s skeleton_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:zombie"} run give @s zombie_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:spider"} run give @s spider_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:cave_spider"} run give @s cave_spider_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:blaze"} run give @s blaze_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:silverfish"} run give @s silverfish_spawn_egg
execute if data storage silk_spawners:temp {id:"minecraft:magma_cube"} run give @s magma_cube_spawn_egg
