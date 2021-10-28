cd /usr/local/bin/
wget https://raw.githubusercontent.com/ComicBit/raspberry-restart-on-network-loss/main/checkwifi.sh
sudo chmod 775 /usr/local/bin/checkwifi.sh
crontab -e
*/5 * * * * /usr/bin/sudo -H /usr/local/bin/checkwifi.sh >> /dev/null 2>&1
