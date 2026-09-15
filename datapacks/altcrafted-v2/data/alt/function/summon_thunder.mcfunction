summon lightning_bolt
tellraw @a [{"selector":"@s"},{"text":" summoned thunder!","color":"aqua"}]
data remove entity @e[limit=1,dx=0,type=glow_item_frame] Item
weather thunder