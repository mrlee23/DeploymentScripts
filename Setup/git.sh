#!/bin/bash

# Add git user
useradd git -G docker -m -s /bin/bash
cd /home/git

# Copy ssh authorized_keys
mkdir .ssh
cp ~/.ssh/authorized_keys .ssh/
chown -R git:docker .ssh
