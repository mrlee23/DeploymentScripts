# StackScript

> StackScript is customization scripts to deploy images on Linode. Run as a shell script.

You can search the scripts in [StackScript library](https://www.linode.com/stackscripts).

## Docker CentOS 7

This codes from [linux-deployment-scripts](https://github.com/mb243/linux-deployment-scripts/blob/master/Docker/CentOS_7.sh).

You can see [this StackScript](https://www.linode.com/stackscripts/view/304229) in Linode.

- Disabled root login with password from ssh
- Add new user(allowed login with password from ssh)
- Initial EPEL
- Automatic updates
- Install fail2ban to defense the brute force authenitication attempts
- Install ntp
- Install Docker
