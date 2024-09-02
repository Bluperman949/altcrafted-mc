data modify storage alt:horse health set from entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

# https://github.com/Snownee/Jade/blob/1.21-fabric/src/main/java/snownee/jade/addon/vanilla/HorseStatsProvider.java
#  -0.1817584952 * jump^3
# + 3.6897139920 * jump^2
# + 2.1285991340 * jump - 0.3439303670
execute store result score $jump1 alt.math run data get entity @s Attributes[{Name:"minecraft:generic.jump_strength"}].Base 1000
scoreboard players operation $jump2 alt.math = $jump1 alt.math
scoreboard players operation $jump2 alt.math *= $jump1 alt.math
scoreboard players operation $jump2 alt.math /= $1000 alt.consts
scoreboard players operation $jump3 alt.math = $jump2 alt.math
scoreboard players operation $jump3 alt.math *= $jump1 alt.math
scoreboard players operation $jump3 alt.math /= $1000 alt.consts

scoreboard players operation $jump3 alt.math *= $jumpA alt.consts
scoreboard players operation $jump3 alt.math /= $1000 alt.consts
scoreboard players operation $jump2 alt.math *= $jumpB alt.consts
scoreboard players operation $jump2 alt.math /= $1000 alt.consts
scoreboard players operation $jump1 alt.math *= $jumpC alt.consts
scoreboard players operation $jump1 alt.math /= $1000 alt.consts

scoreboard players operation $jump alt.math = $jump3 alt.math
scoreboard players operation $jump alt.math += $jump2 alt.math
scoreboard players operation $jump alt.math += $jump1 alt.math
scoreboard players operation $jump alt.math -= $jumpD alt.consts

execute store result storage alt:horse jump float 0.001 run scoreboard players get $jump alt.math

execute store result score $speed alt.math run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1000
scoreboard players operation $speed alt.math *= $move alt.consts
execute store result storage alt:horse speed float 0.00001 run scoreboard players get $speed alt.math

scoreboard players set $horse alt.test 1