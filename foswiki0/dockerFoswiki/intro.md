 In this Scenario you will build a Docker image supporting an Apache/Foswiki installation for use in a Katacoda scenario.

 Some of the configurations need to be changed from the default, because of the Katacoda environment. Details will be explained as they are set up.

 The Katacoda training environment is somewhat out of the ordinary. This setup installs Foswiki, listening at port 80 for the http protocol. Access is through the katacoda-services host, which is accessible with the https protocol. This leads to a mixed access scenario, which is by default not allowed in modern browsers. For Firefox you need to turn off all mixed content checking in [about:config](https://docs.sdl.com/LiveContent/content/en-US/SDL%20Web-v5/GUID-A96F0612-53DE-4E35-AE09-48D57146D6E4)

**Please note** that you are `root` on the server. If you are not a user with root privileges, some commands will need to be \`sudo'ed\`.

