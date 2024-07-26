scoreboard objectives add skyblock.wandering_trader dummy
scoreboard objectives add skyblock.camels dummy
scoreboard players add @s skyblock.camels 1
schedule function skyblock:update 1t append
execute as @e[type=wandering_trader] unless score @s skyblock.wandering_trader matches 1 run function skyblock:world_changes/wander_new
