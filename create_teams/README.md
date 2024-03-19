# create_teams
Used to automatically whitelist players and create Teams based on a JSON-File. Connects to the server using RCON.

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

## teams.json
The teams and their members that are supposed to be added are stored in a teams.json file. 
It needs to have the structure displayed below.
- parameters in brackets () are optional, the used value shows the default 
- example values are in angle brackets <>
~~~
{
    "<team name 1>": {
        "color": "<aqua>",
        ("friendlyFire": <true>,)
        ("seeFriendlyInvisibles": <true>,)
        ("nametagVisibility": "<always>",)
        ("deathMessageVisibility": "<always>",)
        ("collisionRule": "<always>",)
        ("prefix": "",)
        ("suffix": "",)
        "members": [
            "<player name 1>",
            "<player name 2>",
            ...
        ]
    },
    "<team name 2>": {
        ...
    },
    ...
}
~~~

### explanation for the parameters and their possible values parameters
#### team name
Display name of the team
- string of plain text

#### color
Decides the color of the team and players in chat, above their head, on the Tab menu, and on the sidebar. 
Also changes the color of the outline of the entities caused by the Glowing effect.
- reset - names are shown in default color and formatting
- one of the 16 chat color names:

  | color name   | HEX     |                          color                           |
  |:-------------|---------|:--------------------------------------------------------:|
  | black        | #000000 | ![#000000](https://placehold.co/15x15/000000/000000.png) |
  | dark_blue    | #0000AA | ![#0000AA](https://placehold.co/15x15/0000AA/0000AA.png) |
  | dark_green   | #00AA00 | ![#00AA00](https://placehold.co/15x15/00AA00/00AA00.png) |
  | dark_aqua    | #00AAAA | ![#00AAAA](https://placehold.co/15x15/00AAAA/00AAAA.png) |
  | dark_red     | #AA0000 | ![#AA0000](https://placehold.co/15x15/AA0000/AA0000.png) |
  | dark_purple  | #AA00AA | ![#AA00AA](https://placehold.co/15x15/AA00AA/AA00AA.png) |
  | gold         | #FFAA00 | ![#FFAA00](https://placehold.co/15x15/FFAA00/FFAA00.png) |
  | gray         | #AAAAAA | ![#AAAAAA](https://placehold.co/15x15/AAAAAA/AAAAAA.png) |
  | dark_gray    | #555555 | ![#555555](https://placehold.co/15x15/555555/555555.png) |
  | blue         | #5555FF | ![#5555FF](https://placehold.co/15x15/5555FF/5555FF.png) | 
  | green        | #55FF55 | ![#55FF55](https://placehold.co/15x15/55FF55/55FF55.png) |
  | aqua         | #55FFFF | ![#55FFFF](https://placehold.co/15x15/55FFFF/55FFFF.png) |
  | red          | #FF5555 | ![#FF5555](https://placehold.co/15x15/FF5555/FF5555.png) |
  | light_purple | #FF55FF | ![#FF55FF](https://placehold.co/15x15/FF55FF/FF55FF.png) |
  | yellow       | #FFFF55 | ![#FFFF55](https://placehold.co/15x15/FFFF55/FFFF55.png) |
  | white        | #FFFFFF | ![#FFFFFF](https://placehold.co/15x15/FFFFFF/FFFFFF.png) |

#### friendlyFire
Enables/Disables players inflicting damage on each other when on the same team. 
(Note: players can still inflict status effects on each other.) Does not affect some non-player entities in a team.
- true - (Default) Enable players inflicting damage on each other when in the same team
- false - Disable players inflicting damage on each other when in the same team.

#### seeFriendlyInvisibles
Decides if players can see invisible players on their team as whether semi-transparent or completely invisible.
- true - (Default) Can see invisible players on the same team semi-transparently.
- false - Cannot see invisible players on the same team.

#### nametagVisibility
Decides whose name tags above their heads can be seen.
- never - Name above player's head cannot be seen by any players.
- hideForOtherTeams - Name above player's head can be seen only by players in the same team.
- hideForOwnTeam - Name above player's head cannot be seen by all the players in the same team.
- always - (Default) Name above player's head can be seen by all the players.

#### deathMessageVisibility
Controls the visibility of death messages for players.
- never - Hide death message for all the players.
- hideForOtherTeams - Hide death message to all the players who are not in the same team.
- hideForOwnTeam - Hide death message to players in the same team.
- always - (Default) Make death message visible to all the players.

#### collisionRule
Controls the way the entities on the team collide with other entities.
- always - (Default) Normal collision.
- never - No entities can push entities in this team.
- pushOtherTeams - Entities in this team can be pushed only by other entities in the same team. Contrary to the literal meaning of the word.
- pushOwnTeam - Entities in this team cannot be pushed by another entity in this team. Contrary to the literal meaning of the word.

#### prefix
Modifies the prefix that displays before players' names.
- string of plain text

#### suffix
Modifies the suffix that displays after players' names.
- string of plain text

#### members
List of all the members of the team.
- List of the in-game player names or there UUIDs
