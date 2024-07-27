# store the current team number in the team storage
execute store result storage minecraft:teams current_nr int 1 run scoreboard players get loop_current team_loop

# set the current team
function speedrun:_set_current_team with storage minecraft:teams

# ececute given command with team name
$function speedrun:_execute_with_current_teamname {"function":"$(function)"}

# go to next team
scoreboard players add loop_current team_loop 1

# go to next team
$execute unless score loop_break team_loop matches 1.. unless score loop_current team_loop > loop_finish team_loop run function speedrun:_team_loop {"function":"$(function)"}

# reset current if loop finishes
execute if score loop_current team_loop > loop_finish team_loop run scoreboard players operation loop_current team_loop = loop_start team_loop
