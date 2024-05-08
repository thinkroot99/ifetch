#!/bin/bash

# Check if ~/.bin directory exists, create it if not
if [ ! -d "$HOME/.bin" ]; then
    echo "Creating ~/.bin directory..."
    mkdir "$HOME/.bin"
fi

# Copy ifetch.sh to ~/.bin directory
echo "Copying ifetch.sh to ~/.bin directory..."
cp "ifetch.sh" "$HOME/.bin/ifetch.sh"

# Grant execute permissions to ifetch.sh
echo "Granting execute permissions..."
chmod +x "$HOME/.bin/ifetch.sh"

# Create symbolic link for ifetch.sh in /usr/local/bin
echo "Creating symbolic link..."
sudo ln -s "$HOME/.bin/ifetch.sh" /usr/local/bin/ifetch

echo "ifetch has been installed successfully! You can now use the 'ifetch' command to display system information."
