advancement revoke @s only alt:internal/hit_warden
execute as @e[type=warden,limit=1,distance=..200,nbt={HurtTime:10s},tag=!alt.warden.buffed] run function alt:warden/check_health