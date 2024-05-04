# Clone the HTTP-Server repository
git clone https://github.com/mashunterbd/HTTP-Server.git

# Navigate to the HTTP-Server directory
cd HTTP-Server

# Make the server scripts executable
chmod +x server.start server-control.sh

# change file name server-control.sh to server
mv server-control.sh server 

# Move the server scripts to /usr/local/bin/ for easy access
sudo mv server server.start /usr/local/bin/

# clear terminal 
clear 

# display successful message 
echo -e 'install successful' 
