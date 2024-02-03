0x10. HTTPS SSL
DevOps
SysAdmin
Security


General
- What is HTTPS SSL 2 main roles
- What is the purpose encrypting traffic
- What SSL termination means

Commands to successfully do this task
sudo apt update
sudo apt install snapd
sudo apt-get remove certbot
sudo apt-get install certbot
sudo service haproxy stop 
sudo certbot certonly --standalone --preferred-challenges http --http-01-port 80 -d www.your_domain.tech
sudo ls /etc/letsencrypt/live/www.your_domain_name
sudo mkdir -p /etc/haproxy/certs
DOMAIN='www.your_domain.tech' sudo -E bash -c 'cat /etc/letsencrypt/live/$DOMAIN/fullchain.pem /etc/letsencrypt/live/$DOMAIN/privkey.pem > /etc/haproxy/certs/$DOMAIN.pem'
sudo chmod -R go-rwx /etc/haproxy/certs
sudo nano /etc/haproxy/haproxy.cfg
sudo service haproxy start