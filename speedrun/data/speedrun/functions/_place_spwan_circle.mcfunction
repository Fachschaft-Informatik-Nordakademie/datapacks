# save total number of players in .spawn_circle scoreboard
execute store result score players .spawn_circle run data get storage minecraft:teams players

# place the spawn center
execute as @e[type=minecraft:armor_stand,tag=center] at @e[type=minecraft:armor_stand,tag=center] run place jigsaw speedrun:spawn/center_placer speedrun:center 7 ~ 0 ~

# calculate the angle
scoreboard players operation angle .spawn_circle /= players .spawn_circle

# save the angle an # of players in a storage
execute store result storage spawn_circle angle int 1 run scoreboard players get angle .spawn_circle
execute store result storage spawn_circle players int 1 run scoreboard players get players .spawn_circle

# store the loop parameters in the .spawn_circle scoreboard
scoreboard players set loop_start .spawn_circle 1
execute store result score loop_finish .spawn_circle run data get storage minecraft:spawn_circle players
scoreboard players operation loop_current .spawn_circle = loop_start .spawn_circle
scoreboard players set loop_break .spawn_circle 0

# run a loop that spwawns a player cage
function speedrun:_place_player_cage with storage minecraft:spawn_circle
