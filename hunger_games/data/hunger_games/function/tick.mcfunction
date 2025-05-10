# ban all the dead players
execute if entity @a[scores={deaths=1..}] run say @a[scores={deaths=1..}] is out of the game!

# on a server
execute as @a[scores={deaths=1..}] run ban @s[type=minecraft:player] You died!

# in singleplayer (testing)
execute as @a[scores={deaths=1..}] run kick @s[type=minecraft:player] You died!
