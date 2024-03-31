# Speedrun Datapack
Datapack that runs the Speedrun challenge.

## Features
- Timer: shows how long the Speedrun lasted in the Action bar of the players
- Winner: Detects, which team won the Speedrun and displays it to all players

## How to start
1. Create the teams and join them e.g. by using the teams script
2. Add the teams to a teams storage `/data merge storage teams {"team1": "[team name]", "team2": "[team name]", ...}`
3. Specify the number of teams using `/data merge storage teams {"teams": [# of teams]}`
4. Start the Speedrun with `/function speedrun:start`

## How to win
The winner is the team which had all players go through the End portal first.

## How to stop
Stop the Speedrun with `/function speedrun:stop`
