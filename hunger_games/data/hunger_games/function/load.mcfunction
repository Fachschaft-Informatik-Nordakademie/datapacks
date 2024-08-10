# This function runs at /reload
tellraw @a "Loaded hunger_games datapack"

# create a countdown scoreboard and initialise it with 31 sec
scoreboard objectives add .countdown dummy
scoreboard players set #1 .countdown 1
scoreboard players set counter .countdown 31

# create a border scoreboard and initialise it
scoreboard objectives add .border dummy
scoreboard players set next .border 2500
scoreboard players set next_coords .border 1250
scoreboard players set reduction .border 600
scoreboard players set stop .border 100
scoreboard players set #2 .border 2

# set the spawn to 0 0
setworldspawn 0 319 0
worldborder center 0 0

# set the starting border
execute store result storage minecraft:border next int 1 run scoreboard players get next .border
function hunger_games:zz_border/init_border with storage border