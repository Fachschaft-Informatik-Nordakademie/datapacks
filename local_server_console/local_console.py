import json
import os
from mcrcon import MCRcon


class Console:
    def __init__(self, config_file="config.json"):
        # load the config file
        # check if the file exists
        if not os.path.exists(config_file):
            # raise an error if not
            raise ValueError(f"The config file {config_file} doesn't exist")
        with open(file=config_file, encoding='utf-8') as json_file:
            config_dict = json.load(json_file)

        self.__mc_server_ip = config_dict["mc_server_ip"]
        self.__mcrcon_port = config_dict["mcrcon_port"]
        self.__mcrcon_password = config_dict["mcrcon_password"]
        print(f"ip: {self.__mc_server_ip}, port: {self.__mcrcon_port}, password: {self.__mcrcon_password}")

    def __run_command(self, command: str):
        with MCRcon(host=self.__mc_server_ip,
                    port=self.__mcrcon_port,
                    password=self.__mcrcon_password) \
                as mcrcon:
            response = mcrcon.command(command=command)
            print(response)

    def run(self):
        print("Starting local server console...\n")
        while True:
            try:
                print("Enter a minecraft command or type exit if you want to stop the console:")
                command = input()  # get the inputted command from the user
                # check if the user wants to exit
                if command.lower() == "exit":
                    print("\nServer console closed")
                    break
                self.__run_command(command=command)  # run the command
                print()  # print an empty line
            except KeyboardInterrupt:
                print("\nServer console closed")
                break

if __name__ == "__main__":
    console = Console()
    console.run()
