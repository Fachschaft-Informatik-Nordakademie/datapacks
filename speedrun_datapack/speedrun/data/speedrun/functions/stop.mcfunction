# this runs on speedrun:stop

# change the state in the data storage
data modify storage speedrun state set value stopped

# turn daylight off
gamerule doDaylightCycle false

# stop the check winner
schedule clear speedrun:_check_winner

# stop the clock
schedule clear speedrun:_clock
