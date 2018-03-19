#!/bin/bash

# Pull docker image
docker pull alpine/git

# Add git user
useradd git -G docker -m -s /bin/bash
cd /home/git

# Copy ssh authorized_keys
mkdir .ssh
cp ~/.ssh/authorized_keys .ssh/
chown -R git:docker .ssh

# Make the git command using docker
echo "alias git=\"docker run -ti --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh alpine/git\"" >> .bash_profile
