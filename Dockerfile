version: "3"
services:
  gluetun:
    image: qmcgaw/gluetun
    container_name: gluetun
    cap_add:
      - NET_ADMIN
    devices:
      - /dev/net/tun:/dev/net/tun
    environment:
      - VPN_SERVICE_PROVIDER=            # See https://github.com/qdm12/gluetun/wiki
      - VPN_TYPE=openvpn
      - OPENVPN_USER=             
      - OPENVPN_PASSWORD=
      - SERVER_COUNTRIES=                # See https://github.com/qdm12/gluetun/wiki 
    ports:
      - "80:80"                         
    restart: always
  rcmltb:
    build: .
    network_mode: "service:gluetun"
    depends_on:
      gluetun:
        condition: service_started 
    command: bash start.sh
    restart: always
    
