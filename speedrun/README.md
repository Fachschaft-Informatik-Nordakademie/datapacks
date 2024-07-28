# Speedrun Datapack
Datapack that runs the Speedrun challenge.

> [!NOTE]
> Developed in datapack version 41 for Minecraft version 1.20.5.
> This Datapack is not finished (yet?)


## Features
- Timer: shows how long the Speedrun lasted in the Action bar of the players
- Winner: Detects, which team won the Speedrun and displays it to all players

## How to start
1. Run the [teams script](/create_teams) with the parameter `speedrun_setup=True` or do these steps manually:
   1. create the teams with `/team add [team name]`
   2. add the players to the teams with `/team join [team name] [player name]`
   3. Add the teams to a teams storage  with `/data merge storage teams {"team[team nr]": "[team name]"}` the team nr needs to start at 1 and count upwards
   4. Specify the number of teams using `/data merge storage teams {"teams": [# of teams]}`
2. Start the Speedrun with `/function speedrun:start`

## How to win
The winner is the team which had all players go through the End portal first.

## How to stop
Stop the Speedrun with `/function speedrun:stop`

## How it works

### Scoreboards
The Speedrun datapack uses multiple scoreboards to store informations about the
game, the teams and the players.
Here is a list of all the scoreboards
- `teamSeenCredits`
  - Use: Stores how many team members of every team have seen the end credits and
  therefore have been gone through the end portal.
  - Content: The scores consist of the team name followed by the number of players the
  team who have `nbt={seenCredits:1b}`.
- `teamMembers`
  - Use: Stores the number of players in every team.
  - Content: Team name and there number of players.
- `timer`
  - Use: Stores the time since the Speedrun started
  - Content:
    - `hours`: number of hours since the Speedrun started
    - `min`: number of minutes since the Speedrun started
    - `sec`: number of seconds since the Speedrun started
- `team_loop`
  - Use: used for the for loop that executes commands for every team
  - Content:
    - `loop_start`: value at which number the loop starts
    - `loop_finish`: value at which number the loop stops. Number of teams stored in the teams storage
    - `loop_current`: value at which team number the loop is currently
    - `loop_break`: determines if there is a break in the loop (0=false & 1=true). Breaks are currently not used.
- `lock_id`


### Data storage
The Speedrun datapack also uses some data storages.
- `teams`
  - Use: stores the number of teams, and every team name connected to the team number.
    This data storage has to be created before the Speedrun starts. See above.
  - Content:
    - `teams`: # of teams
    - `team[team nr]`: team name
- speedrun
  - Use: stores the state of the speedrun
  - Content:
    - `state`: setup/active/stopped/finished


### Tags
Tags are applied to players to store data about them. Mostly use to run a function only ones. These tags are used:
- `seenCredits`: Applied to a player if he has seen the end credits and is added to his team value in the teamSeenCredits scoreboard
- `seenWinningScreen`: Applied to a player if he has seen the winning screen
- `new_lock_marker`
- `was_locked`
