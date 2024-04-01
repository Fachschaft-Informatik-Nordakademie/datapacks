# add one second
scoreboard players add sec timer 1

# add minutes
execute if score sec timer matches 60 run scoreboard players add min timer 1
execute if score sec timer matches 60 run scoreboard players set sec timer 0

# add hours
execute if score min timer matches 60 run scoreboard players add hours timer 1
execute if score min timer matches 60 run scoreboard players set min timer 0

# write the scoreboard to the storage
execute store result storage minecraft:timer sec int 1 run scoreboard players get sec timer
execute store result storage minecraft:timer min int 1 run scoreboard players get min timer
execute store result storage minecraft:timer hours int 1 run scoreboard players get hours timer

# display the time
function speedrun:_display_clock with storage minecraft:timer

schedule function speedrun:_clock 1s
