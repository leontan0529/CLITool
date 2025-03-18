#!/bin/bash

# Capture the information about currently logged-in users and their activities as well as system load.
sysload=$(w)
sysdsk=$(df -h)

# Print the output, preserving newlines
printf "\n---SYSLOAD---\n%s\n" "$sysload"
printf "\n---SYSDSK---\n%s\n" "$sysdsk"
