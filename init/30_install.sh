#!/bin/bash

if [ ! -d /app/ogar/.git ]; then
/sbin/setuser abc git clone git://github.com/forairan/Ogar.git /app/ogar
cd /app/ogar
/sbin/setuser abc npm install ws
fi

