You can make further performance improvements by implementing [DBCachePlugin](https://foswiki.org/Extensions/DBCachePlugin)
based on [DBCacheContrib](https://foswiki.org/Extensions/DBCachePlugin).

### Install the plugin and dependencies
To complete this process, you need to login as `admin` with password `password`.
Go to the configure page (from System.Webhome) and select Extensions > Instal, Update or Remove extensions.
Search for DBCachePlugin, select the displayed plugin and click `Install`. Several dependencies are reported:

| Foswiki | Cpan |
|=========|======|
|DBCacheContrib |Sereal |
|               |Time::ParseDate |
|               |BerkeleyDB |
|TopicTitlePlugin |         |

The Foswiki dependencies are automatically installed. Close the report and save (top right) the changes.

The cpan dependencies need to be installed:
`cpan install Sereal Time::ParseDate BerkeleyDB`{{execute}}
You will notice the BerkeleyDB install fails with: `BerkeleyDB.xs:76:16: fatal error: db.h: No such file or directory`.
The compilation requires a file that is supplied in `libdb-dev`, but not marked as a dependency. Repeat the install and preceed it by `libdb-dev`:
`cpan install libdb-dev BerkeleyDB`{{execute}}

