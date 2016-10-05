![http://linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)

The [LinuxServer.io](https://www.linuxserver.io/) team brings you another quality container release featuring easy user mapping and community support. Be sure to checkout our [forums](https://forum.linuxserver.io/index.php) or for real-time support our [IRC](https://www.linuxserver.io/index.php/irc/) on freenode at `#linuxserver.io`.

# lsiodev/ogar
Ogar is a free, open-source Agar.io server implementation, licensed under the Apache 2.0 license. [Ogar](http://ogarproject.com/)



## Usage

```
docker create --name=ogar -v /etc/localtime:/etc/localtime:ro -v <path to data>:/config -e PGID=<gid> -e PUID=<uid>  -p 88:88 -p 443:443 lsiodev/ogar
```

**Parameters**

* `-p 88` - stats server port
* `-p 443` - gameserver port
* `-v /etc/localtime` for timesync - *optional*
* `-v /config` - where ogar stores its config files
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

It is based on phusion-baseimage with ssh removed, for shell access whilst the container is running do `docker exec -it ogar /bin/bash`.

### User / Group Identifiers

**TL;DR** - The `PGID` and `PUID` values set the user / group you'd like your container to 'run as' to the host OS. This can be a user you've created or even root (not recommended).

Part of what makes our containers work so well is by allowing you to specify your own `PUID` and `PGID`. This avoids nasty permissions errors with relation to data volumes (`-v` flags). When an application is installed on the host OS it is normally added to the common group called users, Docker apps due to the nature of the technology can't be added to this group. So we added this feature to let you easily choose when running your containers.

## Setting up the application 

The gameserver.ini file in /config contains all the settings for the server.


## Docker log


* To monitor the logs of the container in realtime `docker logs -f ogar`.



## Versions

+ **16.11.2015:** Initial Release. 


