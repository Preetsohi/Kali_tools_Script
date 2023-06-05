#!/bin/bash

# Install Docker
sudo apt install docker.io

# Install MOBSF
sudo docker pull opensecurity/mobile-security-framework-mobsf
sudo docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf

# Install DROZER
sudo docker pull fsecurelabs/drozer
sudo docker run -it fsecurelabs/drozer
sudo drozer console connect --server <phone IP address>

# Install Forbidden Bypass
git clone https://github.com/gotr00t0day/forbiddenpass.git
cd forbiddenpass
pip3 install -r requirements.txt
python3 forbiddenpass.py -h

# Install Byp4xx
git clone https://github.com/iamj0ker/bypass-403
cd bypass-403
chmod +x bypass-403.sh
sudo apt install figlet

# Install Favicon
pip3 install mmh3
sudo git clone https://github.com/Mr-P-D/Favicon-Hash-For-Shodan.io.git
python3 get_favicon_hash.py https://sw-payment-web01.azurewebsites.net/favicon.ico

# Install DVWA Docker
docker run --rm -it -p 80:80 vulnerables/web-dvwa
# or
# docker run --rm -it -p 80:80 cytopia/dvwa

# Install BEEF Docker
sudo docker pull phocean/beef
sudo docker run -it --rm isaudits/beef
# or
# sudo docker run --rm -it --net=host -v $HOME/.msf4:/root/.msf4:Z -v /tmp/msf:/tmp/data:Z --name=beef phocean/beef

# Install REDEYE
sudo apt install rcracki-mt
git clone https://github.com/redeye-framework/Redeye.git
cd Redeye
docker-compose up -d

# Install RCRACKI
sudo apt install rcracki-mt

# Install DETECTDOJO
sudo apt install defectdojo

echo "Installation completed!"
