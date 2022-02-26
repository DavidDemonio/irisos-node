#!/usr/bin/env node

var daemon = require("daemonize2").setup({
    main: "webui.js",
    name: "irisos",
    pidfile: "/var/run/irisos.pid"
});

if (process.getuid() != 0) {
    console.log("Expected to run as root");
    process.exit(1);
}

switch (process.argv[2]) {
    case "start":
        daemon.start();
        break;
    case "stop":
        daemon.stop();
        break;
    case "restart":
        daemon.stop(function(err) {
            daemon.start();
        });
        break;
    case "status":
        var pid = daemon.status();
        if (pid)
            console.log("IrisOS running. PID: " + pid);
        else
            console.log("IrisOS is not running.");
        break;
    default:
        console.log("Usage: [start|stop|restart|status]");
}