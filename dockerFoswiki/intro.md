Welcome to your Katacoda Docker environment!

In this scenario we will set up an operational Foswiki server on a site suporting Apache using a dockr image.

The docker image used is developed by Tim Legge and available on
[docker hub](https://hub.docker.com/r/timlegge/docker-foswiki)
with extensive documentation.

<div style="background-color: khaki; font-size: smaller" >

The Katacoda training environment is somewhat out of the ordinary. This setup installs Foswiki, listening at port 80 for the http protocol.
Access is through the katacoda-services host, which is accessible with the https protocol.
This leads to a mixed access scenario, which is by default not allowed in modern browsers.
For Firefox  you need to turn off all mixed content checking in
[about:config](https://docs.sdl.com/LiveContent/content/en-US/SDL%20Web-v5/GUID-A96F0612-53DE-4E35-AE09-48D57146D6E4).
There are also additional Foswiki configuration requirements. They will be covered in the scenario.
<p />
**Please note** that you are `root`on the server.
If you are not a user with root privileges, some commands will need to be `sudo'ed`.Last update: Tuesday 24 March  18:31:15 AEDT 2020
</div>


Last update: Fri 24 Apr 16:29:04 AEST 2020
Last update: Sun 26 Apr 12:40:03 AEST 2020
Last update: Sun 26 Apr 13:06:28 AEST 2020
Last update: Sun 26 Apr 14:16:43 AEST 2020
Last update: Sun 26 Apr 15:20:37 AEST 2020
Last update: Sun 26 Apr 17:52:53 AEST 2020
Last update: Sun 26 Apr 18:06:07 AEST 2020
Last update: Sun 26 Apr 21:42:17 AEST 2020
Last update: Mon 27 Apr 14:14:05 AEST 2020
Last update: Mon 27 Apr 16:32:42 AEST 2020
Last update: Mon 27 Apr 17:47:37 AEST 2020
Last update: Mon 27 Apr 19:12:14 AEST 2020
Last update: Tue 28 Apr 14:33:02 AEST 2020
Last update: Tue 28 Apr 18:09:51 AEST 2020
Last update: Wed 29 Apr 14:45:56 AEST 2020
Last update: Wed 29 Apr 15:00:43 AEST 2020
Last update: Wed 29 Apr 16:54:48 AEST 2020
Last update: Fri  1 May 14:52:33 AEST 2020
Last update: Fri  1 May 17:46:18 AEST 2020
Last update: Fri  1 May 17:49:21 AEST 2020
Last update: Sun  3 May 15:42:52 AEST 2020
Last update: Sun  3 May 16:14:29 AEST 2020
Last update: Sun  3 May 17:41:36 AEST 2020
Last update: Mon  4 May 13:55:30 AEST 2020
Last update: Mon  4 May 13:56:07 AEST 2020
Last update: Mon  4 May 15:49:26 AEST 2020
Last update: Mon  4 May 16:38:21 AEST 2020
Last update: Mon  4 May 17:05:51 AEST 2020
Last update: Tue  5 May 16:44:04 AEST 2020
Last update: Tue  5 May 16:58:06 AEST 2020
Last update: Thu  7 May 16:58:25 AEST 2020
Last update: Thu  7 May 23:13:52 AEST 2020
Last update: Tue  2 Jun 12:05:53 AEST 2020
Last update: Tue  2 Jun 12:10:44 AEST 2020
Last update: Tue  2 Jun 12:12:49 AEST 2020
Last update: Tue  2 Jun 12:19:28 AEST 2020
Last update: Tue  2 Jun 13:28:15 AEST 2020
Last update: Tue  2 Jun 14:12:32 AEST 2020
Last update: Tue  2 Jun 14:34:28 AEST 2020
Last update: Tue  2 Jun 15:10:35 AEST 2020
Last update: Tue  2 Jun 15:51:09 AEST 2020
Last update: Tue  2 Jun 16:00:09 AEST 2020
Last update: Mon 22 Jun 09:30:39 AEST 2020
Last update: Tue 23 Jun 23:12:13 AEST 2020
Last update: Tue 30 Jun 12:52:10 AEST 2020
Last update: Tue 30 Jun 12:54:45 AEST 2020
Last update: Tue 30 Jun 13:07:00 AEST 2020
Last update: Tue 30 Jun 13:59:59 AEST 2020
Last update: Tue 30 Jun 14:47:50 AEST 2020
Last update: Tue 30 Jun 14:48:12 AEST 2020
Last update: Tue 30 Jun 15:07:57 AEST 2020
Last update: Tue 30 Jun 15:08:22 AEST 2020
Last update: Tue 30 Jun 15:18:09 AEST 2020
Last update: Tue 30 Jun 16:06:19 AEST 2020
Last update: Tue 30 Jun 16:09:10 AEST 2020
Last update: Tue 30 Jun 17:12:48 AEST 2020
Last update: Wed  1 Jul 14:23:38 AEST 2020
Last update: Tue 14 Jul 14:12:07 AEST 2020
Last update: Tue 14 Jul 15:26:31 AEST 2020
