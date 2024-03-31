# this function runs at /function speedrun:start

# set up the team loop
scoreboard objectives add team_loop dummy
scoreboard players set loop_start team_loop 1
execute store result score loop_finish team_loop run data get storage minecraft:teams teams
scoreboard players operation loop_current team_loop = loop_start team_loop
scoreboard players set loop_break team_loop 0

# get the team members of all teams
function speedrun:team_loop {"function":"speedrun:reload_team_members"}

# start the check for winners
function speedrun:check_winner

# start the clock
function speedrun:clock
