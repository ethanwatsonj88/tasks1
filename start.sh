#!/bin/bash

export MIX_ENV=prod
export PORT=4794
export HOME=/home/tasks1/tasks1

echo "Stopping old copy of app, if any..."

/home/tasks1/tasks1/_build/prod/rel/tasks1/bin/tasks1 stop || true

echo "Starting app..."

# Start to run in background from shell.
#_build/prod/rel/memory/bin/memory start

# Foreground for testing and for systemd
/home/tasks1/tasks1/_build/prod/rel/tasks1/bin/tasks1 foreground

# DONE: Add a cron rule or systemd service file
#       to start your app on system boot.

