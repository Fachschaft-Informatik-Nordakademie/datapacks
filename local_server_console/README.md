#local_server_console
Allows you to run commands on the server using RCON.

## config.json
You need a config.json file in order to run this code. It has to look like this:
~~~ JSON
{
  "mc_server_ip": "127.0.0.1",
  "mcrcon_port": 25575,
  "mcrcon_password": "your_mcrcon_password"
}
~~~

## server config
In order to use RCON you have to activate it in your server.properties file.
~~~ ini
enable-rcon=true
rcon.port=25575
rcon.password=your_mcrcon_password
~~~

## usage
1. make sure RCON is activated on your server
2. create the config.json file
3. install the required packages
~~~ sh
pip install -r requirements.txt
~~~
4. run the [local_console.py](local_server_console/local_console.py) file
~~~ sh
python local_console.py
~~~
5. enter any minecraft command and see its response. A list of all the commands can be found below or [here](https://minecraft.wiki/w/Commands)
6. enter 'exit' to stop the local console

## minecraft multiplayer commands
All the executable commands. The last rows show what this command effects.

| Command         | Description                                                                                                                     | ![block](docs/block.webp) | ![mob](docs/mob.webp) | ![player](docs/player.webp) | ![world](docs/world.webp) |
|:----------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------|:----------------------|:----------------------------|:--------------------------|
| /advancement    | Gives, removes, or checks player advancements.                                                                                  | —                         | —                     | ![player](docs/player.webp) | —                         |
| /attribute      | Queries, adds, removes or sets an entity attribute.                                                                             | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /ban            | Adds player to banlist.                                                                                                         | —                         | —                     | ![player](docs/player.webp) | —                         |
| /ban-ip         | Adds IP address to banlist.                                                                                                     | —                         | —                     | ![player](docs/player.webp) | —                         |
| /banlist        | Displays banlist.                                                                                                               | —                         | —                     | ![player](docs/player.webp) | —                         |
| /bossbar        | Creates and modifies bossbars.                                                                                                  | —                         | —                     | ![player](docs/player.webp) | ![world](docs/world.webp) |
| /clear          | Clears items from player inventory.                                                                                             | —                         | —                     | ![player](docs/player.webp) | —                         |
| /clone          | Copies blocks from one place to another.                                                                                        | ![block](docs/block.webp) | —                     | —                           | —                         |
| /damage         | Applies damage to the specified entities.                                                                                       | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /data           | Gets, merges, modifies and removes block entity and entity NBT data.                                                            | ![block](docs/block.webp) | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /datapack       | Controls loaded data packs.                                                                                                     | —                         | —                     | —                           | ![world](docs/world.webp) |
| /debug          | Starts or stops a debugging session.                                                                                            | —                         | —                     | —                           | —                         |
| /worldgamemode  | Sets the world game mode.                                                                                                       | —                         | —                     | —                           | ![world](docs/world.webp) |
| /deop           | Revokes operator status from a player.                                                                                          | —                         | —                     | ![player](docs/player.webp) | —                         |
| /difficulty     | Sets the difficulty level.                                                                                                      | —                         | —                     | —                           | ![world](docs/world.webp) |
| /effect         | Adds or removes status effects.                                                                                                 | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /enchant        | Adds an enchantment to a player's selected item.                                                                                | —                         | —                     | ![player](docs/player.webp) | —                         |
| /execute        | Executes another command.                                                                                                       | ![block](docs/block.webp) | ![mob](docs/mob.webp) | ![player](docs/player.webp) | ![world](docs/world.webp) |
| /experience     | An alias of /xp. Adds or removes player experience.                                                                             | —                         | —                     | ![player](docs/player.webp) | —                         |
| /fill           | Fills a region with a specific block.                                                                                           | ![block](docs/block.webp) | —                     | —                           | —                         |
| /fillbiome      | Fills a region with a specific biome.                                                                                           | —                         | —                     | —                           | ![world](docs/world.webp) |
| /forceload      | Forces chunks to constantly be loaded or not.                                                                                   | —                         | —                     | —                           | ![world](docs/world.webp) |
| /function       | Runs a function.                                                                                                                | —                         | —                     | —                           | ![world](docs/world.webp) |
| /gamemode       | Sets a player's game mode.                                                                                                      | —                         | —                     | ![player](docs/player.webp) | —                         |
| /gamerule       | Sets or queries a game rule value.                                                                                              | —                         | —                     | —                           | ![world](docs/world.webp) |
| /give           | Gives an item to a player.                                                                                                      | —                         | —                     | ![player](docs/player.webp) | —                         |
| /help           | Provides help for commands.                                                                                                     | —                         | —                     | —                           | —                         |
| /item           | Manipulates items in inventories.                                                                                               | ![block](docs/block.webp) | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /jfr            | Starts or stops a JFR profiling.                                                                                                | —                         | —                     | —                           | —                         |
| /kick           | Kicks a player off a server.                                                                                                    | —                         | —                     | ![player](docs/player.webp) | —                         |
| /kill           | Kills entities (players, mobs, items, etc.).                                                                                    | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /list           | Lists players on the server.                                                                                                    | —                         | —                     | ![player](docs/player.webp) | —                         |
| /locate         | Locates closest structure, biome, or point of interest.                                                                         | ![block](docs/block.webp) | ![mob](docs/mob.webp) | —                           | ![world](docs/world.webp) |
| /loot           | Drops items from an inventory slot onto the ground.                                                                             | ![block](docs/block.webp) | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /me             | Displays a message about the sender.                                                                                            | —                         | —                     | ![player](docs/player.webp) | —                         |
| /msg            | An alias of /tell and /w. Displays a private message to other players.                                                          | —                         | —                     | ![player](docs/player.webp) | —                         |
| /op             | Grants operator status to a player.                                                                                             | —                         | —                     | ![player](docs/player.webp) | —                         |
| /pardon         | Removes entries from the banlist.                                                                                               | —                         | —                     | ![player](docs/player.webp) | —                         |
| /pardon-ip      | Removes entries from the banlist.                                                                                               | —                         | —                     | ![player](docs/player.webp) | —                         |
| /particle       | Creates particles.                                                                                                              | —                         | —                     | ![player](docs/player.webp) | —                         |
| /perf           | Captures info and metrics about the game for 10 seconds.                                                                        | —                         | —                     | —                           | ![world](docs/world.webp) |
| /place          | Used to place a configured feature, jigsaw, template, or structure at a given location.                                         | ![block](docs/block.webp) | —                     | —                           | ![world](docs/world.webp) |
| /playsound      | Plays a sound.                                                                                                                  | —                         | —                     | ![player](docs/player.webp) | —                         |
| /random         | Draw a random value or control the random number sequence.                                                                      | —                         | —                     | —                           | —                         |
| /recipe         | Gives or takes player recipes.                                                                                                  | —                         | —                     | ![player](docs/player.webp) | —                         |
| /reload         | Reloads loot tables, advancements, and functions from disk.                                                                     | —                         | —                     | —                           | ![world](docs/world.webp) |
| /return         | Control execution flow inside functions and change their return value.                                                          | —                         | —                     | —                           | —                         |
| /ride           | Used to make entities ride other entities, stop entities from riding, make rides evict their riders, or summon rides or riders. | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /save-all       | Saves the server to disk.                                                                                                       | —                         | —                     | —                           | ![world](docs/world.webp) |
| /save-off       | Disables automatic server saves.                                                                                                | —                         | —                     | —                           | ![world](docs/world.webp) |
| /save-on        | Enables automatic server saves.                                                                                                 | —                         | —                     | —                           | ![world](docs/world.webp) |
| /say            | Displays a message to multiple players.                                                                                         | —                         | —                     | ![player](docs/player.webp) | —                         |
| /schedule       | Delays the execution of a function.                                                                                             | —                         | —                     | —                           | —                         |
| /scoreboard     | Manages scoreboard objectives and players.                                                                                      | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /seed           | Displays the world seed.                                                                                                        | —                         | —                     | —                           | ![world](docs/world.webp) |
| /setblock       | Changes a block to another block.                                                                                               | ![block](docs/block.webp) | —                     | —                           | —                         |
| /setidletimeout | Sets the time before idle players are kicked.                                                                                   | —                         | —                     | ![player](docs/player.webp) | —                         |
| /setworldspawn  | Sets the world spawn.                                                                                                           | —                         | —                     | —                           | ![world](docs/world.webp) |
| /spawnpoint     | Sets the spawn point for a player.                                                                                              | —                         | —                     | ![player](docs/player.webp) | —                         |
| /spectate       | Make one player in spectator mode spectate an entity.                                                                           | —                         | —                     | ![player](docs/player.webp) | —                         |
| /spreadplayers  | Teleports entities to random locations.                                                                                         | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /stop           | Stops a server.                                                                                                                 | —                         | —                     | —                           | ![world](docs/world.webp) |
| /stopsound      | Stops a sound.                                                                                                                  | —                         | —                     | ![player](docs/player.webp) | —                         |
| /summon         | Summons an entity.                                                                                                              | —                         | ![mob](docs/mob.webp) | —                           | —                         |
| /tag            | Controls entity tags.                                                                                                           | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /team           | Controls teams.                                                                                                                 | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /teammsg        | An alias of /tm. Specifies the message to send to team.                                                                         | —                         | —                     | ![player](docs/player.webp) | —                         |
| /teleport       | An alias of /tp. Teleports entities.                                                                                            | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /tell           | An alias of /msg and /w. Displays a private message to other players.                                                           | —                         | —                     | ![player](docs/player.webp) | —                         |
| /tellraw        | Displays a JSON message to players.                                                                                             | —                         | —                     | ![player](docs/player.webp) | —                         |
| /tick           | Controls the tick rate of the game.                                                                                             | —                         | —                     | —                           | ![world](docs/world.webp) |
| /time           | Changes or queries the world's game time.                                                                                       | —                         | —                     | —                           | ![world](docs/world.webp) |
| /title          | Manages screen titles.                                                                                                          | —                         | —                     | ![player](docs/player.webp) | —                         |
| /tm             | An alias of /teammsg. Specifies the message to send to team.                                                                    | —                         | —                     | ![player](docs/player.webp) | —                         |
| /tp             | An alias of /teleport. Teleports entities.                                                                                      | —                         | ![mob](docs/mob.webp) | ![player](docs/player.webp) | —                         |
| /transfer       | Triggers a transfer of a player to another server.                                                                              | —                         | —                     | ![player](docs/player.webp) | —                         |
| /trigger        | Sets a trigger to be activated.                                                                                                 | —                         | —                     | ![player](docs/player.webp) | —                         |
| /w              | An alias of /tell and /msg. Displays a private message to other players.                                                        | —                         | —                     | ![player](docs/player.webp) | —                         |
| /weather        | Sets the weather.                                                                                                               | —                         | —                     | —                           | ![world](docs/world.webp) |
| /whitelist      | Manages server whitelist.                                                                                                       | —                         | —                     | ![player](docs/player.webp) | —                         |
| /worldborder    | Manages the world border.                                                                                                       | —                         | —                     | —                           | ![world](docs/world.webp) |
| /xp             | An alias of /experience. Adds or removes player experience.                                                                     | —                         | —                     | ![player](docs/player.webp) | —                         |
