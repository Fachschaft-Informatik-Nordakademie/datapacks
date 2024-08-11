# set the current value to the old next value
scoreboard players operation current .border = next .border

# calculate the new next value
scoreboard players operation next .border -= reduction .border

# calculate the next coordinate
scoreboard players operation next_coords .border = next .border
scoreboard players operation next_coords .border /= #2 .border

# store these values in the data storage
execute store result storage minecraft:border current int 1 run scoreboard players get current .border
execute store result storage minecraft:border next int 1 run scoreboard players get next .border
execute store result storage minecraft:border next_coords int 1 run scoreboard players get next_coords .border