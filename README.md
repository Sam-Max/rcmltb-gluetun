# rcmltb-gluetun
Docker-compose file to run bot with gluetun

After deploy check with this command on bot if is using IP address of your gluetun vpn container:

/shell wget -qO- https://ipinfo.io  or  /shell curl -s ifconfig.io  or  /ip command

It should match gluetun vpn container IP and IP that you get from bot

-------------------------

Speed-test:

/shell speedtest-cli  --no-upload
