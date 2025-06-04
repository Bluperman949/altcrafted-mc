summon lightning_bolt
tellraw @a [{"selector":"@s"},{"text":" summoned thunder!","color":"aqua"}]
data remove entity @e[type=glow_item_frame,limit=1,dx=0] Item
weather thunder