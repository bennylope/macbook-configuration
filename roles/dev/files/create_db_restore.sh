#!/usr/bin/env bash

BACKUP_PATH="$HOME/Downloads/$(ls -t ~/Downloads | head -1)"
DB=$1

echo "Creating database name $DB"

psql -c "CREATE DATABASE $DB;" "${@:2}"

echo "Now restoring database $DB from $BACKUP_PATH"

#pg_restore -O -x -d $1 "~/Downloads| head -1)" "${@:2}"
pg_restore -O -x -d $DB $BACKUP_PATH "${@:2}"
