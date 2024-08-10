# This function runs at /reload
tellraw @a "Loaded no_portals datapack"

# add the scoreboard
scoreboard objectives add .no_portals dummy
scoreboard players on .no_portals set value 1
