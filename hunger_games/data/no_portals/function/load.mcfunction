# This function runs at /reload
tellraw @a "Loaded no_portals datapack"

# add the scoreboard
scoreboard objectives add .no_portals dummy
scoreboard players set on .no_portals 1