# Spawn Cirlce Datapack [![Datapack Format - 48](https://img.shields.io/badge/Datapack_Format-48-2ea44f)](https://minecraft.wiki/w/Data_pack) [![Minecraft - 1.21](https://img.shields.io/badge/Minecraft-1.21-2ea44f)](https://minecraft.wiki/w/Java_Edition_1.21.1)
Spawns a circle with spawn cages for every player listed in a data storage.
This datapack also turns off the daylight circle and locks every player in their cage until they are released.

## How to use it
In order to use the Datapack you have to follow these steps:
1. Calculate the angle and radius
    ```
    N := total number of players
    D := distance between cages
    D = 8
    angle = 360 / N
    radius = max((N*D)/(2π), 20)
    ```
3. Insert the nesessary data into the players data storage. By using these commands:
    ```
    /data merge storage players {"total":<total # of players N>}
    /data merge storage players {"angle":<angle>}
    /data merge storage players {"radius":<radius>}
    /data merge storage players {"player1":"<minecraft name of player 1>"}
    ...
    /data merge storage players {"playerN":"<minecraft name of player N>"}
    ```
4. Run the command to spawn the cages `/function spawn_cages:generate_circle`
5. When you are ready to start the game you can unlock all players with `/function spawn_cages:unlock_players`

## How it Works

### Data Storage
- `players`: Stores all the player names as well as the tolal number of players.
    - `total`: Total number of players N
    - `angle`: Rotation angle to create the spawn circle. Needs to be set before it runs
    - `radius`: Radius of the spawn circle. Needs to be set befor it runs
    - `current_player_nr`: Number of the current player
    - `current_player_name`: Name of the current player
    - `player1`: <name_of_player1>
    - ...
    - `playerN`:  <name_of_playerN>
- `spawn_cages`: Stores information about the spawn cages.
    - `state`: Stores the state of the spawn cages. Will be `generated` after the circle was generated. 

### Scoreboards
- `.spawn_circle`: Used for spawning the spawn circle
    - `loop_start`: Start value of the loop used for spawning the player cages.
    - `loop_finish`: Finish value of the loop used for spawning the player cages.
    - `loop_current`: Current value of the loop used for spawning the player cages.
    - `loop_break`: Break value of the loop used for spawning the player cages. Can be set to break the loop.
- `.lock_id`: Used for locking the players in position
    - `.global`: Tracks the current value that was added last to a locked player it's lock marker.
    - `.search`: Tracks the current value that is used to search a locked player and it's lock marker.
    - `<player UUID>`: UUID of the player that is locked to a marker. The marker has the same value as the player.
    - `<lock marker UUID>`: UUID if the marker that is used to lock a player. The player has the same value as the marker.


### Tags
- `center`: Tag for the armor stand in the center of the spawn circle
- `cage_position`: Tag for the markers that are spawned at the cage positions
- `summoned_cage`: Tag for all the cage_position markers that already summoned a player cage
- `cage_center`: Tag for the marker that sits at the center of the player cage
- `set_player_spawn`: Tag for all the cage_center markers that already set the spawnpoint of a player
- `lock`: Tag for all markers that are used top lock the players.
- `new_lock_marker`: Tag given to all lock markers when they are created. This Tag is removed once a player got assigned to the marker. 
- `was_locked`: Tag given to a player after being locked to a position once.
