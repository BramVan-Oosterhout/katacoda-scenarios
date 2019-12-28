Foswiki requires some prerequisites for Ubuntu, Apache andperl.
A complete list is provided in the  [Installation guide (system requirements)](https://foswiki.org/System/InstallationGuide#SystemRequirements)

For Ubuntu there is a collection of libraries required:
*   `apt-get install libalgorithm-diff-perl`{{execute}}
*   `apt-get install libarchive-tar-perl`{{execute}}
*   `apt-get install libauthen-sasl-perl`{{execute}}
*   `apt-get install libcgi-pm-perl`{{execute}}
*   `apt-get install libcgi-session-perl`{{execute}}
*   `apt-get install libcrypt-passwdmd5-perl`{{execute}}
*   `apt-get install libdigest-sha-perl`{{execute}}
*   `apt-get install libemail-address-perl`{{execute}}
*   `apt-get install libemail-mime-perl`{{execute}}
*   `apt-get install libencode-perl`{{execute}}
*   `apt-get install liberror-perl`{{execute}}
*   `apt-get install libfile-copy-recursive-perl`{{execute}}
*   `apt-get install libhtml-parser-perl`{{execute}}
*   `apt-get install libhtml-tree-perl`{{execute}}
*   `apt-get install libio-socket-ip-perl`{{execute}}
*   `apt-get install libio-socket-ssl-perl`{{execute}}
*   `apt-get install libjson-perl`{{execute}}
*   `apt-get install liblocale-maketext-perl`{{execute}}
*   `apt-get install liblocale-maketext-lexicon-perl`{{execute}}
*   `apt-get install liblocale-msgfmt-perl`{{execute}}
*   `apt-get install libwww-perl`{{execute}}
*   `apt-get install liblwp-protocol-https-perl`{{execute}}
*   `apt-get install liburi-perl`{{execute}}
*   `apt-get install libversion-perl`{{execute}}

Create a non version specific access point: `ln -s /var/www/Foswiki-2.1.6 /var/www/foswiki`{{execute}}

And change the file owner and group `chown -R www-data:www-data /var/www/foswiki`{{execute}}

## Configure the Apache server.

Generate the Apache configuration for Foswiki using the
[Foswiki configuration generator](https://foswiki.org/Support.ApacheConfigGenerator) on foswiki.org.
generate the configuration for Foswiki 2.x and Apache 2.4. For this installation you can use all the default settings.

The configuration generator the contents of the generated foswiki.conf file.
You can copy the text and save it in the /etc/apache2/conf-available/foswiki.conf file:
`cat > /etc/apache2/conf-available/foswiki.conf`{{execute}}

You can see what is configured using:
`grep -v /etc/apache2/conf-available/foswiki.conf | grep -v '^$' | less`{{execute}}
Note that there is no Virtual host. Foswiki is available on port 80 in directory foswiki.
Enable the configuration and reload with `a2enconf foswiki;service apache2 reload`{{execute}} and continue the configuration in the next step.
