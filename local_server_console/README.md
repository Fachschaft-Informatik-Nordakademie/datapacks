#local_server_console
Allows you to run commands on the server using MCRcon.

## config.json
You need a config.json file in order to run this code. It has to look like this:
~~~
{
  "mc_server_ip": "127.0.0.1",
  "mcrcon_port": 25575,
  "mcrcon_password": "sup3r s3cur3 p4ssw0rd"
}
~~~

## server config
In order to use MCRcon you have to activate it in your server.properties file.
~~~
enable-rcon=true
rcon.port=25575
rcon.password=sup3r s3cur3 p4ssw0rd
~~~
