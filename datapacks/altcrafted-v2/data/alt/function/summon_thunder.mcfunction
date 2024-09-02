summon lightning_bolt
tellraw @a [{"selector":"@s"},{"text":" summoned thunder!","color":"aqua"}]
data modify entity @e[type=glow_item_frame,limit=1,dx=0] Item set value {Count:0}
weather thunder