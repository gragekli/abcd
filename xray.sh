#!/bin/sh
if [ ! -f UUID ]; then
  UUID="90fa70c7-9328-4be1-90ce-57409b972f24"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

