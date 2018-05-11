#!/bin/bash

USER=root
HOST=srv-vpscheapnet-basic-milicio.tk
REPO=francescobianco/srv-vpscheapnet-basic-milicio.tk
DIST=master

git config credential.helper cache && git commit -am "deploy@" && git push

sleep 10

ssh $USER@$HOST "wget -q --no-cache --no-check-certificate -O - https://rawgit.com/$REPO/$DIST/setup.sh | bash"
