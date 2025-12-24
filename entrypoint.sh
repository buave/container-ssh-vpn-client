#!/bin/bash
set -e

echo "[+] Démarrage WireGuard..."
wg-quick up wg0

echo "[+] VPN actif. Container prêt."
su - bov -s /bin/bash
