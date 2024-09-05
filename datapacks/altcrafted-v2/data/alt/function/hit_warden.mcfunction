advancement revoke @s only alt:internal/hit_warden
execute as @e[type=warden,limit=1,distance=..100,nbt={HurtTime:10s}] unless entity @s[tag=alt.warden] run function alt:warden/check_health