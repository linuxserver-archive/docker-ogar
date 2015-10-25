#!/bin/bash

[[ ! -f /config/gameserver.ini ]] && cp /defaults/gameserver.ini /config/gameserver.ini


[[ ! -L "/app/ogar/gameserver.ini" ]] && ln -s /config/gameserver.ini /app/ogar/gameserver.ini

chown -R abc:abc /config
