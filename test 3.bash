#!/bin/bash

# source file and target file paths
src_file="/path/to/local/file"
target_server="user@remote-server-ip"
target_file="/path/to/remote/file"

# rsync
rsync -avz $src_file $target_server:$target_file

# Check if the file was synced successfully
if [ $? -eq 0 ]; then
  echo "File sync successful!"
else
  echo "File sync failed!"
fi

# Cron
echo "* * * * * /path/script.sh" | crontab