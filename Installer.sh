#!/bin/sh
while true
echo "------------------------------------------"
echo "               IrisOS Panel               "
echo "           Starting Installation...       "
echo "         Thank you for choosing us!       "
echo "                Ver 1.1.0                 "
echo "------------------------------------------"

apt-get update
apt install iptables
apt install ufw
ufw allow 8443/tcp
ufw allow 8443/udp
apt update && apt upgrade
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get -y install nodejs
apt-get install npm
apt-get update
apt-get install -y git supervisor rdiff-backup screen build-essential rsync
apt-get -y install openjdk-8-jre-headless
mkdir -p /usr/games
cd /usr/games
git clone https://github.com/DavidDemonio/irisos-node.git minecraft
cd minecraft
git config core.filemode false
chmod +x service.js irisos_console.js generate-sslcert.sh webui.js
npm install --unsafe-perm
ln -s /usr/games/minecraft/irisos_console.js /usr/local/bin/irisros
cp irisos.conf /etc/irisos.conf
cd /usr/games/minecraft
./generate-sslcert.sh
cp init/supervisor_conf /etc/supervisor/conf.d/irisos.conf
supervisorctl reload
supervisorctl restart irisos
done
echo "------------------------------------------"
echo "               IrisOS Panel               "
echo "             Panel Installed...           "
echo "           Thank you for choosing us!     "
echo "                 Ver 1.1.0                "
echo "------------------------------------------"
echo IrisOS Script Installed!! Your login credentials are your Username and Password from SSH
