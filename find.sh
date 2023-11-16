find /mnt/c/training/test1 -type f -size +5k -mtime +30

# crontab run every day at 1
0 13 * * * find /mnt/c/training/test1 -type f -mtime +30 -delete