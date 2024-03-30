# this function runs after speedrun:start got called

# add to the scoreboard for every player that entered the end portal
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team1] run scoreboard players add Team1 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team2] run scoreboard players add Team2 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team3] run scoreboard players add Team3 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team4] run scoreboard players add Team4 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team5] run scoreboard players add Team5 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team6] run scoreboard players add Team6 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team7] run scoreboard players add Team7 teamSeenCredits 1
execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=Team8] run scoreboard players add Team8 teamSeenCredits 1

# set the seenCredits tag so it's only eceuted once
tag @a[nbt={seenCredits:1b}, tag=!seenCredits] add seenCredits

# check if every teammember has seen the credits
execute if score Team1 teamSeenCredits = Team1 teamMembers run execute as @a[team=Team1, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team1"}
execute if score Team2 teamSeenCredits = Team2 teamMembers run execute as @a[team=Team2, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team2"}
execute if score Team3 teamSeenCredits = Team3 teamMembers run execute as @a[team=Team3, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team3"}
execute if score Team4 teamSeenCredits = Team4 teamMembers run execute as @a[team=Team4, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team4"}
execute if score Team5 teamSeenCredits = Team5 teamMembers run execute as @a[team=Team5, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team5"}
execute if score Team6 teamSeenCredits = Team6 teamMembers run execute as @a[team=Team6, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team6"}
execute if score Team7 teamSeenCredits = Team7 teamMembers run execute as @a[team=Team7, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team7"}
execute if score Team8 teamSeenCredits = Team8 teamMembers run execute as @a[team=Team8, tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"Team8"}

# recall this after 0.5s (10t)
schedule function speedrun:check_winner 10t
