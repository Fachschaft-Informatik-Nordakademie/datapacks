# loop for placing the player cage

# store the current number in the players storage
execute store result storage minecraft:players current_player_nr int 1 run scoreboard players get loop_current .spawn_circle

# set the current player name
execute run function spawn_cages:zz_circle/set_current_player with storage players

# spawn a marker for the cage
$execute at @e[type=minecraft:armor_stand,tag=center] run summon minecraft:marker ^ ^ ^$(radius) {Tags:["cage_position"]}

# place the player cage
execute as @e[type=minecraft:marker,tag=cage_position, tag=!summoned_cage] at @e[type=minecraft:marker,tag=cage_position, tag=!summoned_cage] run place jigsaw spawn_cages:spawn/cage_placer spawn_cages:player_cage 7 ~ 0 ~

# give the marker a tag that it summoned a cage
tag @n[type=marker, tag=cage_position, tag=!summoned_cage] add summoned_cage

# set the spawn point of the player
execute as @n[type=marker, tag=cage_center, tag=!set_player_spawn] at @n[type=marker, tag=cage_center, tag=!set_player_spawn] run function spawn_cages:zz_circle/set_player_spawn with storage players

# give the marker of the player cage a tag that it already set the player spawn
tag @n[type=marker, tag=cage_center, tag=!set_player_spawn] add set_player_spawn

# rotate to next cage
$execute at @e[type=minecraft:armor_stand,tag=center] run tp @e[type=minecraft:armor_stand,tag=center] ~ ~ ~ ~$(angle) ~

# go to next player
scoreboard players add loop_current .spawn_circle 1

# go to next player cage
execute unless score loop_break .spawn_circle matches 1.. unless score loop_current .spawn_circle > loop_finish .spawn_circle run function spawn_cages:zz_circle/place_cage with storage minecraft:players

# reset current if loop finishes
execute if score loop_current .spawn_circle > loop_finish .spawn_circle run scoreboard players operation loop_current .spawn_circle = loop_start .spawn_circle
