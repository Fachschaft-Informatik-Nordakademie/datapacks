# store the current number in the players storage
execute store result storage minecraft:players current_player_nr int 1 run scoreboard players get loop_current .spawn_circle

# set the current player name
execute run function spawn_cages:zz_circle/set_current_player with storage players

# tp the current player to its marker
function spawn_cages:zz_lock/lock_tp with storage players

# go to next player
scoreboard players add loop_current .spawn_circle 1

# reset current if loop finishes
execute if score loop_current .spawn_circle > loop_finish .spawn_circle run scoreboard players operation loop_current .spawn_circle = loop_start .spawn_circle