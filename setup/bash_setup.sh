#!/bin/bash

# Define the alias
alias_command="alias ll='ls -al'"

# Check if the alias already exists in .bashrc
echo "Adding alias ll (ls -al : long list all files and directories) to shell..."
if grep -Fxq "$alias_command" ~/.bashrc
then
    echo "Alias ll already exists in .bashrc"
else
    # Add the alias to the end of .bashrc
    echo "$alias_command" >> ~/.bashrc
    echo "Alias ll added to .bashrc"
fi

# Source the .bashrc to apply changes
source ~/.bashrc
echo "BASH setup completed."
