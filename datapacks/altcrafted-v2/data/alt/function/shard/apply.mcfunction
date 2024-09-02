item replace block 16 -64 16 container.0 from entity @s weapon.offhand
data modify block 16 -64 16 Items[0].components.minecraft:enchantments.levels merge from entity @s SelectedItem.components.minecraft:enchantments.levels
item replace entity @s weapon.offhand from block 16 -64 16 container.0
item replace block 16 -64 16 container.0 with air
item replace entity @s weapon.mainhand with echo_shard
playsound block.beacon.activate player @a