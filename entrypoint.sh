#!/bin/sh
set -e

echo "✅ Sinisimulan ang Xray..."
/usr/local/bin/xray run -c /etc/xray.json &

sleep 2

echo "✅ Sinisimulan ang OpenResty..."
exec /usr/local/openresty/bin/openresty -g 'daemon off;'
