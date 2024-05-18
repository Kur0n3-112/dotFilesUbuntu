#!/bin/bash
architecture=""
case $(uname -m) in
i386) architecture="386" echo "[+] You have 386 architecture" ;;
i686) architecture="386" echo "[+] You have 386 architecture" ;;
x86_64) architecture="amd64" echo "[+] You have amd64 architecture" ;;
arm) dpkg --print-architecture | grep -q "arm64" && architecture="arm64" || architecture="arm" ;;
esac
