#!/bin/bash
pm2 start ~/etc/systemd/cron-git.js --name cron-git -o ~/var/log/cron-git/output.log -e ~/var/log/cron-git/error.log --watch
pm2 save
