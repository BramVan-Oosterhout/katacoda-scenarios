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




























Last update: Tuesday 21 January  13:42:33 AEDT 2020
Last update: Tuesday 21 January  13:50:02 AEDT 2020
Last update: Tuesday 21 January  13:52:28 AEDT 2020
Last update: Tuesday 21 January  14:18:02 AEDT 2020
Last update: Tuesday 21 January  14:21:11 AEDT 2020
Last update: Tuesday 21 January  14:22:29 AEDT 2020
Last update: Tuesday 21 January  14:24:20 AEDT 2020
Last update: Tuesday 21 January  22:53:11 AEDT 2020
Last update: Wednesday 22 January  12:36:44 AEDT 2020
Last update: Wednesday 22 January  12:37:19 AEDT 2020
Last update: Wednesday 22 January  12:43:38 AEDT 2020
Last update: Friday 31 January  15:18:00 AEDT 2020
Last update: Friday 31 January  16:40:51 AEDT 2020
Last update: Friday 31 January  16:48:54 AEDT 2020
Last update: Friday 31 January  16:51:50 AEDT 2020
Last update: Friday 31 January  16:54:13 AEDT 2020
Last update: Friday 31 January  17:19:24 AEDT 2020
Last update: Friday 31 January  17:24:20 AEDT 2020
Last update: Friday 31 January  17:36:16 AEDT 2020
Last update: Friday 31 January  18:00:08 AEDT 2020
Last update: Friday 31 January  18:09:01 AEDT 2020
Last update: Saturday 1 February  12:32:05 AEDT 2020
Last update: Saturday 1 February  12:42:18 AEDT 2020
Last update: Saturday 1 February  12:55:20 AEDT 2020
Last update: Saturday 1 February  13:00:15 AEDT 2020
Last update: Saturday 1 February  13:02:41 AEDT 2020
Last update: Saturday 1 February  13:09:30 AEDT 2020
Last update: Saturday 1 February  13:16:31 AEDT 2020
Last update: Saturday 1 February  14:22:21 AEDT 2020
Last update: Saturday 1 February  14:27:45 AEDT 2020
Last update: Saturday 1 February  15:05:57 AEDT 2020
Last update: Saturday 1 February  16:01:26 AEDT 2020
Last update: Saturday 1 February  16:14:51 AEDT 2020
Last update: Saturday 1 February  22:01:38 AEDT 2020
Last update: Saturday 1 February  22:03:17 AEDT 2020
Last update: Saturday 1 February  22:04:21 AEDT 2020
Last update: Saturday 1 February  22:10:33 AEDT 2020
Last update: Saturday 1 February  22:23:16 AEDT 2020
Last update: Saturday 1 February  22:29:22 AEDT 2020
Last update: Saturday 1 February  22:35:15 AEDT 2020
Last update: Saturday 1 February  22:38:08 AEDT 2020
Last update: Sunday 2 February  13:27:35 AEDT 2020
Last update: Sunday 2 February  14:06:55 AEDT 2020
Last update: Sunday 2 February  15:45:26 AEDT 2020
Last update: Sunday 2 February  16:32:36 AEDT 2020
Last update: Sunday 2 February  17:00:15 AEDT 2020
Last update: Sunday 2 February  17:07:21 AEDT 2020
Last update: Sunday 2 February  17:56:42 AEDT 2020
Last update: Sunday 2 February  18:29:33 AEDT 2020
Last update: Monday 3 February  18:21:32 AEDT 2020
Last update: Tuesday 4 February  14:28:18 AEDT 2020
Last update: Tuesday 4 February  14:33:30 AEDT 2020
Last update: Tuesday 4 February  16:01:43 AEDT 2020
Last update: Tuesday 4 February  17:02:37 AEDT 2020
Last update: Tuesday 4 February  18:12:38 AEDT 2020
Last update: Wednesday 5 February  12:23:39 AEDT 2020
Last update: Wednesday 5 February  12:29:42 AEDT 2020
Last update: Wednesday 5 February  12:31:44 AEDT 2020
Last update: Wednesday 5 February  12:34:24 AEDT 2020
Last update: Wednesday 5 February  12:40:44 AEDT 2020
Last update: Wednesday 5 February  13:24:25 AEDT 2020
Last update: Wednesday 5 February  13:33:36 AEDT 2020
Last update: Wednesday 5 February  13:45:07 AEDT 2020
Last update: Wednesday 5 February  13:50:00 AEDT 2020
Last update: Wednesday 5 February  13:54:14 AEDT 2020
Last update: Wednesday 5 February  14:14:33 AEDT 2020
Last update: Wednesday 5 February  14:21:23 AEDT 2020
Last update: Wednesday 5 February  14:25:09 AEDT 2020
Last update: Wednesday 5 February  14:35:59 AEDT 2020
Last update: Wednesday 5 February  14:37:56 AEDT 2020
Last update: Wednesday 5 February  14:42:51 AEDT 2020
Last update: Wednesday 5 February  14:48:05 AEDT 2020
Last update: Thursday 6 February  15:48:58 AEDT 2020
Last update: Thursday 6 February  16:08:21 AEDT 2020
Last update: Thursday 6 February  16:57:15 AEDT 2020
Last update: Friday 7 February  17:44:39 AEDT 2020
Last update: Friday 7 February  18:26:22 AEDT 2020
Last update: Friday 7 February  21:13:15 AEDT 2020
Last update: Friday 7 February  22:01:32 AEDT 2020
Last update: Friday 7 February  22:25:48 AEDT 2020
Last update: Friday 7 February  22:53:43 AEDT 2020
Last update: Friday 7 February  23:01:55 AEDT 2020
Last update: Friday 7 February  23:14:38 AEDT 2020
Last update: Saturday 8 February  09:30:06 AEDT 2020
Last update: Saturday 8 February  18:42:48 AEDT 2020
Last update: Saturday 8 February  19:30:31 AEDT 2020
Last update: Saturday 8 February  20:02:07 AEDT 2020
Last update: Sunday 9 February  10:49:15 AEDT 2020
Last update: Sunday 9 February  19:43:33 AEDT 2020
