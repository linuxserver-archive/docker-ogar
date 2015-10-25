#!/bin/bash

if [ ! -d /app/ogar/.git ]; then
git clone git://github.com/forairan/Ogar.git /app/ogar
cd /app/ogar
npm install ws
fi

