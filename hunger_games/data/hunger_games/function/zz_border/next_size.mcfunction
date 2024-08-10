# set the current value to the old next value
scoreboard players operation current .border = next .border

# calculate the new next value
scoreboard players operation next .border -= reduction .border

# store these values in the data storage
execute store result storage minecraft:border current int 1 run scoreboard players get current .border
execute store result storage minecraft:border next int 1 run scoreboard players get next .border