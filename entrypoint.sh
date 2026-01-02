#!/bin/bash
set -e

echo "[+] Starting WireGuard..."
wg-quick up wg0

echo "[+] VPN activate. Container ready."
su -
