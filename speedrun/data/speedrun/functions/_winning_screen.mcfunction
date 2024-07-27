# send a message to the winning team
$execute as @a[team=$(winner)] run title @s title {"text":"You won!", "color":"green"}

# send a message to all the losing teams
$execute as @a[team=!$(winner)] run title @s title {"text":"You lost.", "color":"red"}

# tell all players wich team won
execute as @a run title @s times 1s 10s 1s
$execute as @a run title @s subtitle {"text": "$(winner) won the speedrun"}

# set the seenWinningScreen tag
tag @a add seenWinningScreen
