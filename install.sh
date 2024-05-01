# Clone the HTTP-Server repository
git clone https://github.com/mashunterbd/HTTP-Server.git

# Navigate to the HTTP-Server directory
cd HTTP-Server

# Make the server scripts executable
chmod +x server.start server-control.sh

# Move the server scripts to /usr/local/bin/ for easy access
sudo mv server-control.sh server.start /usr/local/bin/
