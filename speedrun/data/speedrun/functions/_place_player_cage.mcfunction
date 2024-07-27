# loop for placing player cage

# store the current number in the spawn_circle storage
execute store result storage minecraft:spawn_circle current_nr int 1 run scoreboard players get loop_current .spawn_circle

$tellraw @a "Hi $(angle)"
# spawn an armor stand for the cage
execute at @e[type=minecraft:armor_stand,tag=center] run summon minecraft:marker ^ ^ ^25 {Tags:["cage"]}
execute at @e[type=minecraft:armor_stand,tag=center] run setblock ^ ^ ^25 minecraft:diamond_block


# rotate to next cage
$execute at @e[type=minecraft:armor_stand,tag=center] run tp @e[type=minecraft:armor_stand,tag=center] ~ ~ ~ ~$(angle) ~

# go to next team
scoreboard players add loop_current .spawn_circle 1

# go to next player cage
execute unless score loop_break .spawn_circle matches 1.. unless score loop_current .spawn_circle > loop_finish .spawn_circle run function speedrun:_place_player_cage with storage minecraft:spawn_circle

# reset current if loop finishes
execute if score loop_current .spawn_circle > loop_finish .spawn_circle run scoreboard players operation loop_current .spawn_circle = loop_start .spawn_circle
