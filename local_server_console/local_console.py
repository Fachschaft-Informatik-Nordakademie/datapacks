import json
import os
from mcrcon import MCRcon


class Console:
    """
    Class for creating a local console that can send and executes commands on a minecraft server using RCON.
    """
    def __init__(self, config_file="config.json"):
        """
        Initialise the local console
        :param config_file: relative or absolute path of the config JSON file. The Default is "config.json"
        """
        # check if the file exists
        if not os.path.exists(config_file):
            # raise an error if not
            raise ValueError(f"The config file {config_file} doesn't exist")

        # load the config file
        with open(file=config_file, encoding='utf-8') as json_file:
            config_dict = json.load(json_file)

        # store the config in attributes
        self.__mc_server_ip = config_dict["mc_server_ip"]
        self.__mcrcon_port = config_dict["mcrcon_port"]
        self.__mcrcon_password = config_dict["mcrcon_password"]

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

    def run(self):
        """
        Run the local console
        """
        # print a start message
        print("Starting local server console...\n")
        # start the command loop
        while True:
            try:
                # print a request for entering the command
                print("Enter a minecraft command. type 'exit' to stop the console:")

                # get the inputted command from the user
                command = input()

                # check if the user wants to exit
                if command.lower() == "exit":
                    # print a closing message
                    print("\nServer console closed")
                    break

                # run the command
                print(self.__run_command(command=command))

                # print an empty line
                print()

            # catch Keyboard interrupts
            except KeyboardInterrupt:
                # print a closing message
                print("\nServer console closed")
                break


# check if this file was executed directly
if __name__ == "__main__":
    # create the console
    console = Console()

    # run the console
    console.run()
