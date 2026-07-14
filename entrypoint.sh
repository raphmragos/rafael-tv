#!/bin/sh
set -e

echo "✅ Sinisimulan ang OpenResty..."
/usr/local/openresty/bin/openresty -g 'daemon off;' &

echo "✅ Sinisimulan ang Xray..."
exec /usr/local/bin/xray run -c /etc/xray.json
