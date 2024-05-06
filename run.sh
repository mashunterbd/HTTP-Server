#!/bin/bash

# Function to prompt user to remove existing directory
prompt_remove_directory() {
    read -p "The directory 'HTTP-Server' already exists. Do you want to remove it and proceed with the installation? (Y/N): " remove_choice
    case "$remove_choice" in
        [Yy]*)
            echo "Removing existing directory 'HTTP-Server'..."
            rm -rf HTTP-Server
            ;;
        *)
            echo "Exiting installation. Please remove or rename the existing 'HTTP-Server' directory and try again."
            exit 1
            ;;
    esac
}

# Check if 'HTTP-Server' directory already exists
if [ -d "HTTP-Server" ]; then
    prompt_remove_directory
fi

# Clone the HTTP-Server repository
git clone https://github.com/mashunterbd/HTTP-Server.git

# Check if 'HTTP-Server' directory was cloned successfully
if [ ! -d "HTTP-Server" ]; then
    echo "Failed to clone 'HTTP-Server' repository. Please check your internet connection and try again."
    exit 1
fi

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

echo "Tool 'server' successfully installed."
