# Speedrun Datapack
Datapack that runs the Speedrun challenge.

## Features
- Timer: shows how long the Speedrun lasted in the Action bar of the players
- Winner: Detects, which team won the Speedrun and displays it to all players

## How to start
1. Run the [teams script](create_teams) with the parameter `speedrun_setup=True` or do these steps manually:
   1. create the teams with `/team add [team name]`
   2. add the players to the teams with `/team join [team name] [player name]`
   3. Add the teams to a teams storage  with `/data merge storage teams {"team[team nr]": "[team name]"}` the team nr needs to start at 1 and count upwards
   4. Specify the number of teams using `/data merge storage teams {"teams": [# of teams]}`
2. Start the Speedrun with `/function speedrun:start`

## How to win
The winner is the team which had all players go through the End portal first.

## How to stop
Stop the Speedrun with `/function speedrun:stop`
