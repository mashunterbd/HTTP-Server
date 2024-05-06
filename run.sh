#!/bin/bash

# Check if install.sh already exists
if [ -f "install.sh" ]; then
    read -p "A file named 'install.sh' already exists in this directory. Do you want to overwrite it? (Y/N): " overwrite_choice
    case "$overwrite_choice" in
        [Yy]*)
            echo "Overwriting existing install.sh..."
            ;;
        *)
            echo "Exiting installation. Please rename or remove the existing 'install.sh' file and try again."
            exit 1
            ;;
    esac
fi

# Download the new install.sh file
wget -O install.sh https://raw.githubusercontent.com/mashunterbd/HTTP-Server/main/install.sh

# Make the downloaded file executable
chmod +x install.sh

# Execute the downloaded installation script
./install.sh
