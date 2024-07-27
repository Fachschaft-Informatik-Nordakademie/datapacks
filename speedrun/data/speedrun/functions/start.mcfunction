# this function runs at /function speedrun:start

# tell the user that the run has to be setup first
execute unless data storage speedrun {"state":"setup"} run tellraw @s "The speedrun has to be setup first by running /function speedrun:setup"

# change the state of the run to active
execute if data storage speedrun {"state":"setup"} run data modify storage speedrun state set value stopped

# change the state in the data storage
execute if data storage speedrun {"state":"active"} run data modify storage speedrun state set value active

# unlock all players
execute if data storage speedrun {"state":"active"} as @a[tag=was_locked] run function speedrun:_unlock_player

# turn on day light cycle
execute if data storage speedrun {"state":"active"} run gamerule doDaylightCycle true

# start the check for winners
execute if data storage speedrun {"state":"active"} run function speedrun:_check_winner

# start the clock
execute if data storage speedrun {"state":"active"} run function speedrun:_clock
