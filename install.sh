# should be run by all developers

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python3 python3-dev python3-pip
sudo apt-get install -y git vim virtualenv curl

sudo apt-get install -y postgresql postgresql-contrib
# need these 2 to intall psycopg2 using pip
sudo apt-get install -y python-psycopg2 libpq-dev



touch ~/.bash_profile
grep -qxF ". ~/.bash_profile" ~/.bashrc || echo '. ~/.bash_profile' >> ~/.bashrc

grep -qxF "alias python=python3" ~/.bash_profile ||echo 'alias python=python3' >> ~/.bash_profile
grep -qxF "alias pip=pip3" ~/.bash_profile ||echo 'alias pip=pip3' >> ~/.bash_profile

grep -qxF "export WORKON_HOME=\$HOME/.virtualenvs" ~/.bash_profile ||echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bash_profile
grep -qxF "source /usr/local/bin/virtualenvwrapper.sh" ~/.bash_profile ||echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bash_profile


cd ~
mkdir -p repos

sudo pip install virtualenvwrapper

# node installation (optional for python developers)
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install -y build-essential

npm install -g expo-cli