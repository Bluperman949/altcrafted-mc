scoreboard players reset @s graves.died

execute positioned ~ ~1 ~ as @e[type=item,distance=..0.6] run function graves:preserve_item

execute store result score $x graves.temp run data get entity @s Pos[0]
execute store result score $y graves.temp run data get entity @s Pos[1]
execute store result score $z graves.temp run data get entity @s Pos[2]
execute positioned ~ ~1 ~ unless dimension overworld if score $y graves.temp matches ..0 run tp @e[type=item,distance=..0.6] ~ 1 ~
execute positioned ~ ~1 ~ if dimension overworld if score $y graves.temp matches ..-64 run tp @e[type=item,distance=..0.6] ~ -63 ~

tellraw @s [{text:"You died at ",color:"aqua"},{translate:"graves.none",fallback:"[%s, %s, %s]",color:"white",with:[{score:{name:"$x",objective:"graves.temp"},color:"gold"},{score:{name:"$y",objective:"graves.temp"},color:"gold"},{score:{name:"$z",objective:"graves.temp",},color:"gold"}]},{text:" in ",color:"aqua"},{text:"\"",color:"white"},{entity:"@s",nbt:Dimension,color:"green"},{text:"\"",color:"white"}]
