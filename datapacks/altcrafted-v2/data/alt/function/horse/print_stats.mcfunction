tellraw @s [{"text":"","color":"yellow"},{"selector":"@e[type=#alt:horses,limit=1,sort=nearest,distance=..5]"},{"text":"'s stats:"}]

execute store result score $hearts alt.display run data get storage alt:horse health 0.5
execute store result score $health alt.display run data get storage alt:horse health 1
tellraw @s [{"text":" Health: ","color":"aqua"},{"score":{"name":"$health","objective":"alt.display"},"color":"gold"},{"text":"hp","color":"red"},[{"text":" (","color":"gray"},{"score":{"name":"$hearts","objective":"alt.display"}},{"text":" hearts)"}]]

execute store result score $input alt.display run data get storage alt:horse jump 1000
function alt:horse/display_decimal
tellraw @s [{"text":" Jump Height: ","color":"aqua"},{"storage":"alt:horse","nbt":"display","interpret":true},{"text":"m","color":"red"}]

execute store result score $input alt.display run data get storage alt:horse speed 1000
function alt:horse/display_decimal
tellraw @s [{"text":" Speed: ","color":"aqua"},{"storage":"alt:horse","nbt":"display","interpret":true},{"text":"m/s","color":"red"}]