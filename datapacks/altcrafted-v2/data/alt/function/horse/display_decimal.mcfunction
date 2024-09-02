scoreboard players operation $dI alt.display = $input alt.display
scoreboard players operation $d1 alt.display = $input alt.display
scoreboard players operation $d2 alt.display = $input alt.display
scoreboard players operation $d3 alt.display = $input alt.display

scoreboard players operation $dI alt.display /= $1000 alt.consts
scoreboard players operation $d1 alt.display %= $1000 alt.consts
scoreboard players operation $d1 alt.display /= $100 alt.consts
scoreboard players operation $d2 alt.display %= $100 alt.consts
scoreboard players operation $d2 alt.display /= $10 alt.consts
scoreboard players operation $d3 alt.display %= $10 alt.consts

data modify storage alt:horse display set value [{"text":"","color":"gold"},{"score":{"name":"$dI","objective":"alt.display"}},{"text":"."},{"score":{"name":"$d1","objective":"alt.display"}},{"score":{"name":"$d2","objective":"alt.display"}},{"score":{"name":"$d3","objective":"alt.display"}}]