# send a message to the winning team
$execute as @p[team=$(winner)] run title @s title {"text":"You won!", "color":"green"}

# send a message to all the losing teams
$execute as @p[team=!$(winner)] run title @s title {"text":"You lost.", "color":"red"}

# tell all players wich team won
$execute as @p run title @s subtitle {"text": "$(winner) won the speedrun"}

# set the seenWinningScreen tag
tag @p add seenWinningScreen

# stop the clock
schedule clear speedrun:clock
