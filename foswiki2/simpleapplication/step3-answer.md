To see the completed form, retrieve it from the SolutionExampleTopics tar ball.

`tar xvzf /tmp/SolutionExampleTopics.tgz -C /var/www/foswiki/data/Applications SolutionExApp/SolutionExNote1*`{{execute}}

Since we just dumped a file in the foswiki file system, we need to update the cache.
You refresh the cache by viewing a page in the web with _refresh=on_:
[Applications/SolutionsExApp.WebHome?refresh=on](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications/SolutionsExApp/WebHome?refresh=on)

Now you can navigate to the Applications/SolutionsExApp.SolutionExNote1 to inspect the content.
[Applications/SolutionsExApp.SolutionExNote1?raw=all](https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/Applications/SolutionsExApp/SolutionExNote1?raw=all)
 to inspect the content.

<small>
You can ignore the error "tar: SolutionExApp/SolutionExForm*: not found in archive". This is a known problem in alpine tar.
</small>