scoreboard objectives add alt.test dummy
scoreboard objectives add alt.horseStats trigger
scoreboard objectives add alt.math dummy
scoreboard objectives add alt.display dummy
scoreboard objectives add alt.consts dummy
scoreboard objectives add alt.tick dummy
scoreboard objectives add alt.logout custom:leave_game

scoreboard players set $1000 alt.consts 1000
scoreboard players set $100 alt.consts 100
scoreboard players set $10 alt.consts 10
scoreboard players set $1 alt.consts 1

# https://github.com/Snownee/Jade/blob/1.21-fabric/src/main/java/snownee/jade/addon/vanilla/HorseStatsProvider.java
#  -0.1817584952 * jump^3
# + 3.6897139920 * jump^2
# + 2.1285991340 * jump - 0.3439303670
scoreboard players set $jumpA alt.consts -182
scoreboard players set $jumpB alt.consts 3690
scoreboard players set $jumpC alt.consts 2129
scoreboard players set $jumpD alt.consts 0343
# 42.16 blocks/sec https://wiki/w/Horse#Movement_speed
scoreboard players set $move alt.consts 4216

scoreboard objectives add alt.health health "Health"
scoreboard objectives modify alt.health rendertype hearts
scoreboard objectives setdisplay list alt.health
scoreboard objectives add alt.deaths deathCount "Deaths"
scoreboard objectives add alt.swam custom:swim_one_cm "Distance Swam"
scoreboard objectives add alt.villkill killed:villager "Villagers Killed"

setblock 16 -64 16 barrel