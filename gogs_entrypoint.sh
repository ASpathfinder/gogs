#!/bin/bash

cd /app || exit
mkdir -p conf data log database repo sql
gogs web -c "$GOGS_CONFIG_FILE_PATH"