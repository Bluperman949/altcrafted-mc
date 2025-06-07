# first item has its enchantments merged from the shard
# second item remains unchanged
item replace block 16 -64 16 container.0 from entity @s weapon.offhand
item replace block 16 -64 16 container.1 from entity @s weapon.offhand
data modify block 16 -64 16 Items[0].components."minecraft:enchantments" merge from entity @s SelectedItem.components."minecraft:enchantments"
# move the first (and hopefully upgraded) item from barrel to offhand
item replace entity @s weapon.offhand from block 16 -64 16 container.0

# merge offhand item -> second barrel item will only succeed if they are different
execute store success score $shardApplied alt.test run data modify block 16 -64 16 Items[1].components."minecraft:enchantments" merge from entity @s equipment.offhand.components."minecraft:enchantments"
execute if score $shardApplied alt.test matches 1 run function alt:shard/succeed