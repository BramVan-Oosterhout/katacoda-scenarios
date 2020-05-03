echo "Timer here, waiting for wiat.sh"
until [ -e wait.sh ]; do sleep 1; done
sleep 2; ./wait.sh [[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com
