
#!/bin/bash
sudo mkdir /srv
sudo mkdir /srv/tftp
sudo apt-get update
sudo apt-get -y install atftp atftpd
sudo sed -i 's/USE_INETD=true/USE_INETD=false/g' /etc/default/atftpd
sudo systemctl restart atftpd.service
sudo touch /srv/tftp/testfile.txt
echo 'file di esempio' | sudo tee /srv/tftp/testfile.txt > /dev/null
