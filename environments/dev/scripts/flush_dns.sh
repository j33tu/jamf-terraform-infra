#!/bin/zsh
# Flush DNS Cache on macOS
/usr/bin/dscacheutil -flushcache
/usr/bin/killall -HUP mDNSResponder
echo "DNS cache flushed successfully."
exit 0