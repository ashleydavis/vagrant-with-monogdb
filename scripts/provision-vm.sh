
# https://serverfault.com/questions/227190/how-do-i-ask-apt-get-to-skip-any-interactive-post-install-configuration-steps
export DEBIAN_FRONTEND=noninteractive

echo "============== Setting timezone =================="
sudo timedatectl set-timezone Australia/Brisbane

sudo apt -yq update

# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
# Replace "ubuntu bionic" with "ubuntu xenial".
echo "============== Installing MongoDB ================"
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get -yq update
sudo apt-get install -yq mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

sudo systemctl status mongod
