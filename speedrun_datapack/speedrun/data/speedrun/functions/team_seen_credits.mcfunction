# add to the scoreboard for every player that entered the end portal
$execute as @a[nbt={seenCredits:1b}, tag=!seenCredits, team=$(current)] run scoreboard players add $(current) teamSeenCredits 1

# check if every teammember has seen the credits
$execute if score $(current) teamSeenCredits = $(current) teamMembers run execute as @a[team=$(current), tag=!seenWinningScreen] run function speedrun:winning_screen {"winner":"$(current)"}
