# create a data storage that determines the state of the speedrun
# change the state of the speedrun to setup
data merge storage speedrun {"state":"setup"}

# set up the team loop
scoreboard objectives add team_loop dummy
scoreboard players set loop_start team_loop 1
execute store result score loop_finish team_loop run data get storage minecraft:teams teams
scoreboard players operation loop_current team_loop = loop_start team_loop
scoreboard players set loop_break team_loop 0

# get the team members of all teams
function speedrun:refresh_all_teams

# spawn the spawn ring
execute at @e[type=minecraft:marker,tag=world_spawn] run place jigsaw speedrun:spawn/spawn_ring8 speedrun:center 7 ~ 0 ~
