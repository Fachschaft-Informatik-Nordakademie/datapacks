# Generate the spawn_circle

# place the spawn center
execute as @e[type=minecraft:armor_stand,tag=center] at @e[type=minecraft:armor_stand,tag=center] run place jigsaw spawn_cages:spawn/center_placer spawn_cages:center 7 ~ 0 ~

# store the loop parameters in the .spawn_circle scoreboard
scoreboard players set loop_start .spawn_circle 1
execute store result score loop_finish .spawn_circle run data get storage minecraft:players total
scoreboard players operation loop_current .spawn_circle = loop_start .spawn_circle
scoreboard players set loop_break .spawn_circle 0

# run a loop that spwawns a player cage
function spawn_cages:circle/place_cage with storage minecraft:players

# remove the was_locked tag from all players
tag @a remove was_locked

# set the state of the spawn cages to generated
data merge storage spawn_cages {"state":"generated"}