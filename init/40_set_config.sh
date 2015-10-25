#!/bin/bash

if [ ! -f "/config/gameserver.ini" ]; then
cp /defaults/gameserver.ini /config/gameserver.ini
fi

if [ ! -L "/app/ogar/gameserver.ini" ]; then
ln -s /config/gameserver.ini /app/ogar/gameserver.ini
fi

chown -R abc:abc /config
