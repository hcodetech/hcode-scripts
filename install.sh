sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y python3 python3-dev python3-pip 
sudo apt-get install -y git vim virtualenv 

sudo apt-get install -y postgresql postgresql-contrib
# need these 2 to intall psycopg2 using pip
sudo apt-get install python-psycopg2
sudo apt-get install libpq-dev



touch ~/.bash_profile
grep -qxF ". ~/.bash_profile" ~/.bashrc || echo '. ~/.bash_profile' >> ~/.bashrc

grep -qxF "alias python=python3" ~/.bash_profile ||echo 'alias python=python3' >> ~/.bash_profile
grep -qxF "alias pip=pip3" ~/.bash_profile ||echo 'alias pip=pip3' >> ~/.bash_profile

grep -qxF "export WORKON_HOME=\$HOME/.virtualenvs" ~/.bash_profile ||echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bash_profile
grep -qxF "source /usr/local/bin/virtualenvwrapper.sh" ~/.bash_profile ||echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bash_profile


cd ~
mkdir -p repos

sudo pip install virtualenvwrapper

