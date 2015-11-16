#!/bin/bash

[[ ! -f /config/gameserver.ini ]] && cp /app/ogar/src/gameserver.ini /config/gameserver.ini
[[ ! -L /app/ogar/gameserver.ini && -f /app/ogar/gameserver.ini ]] && rm /app/ogar/gameserver.ini
[[ ! -L /app/ogar/gameserver.ini ]] && ln -s /config/gameserver.ini /app/ogar/gameserver.ini


chown -R abc:abc /config
