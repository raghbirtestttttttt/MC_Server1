scoreboard players set @s skyblock.wandering_trader 1
tag @e add exists
data modify entity @s Offers.Recipes insert -1 value {priceMultiplier:0.05f,xp:40}
loot spawn ~ ~ ~ loot skyblock:villager/wander_price
tag @e[distance=0..1,tag=!exists] add villager_offer
data modify entity @s Offers.Recipes[-1].buy set from entity @e[limit=1,tag=villager_offer] Item
kill @e[tag=villager_offer]
loot spawn ~ ~ ~ loot skyblock:villager/wander_normal
tag @e[distance=0..1,tag=!exists] add villager_offer
data modify entity @s Offers.Recipes[-1].sell set from entity @e[limit=1,tag=villager_offer] Item
kill @e[tag=villager_offer]
tag @e[tag=exists] remove exists