execute store result score $wardenHealth alt.math run data get entity @s Health
execute if score $wardenHealth alt.math matches ..100 run function alt:warden/buff