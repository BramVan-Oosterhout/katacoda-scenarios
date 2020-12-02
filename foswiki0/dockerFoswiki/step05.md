 Performance is a concern for web sites that want to be seen. Slow responses tend to scare impatient people off. Apache supports various configurations to improve the performance of the web site. Foswiki supports these options out of the box and with several plugins.. In the following steps we will install some of them and measure the result.

 In this step we introduce the measurement and set the base line.

 There are tools on the web that will measure the performance of any web site. You can search: "measuring web site response performance" for a list. For the numbers below I use [dotcom tools](../../..). It provides measurements and observations from multiple locations. The figures quoted here are the average (Avg) across the locations, the minimum (Min) and maximum (Max) response time. is fine. `dotcom tools` provides a first visit measurement and a second visit one. results are in seconds: ||Avg|Min|Max|
|-|
|1st|3.6|1.4|6.1|
|2nd|1.3|.87|1.8|

 Or you can use your browser and read the data from the console. If you do that, you should do more than one reading and be aware of how much data ( javascript, stylesheets, etc) are cached locally.

 It also suggests many improvements! Let's see what Apache and Foswiki provide.

