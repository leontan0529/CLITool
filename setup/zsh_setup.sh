#!/bin/bash

# Define the alias
alias_command="alias ll='ls -al'"

# Check if the alias already exists in .zshrc
echo "Adding alias ll (ls -al : long list all files and directories) to shell..."
if grep -Fxq "$alias_command" ~/.zshrc
then
    echo "Alias ll already exists in .zshrc"
else
    # Add the alias to the end of .zshrc
    echo "$alias_command" >> ~/.zshrc
    echo "Alias ll added to .zshrc"
fi

# Source the .zshrc to apply changes
source ~/.zshrc
echo "ZSH setup completed."
