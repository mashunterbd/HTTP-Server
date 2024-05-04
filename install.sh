#!/bin/bash

# Clone the HTTP-Server repository
git clone https://github.com/mashunterbd/HTTP-Server.git

# Navigate to the HTTP-Server directory
cd HTTP-Server

# Check Python3 
if command -v python3 &>/dev/null; then
    echo "Python 3 is already installed."
else
    read -p "Python 3 is not installed. Do you want to install it? (Y/N): " choice
    case "$choice" in
        [yY])
            sudo apt update
            sudo apt install python3
            ;;
        [nN])
            echo "Python 3 will not be installed."
            ;;
        *)
            echo "Invalid choice. Python 3 will not be installed."
            ;;
    esac
fi

# Make the server scripts executable
chmod +x server

# Move the server scripts to /usr/local/bin/ for easy access
sudo mv server /usr/local/bin/

# clear terminal 
clear 

# display successful message 
echo -e 'install successful' 
