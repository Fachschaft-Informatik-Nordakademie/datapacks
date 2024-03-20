import json
import os
from mcrcon import MCRcon


def json_2_dict(json_file: str) -> dict:
    """
    Reads the json file and returns it as a dict
    :param json_file: Relative or absolute path of the JSON file.
    :return: Contend of the JSON file as a dict
    """
    # check if the file exists
    if not os.path.exists(json_file):
        # raise an error if not
        raise ValueError(f"The JSON file {json_file} doesn't exist")

    # load the config file
    with open(file=json_file, encoding='utf-8') as file:
        return json.load(file)


class TeamCreator:
    """
    Class for sending the commands to the Server using RCON.
    """
    def __init__(self, config_file="config.json"):
        """
        Initialise the class
        :param config_file: Relative or absolute path of the config JSON file. The Default is "config.json"
        """
        # load the config file
        config_dict = json_2_dict(json_file=config_file)

        # store the config in attributes
        self.__mc_server_ip = config_dict["mc_server_ip"]
        self.__mcrcon_port = config_dict["mcrcon_port"]
        self.__mcrcon_password = config_dict["mcrcon_password"]

        # activate the whitelist
        print(self.__run_command(command="/whitelist on"))

    def __run_command(self, command: str) -> str:
        """
        Execute the given command on the server and return the response
        :param command: The command that should be executed on the server
        :return: The response of the server
        """
        # connect to the server using RCON
        with MCRcon(host=self.__mc_server_ip,
                    port=self.__mcrcon_port,
                    password=self.__mcrcon_password) \
                as mcrcon:
            # run the command
            response = mcrcon.command(command=command)
            # return the response
            return response

    def __whitelist(self, player_name: str) -> str:
        """
        Add the given player_name to the whitelist of the server
        :param player_name: In-game name of the player
        :return: Response of the server
        """
        command = f"/whitelist add {player_name}"
        return self.__run_command(command=command)

    def __create_team(
            self,
            team_name:str,
            color=None,
            friendlyFire="true",
            seeFriendlyInvisibles="true",
            nametagVisibility="always",
            deathMessageVisibility="always",
            collisionRule="always",
            prefix=None,
            suffix=None):
        """
        Creates the Team on the server and modifies it to the given options
        :param team_name: Display name of the team
        :param color: Color of the team and players
        :param friendlyFire: Enables/Disables players inflicting damage on each other when on the same team
        :param seeFriendlyInvisibles: Players can see invisible team members as semi-transparent or completely invisible
        :param nametagVisibility: Decides whose name tags above their heads can be seen
        :param deathMessageVisibility: Controls the visibility of death messages for players
        :param collisionRule: Controls the way the entities on the team collide with other entities
        :param prefix: Prefix that is displayed before players' names
        :param suffix: Prefix that is displayed after players' names
        """

        # add the team
        print(self.__run_command(f"/team add {team_name}"))

        # specify all the options
        team_options = [
            {
                "name": "color",
                "value": color,
                "standard": None
            },
            {
                "name": "friendlyFire",
                "value": friendlyFire,
                "standard": "true"
            },
            {
                "name": "seeFriendlyInvisibles",
                "value": seeFriendlyInvisibles,
                "standard": "true"
            },
            {
                "name": "nametagVisibility",
                "value": nametagVisibility,
                "standard": "always"
            },
            {
                "name": "deathMessageVisibility",
                "value": deathMessageVisibility,
                "standard": "always"
            },
            {
                "name": "collisionRule",
                "value": collisionRule,
                "standard": "always"
            },
            {
                "name": "prefix",
                "value": f"\"{prefix}\"",
                "standard": "\"None\""
            },
            {
                "name": "suffix",
                "value": f"\"{suffix}\"",
                "standard": "\"None\""
            },
        ]

        # modify the team based on the options
        for option in team_options:
            # check if the option value is not the default
            if option['value'] != option['standard']:
                # modify the team option
                command = f"/team modify {team_name} {option['name']} {option['value']}"
                response = self.__run_command(command=command)

                if response.startswith("Unknown") or response.startswith("Incorrect"):
                    raise ValueError(response)

                # print the response
                print("\t", response)

    def __add_player_2_team(self, team: str, player: str):
        """
        Adds the given player to the given team
        :param team: Team name
        :param player: In-game player name
        :return: response of the server
        """
        command = f"/team join {team} {player}"
        return self.__run_command(command=command)

    def create_team(self, teams_file="teams.json"):
        """
        Creates the Team based on the json file, whitelist all team members and adds them to the team
        :param teams_file: Name/Path of the json file that contains the team
        """
        teams_dict = json_2_dict(json_file=teams_file)

        for team, team_options in teams_dict.items():
            # create the team and modify its options
            self.__create_team(team_name=team,
                               color=team_options.get("color", None),
                               friendlyFire=team_options.get("friendlyFire", "true"),
                               seeFriendlyInvisibles=team_options.get("seeFriendlyInvisibles", "true"),
                               nametagVisibility=team_options.get("nametagVisibility", "always"),
                               deathMessageVisibility=team_options.get("deathMessageVisibility", "always"),
                               collisionRule=team_options.get("collisionRule", "always"),
                               prefix=team_options.get("prefix", None),
                               suffix=team_options.get("suffix", None))

            print(f"Adding players to team {team}")
            # go through every team member
            for player in team_options.get("members"):
                # add the player to the whitelist
                print("\t", self.__whitelist(player_name=player))

                # add the player to the team
                print("\t", self.__add_player_2_team(team=team, player=player))


# check if this file was executed directly
if __name__ == "__main__":
    # create a TeamCreator
    team_creator = TeamCreator()

    # create the team based on the json
    team_creator.create_team()
