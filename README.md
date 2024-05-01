# HTTP-Server
This is Custom Http server based on Python3 (http server)
## This Script Help us to Deploy current Directory anything to check into the server.

By running the script, the interface that is running <b> python3 http.server 80 </b>  in your system will show you the IP address on the display. Because after we run on this server we have to manually check the IP again. If it is not a loopback (127.0.0.1) address. 

The Script is designed for <b> Kali NetHunter</b> devices But is it you can use other systems that are <b> Linux base</b>. 
# Automatic install
``` 
wget https://raw.githubusercontent.com/mashunterbd/HTTP-Server/main/install.sh; chmod +x install.sh; ./install.sh 
```

# Install Manually 
```
git clone https://github.com/mashunterbd/HTTP-Server.git 
cd HTTP-Server
chmod +x server.start server-control.sh
mv server-control.sh server.start /usr/local/bin/
```
# Uninstall 
Simply run this script for Deleting the source file from /usr/local/bin/

```
./Delete.sh 
```




