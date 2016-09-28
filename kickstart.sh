#!/bin/bash

# Check if we are running as root.
if [ "$EUID" -ne 0 ]
then
	printf "This script needs to be executed as root to work properly.\n"
	exit 1
fi

# Execute the helper scripts.
./packages.sh
./jdk.sh
./templates.sh

# That's all folks!
printf "Done!\n"
exit 0
