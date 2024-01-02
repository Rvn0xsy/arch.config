#!/bin/bash
sudo iptables -t nat -A OUTPUT -p tcp -m owner ! --uid-owner clash ! -d 127.0.0.1 -j REDIRECT --to-port 7892
systemctl status clash
