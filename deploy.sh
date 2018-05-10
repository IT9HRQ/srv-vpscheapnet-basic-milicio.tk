#!/bin/bash

SERVER_USER=root
SERVER_HOST=srv-vpscheapnet-basic-milicio.tk
SERVER_BRANCH=master
SERVER_REPOSITORY=javanile/node

git config credential.helper cache && git commit -am "deploy@" && git push

ssh $SERVER_USER@$SERVER_HOST "wget --no-check-certificate \
    -O - https://rawgit.com/$SERVER_REPOSITORY/$SERVER_BRANCH/setup.sh | bash"



