Node.JS IrisOS
======

IrisOS is a server front-end to ease managing Minecraft administrative tasks.
This iteration using Node.js aims to enhance previous MineOS scripts (Python-based),
by leveraging the event-triggering, asyncronous model of Node.JS and websockets.

This allows the front-end to provide system health, disk and memory usage, and logging in real-time.

This has been tested on Debian, Ubuntu, ArchLinux, and FreeBSD and should work on all variants, Linux or BSD.

Developing and Contributing
------

I'd love to get contributions from you! Whether you are most comfortable writing
HTML, CSS, or Javascript (either Nodejs or Angular), feel free to reach out to me about
some of my design goals and we'll see where your efforts can best be used.

CURRENTLY WORKING
-------

The Angular.JS-based web user interface capable of:

* creating and deleting servers, 
* starting, restarting, killing and stopping servers 
* backup, archive, wait-for-stop-and-backup
* reading ingame console in real-time and submitting commands
* create cronjobs for the most common tasks
* adding and modifying server.properties
* delete previous archives and restore poitns to free up space
* restore server from previous restore point
* see filesystem usage of live server files, archives, and restore points
* authentication via shadow passwords (/etc/shadow) of underlying Linux system
* logs all user actions to file
* cronjobs saved to portable format cron.config
* server can be daemonized to background
* upstart/supervisord restart process on unhandled exceptions
* easy selection of server packs from FTB or Mojang official jars
* PHAR support for Pocketmine servers
* Support for BungeeCord servers
* command-line interface for scripting

TODO
-------

* macro often-repeated tasks from web-ui
* more fully document functions

EVENTUALLY
-------

* implement previous_versions: functionality to roll back or view particular files' previous state
* identify java versions in web-ui, allow choice of utilized jvm

