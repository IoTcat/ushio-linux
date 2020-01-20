#!/bin/bash
groupadd ushio
useradd -g ushio -d /usr/ushio/ -M ushio
useradd -g ushio -M -s /sbin/nologin www
useradd -g ushio -M -s /sbin/nologin iot
