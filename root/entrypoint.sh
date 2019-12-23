#!/bin/bash
set -e

if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    echo "${USER_NAME:-java}:x:$(id -u):0:${USER_NAME:-java} user:${HOME}:/sbin/nologin" >> /etc/passwd
  fi
fi

FILE=/usr/local/lib/app.jar
if [ -f "$FILE" ]; then
    java $JAVA_OPTS -jar $FILE
else 
    echo "$FILE was not found - exiting"
fi
