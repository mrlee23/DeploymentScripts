#!/bin/bash

# Pull docker image
docker pull jkarlos/git-server-docker

# Make directory to serve git server
mkdir -p /srv/git

# Run git-server
docker run --name git-server -d -p 2222:22 -v /srv/git/keys:/git-server/keys -v /srv/git/repos:/git-server/repos jkarlos/git-server-docker

# Copy ssh public keys to git server
cp ~/.ssh/authorized_keys /srv/git/keys/authorized_keys.pub

# Restart to apply the added ssh public keys
docker restart git-server
