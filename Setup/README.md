# Setup

## git

- [alpine/git](https://hub.docker.com/r/alpine/git/)

## git-server

Serve the git server that can be pushed or pulled repositories from clients.

### Connect to ssh
For the test, actually after connection, exited immediately.

```sh
$ ssh git@<git-server-ip> -p 2222
```

### Add git repository
```sh
$ git clone --bare myrepo myrepo.git
$ scp -r myrepo.git user@host:/srv/git/repos
```

### Clone
```sh
$ git clone ssh://git@<git-server-ip>:2222/git-server/repo/myrepo.git
```

### Reference
- [git-server-docker on GitHub](https://github.com/jkarlosb/git-server-docker)
- [git-server-docker on DockerHub](https://hub.docker.com/r/jkarlos/git-server-docker)
