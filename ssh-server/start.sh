#!/bin/sh

veil-daemon &
echo "[sh] Started veil-daemon."

ssh-keygen -A
echo "[sh] Configured SSH server."
exec /usr/sbin/sshd -D -e "$@"
