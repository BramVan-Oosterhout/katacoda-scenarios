Welcome to your Katacoda Docker environment!

In this scenario we will set up an operational Foswiki server on a site suporting Apache using a dockr image.

The docker image used is developed by Tim Legge and available on
[docker hub](https://hub.docker.com/r/timlegge/docker-foswiki)
with extensive documentation.

The Katacoda training environment is somewhat out of the ordinary. This setup installs Foswiki, listening at port 80 for the http protocol.
Access is through the katacoda-services host, which is accessible with the https protocol.
This leads to a mixed access scenario, which is by default not allowed in modern browsers.
For Firefox  you need to turn off all mixed content checking in
[about:config](https://docs.sdl.com/LiveContent/content/en-US/SDL%20Web-v5/GUID-A96F0612-53DE-4E35-AE09-48D57146D6E4).
There are also additional Foswiki configuration requirements. They will be covered in the scenario.

**Please note** that you are `root`on the server.
If you are not a user with root privileges, some commands will need to be `sudo'ed`.



























Last update: Wednesday 1 January  13:28:20 AEDT 2020