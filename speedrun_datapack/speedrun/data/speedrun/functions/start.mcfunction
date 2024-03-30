# this function runs at /function speedrun:start

# get the teamMembers of all teams
execute store result score Team1 teamMembers run team list Team1
execute store result score Team2 teamMembers run team list Team2
execute store result score Team3 teamMembers run team list Team3
execute store result score Team4 teamMembers run team list Team4
execute store result score Team5 teamMembers run team list Team5
execute store result score Team6 teamMembers run team list Team6
execute store result score Team7 teamMembers run team list Team7
execute store result score Team8 teamMembers run team list Team8

# start the check for winners
function speedrun:check_winner

# start the clock
function speedrun:clock
