#!/bin/bash

# Pull docker image
docker pull alpine/git

# Add git user
useradd git -m -s /bin/bash
usermod -aG docker git
cd /home/git

# Copy ssh authorized_keys
mkdir .ssh
cp ~/.ssh/authorized_keys .ssh/
chown -R git:docker .ssh

# Make the git command using docker
echo "alias git=\"docker run -ti --rm --user `id -u`:`id -g` -v $(pwd):/git -v $HOME/.ssh:/root/.ssh alpine/git\"" >> .bash_profile
