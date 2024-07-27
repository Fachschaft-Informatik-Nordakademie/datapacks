# Spawn Cirlce Datapack
Spawns a circle  with spawn cages for every player listed in a data storage.

## How to use it


## How it Works

### Data Storage
- `players`: Stores all the player names as well as the tolal number of players.
    - `total`: Total number of players N
    - `angle`: Rotation angle to create the spawn circle
    - `current_player_nr`: Number of the current player
    - `current_player_name`: Name of the current player
    - `player1`: <name_of_player1>
    - ...
    - `playerN`:  <name_of_playerN>

### Scoreboards
- `.spawn_circle`: Used for spawning the spawn circle
    - `players`: Total number of players 
    - `angle`: Angle that the armorestand that spawns the cages needs to rotated. Is calculated based on the # of players.


### Tags
- `center`: Tag for the armor stand in the center of the spawn circle
- `cage_position`: Tag for the markers that are spawned at the cage positions
- `summoned_cage`: Tag for all the cage_position markers that already summoned a player cage
- `cage_center`: Tag for the marker that sits at the center of the player cage
- `set_player_spawn`: Tag for all the cage_center markers that already set the spawnpoint of a player