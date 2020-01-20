#!/bin/bash
cd ~/
chmod u=wrx -R ./
chmod o= -R ./
chmod g= -R ./
chmod g=rx -R lib/
chmod g=w -R var/log/
chmod g=wrx -R var/tmp/
chmod g=rx -R src/
chmod g=rx -R bin/
