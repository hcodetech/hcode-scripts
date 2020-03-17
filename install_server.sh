# should be run by all developers

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python3 python3-dev python3-pip
sudo apt-get install -y git vim virtualenv curl screen

sudo apt-get install -y postgresql postgresql-contrib
# need these 2 to intall psycopg2 using pip
sudo apt-get install -y python-psycopg2 libpq-dev

sudo pip install virtualenvwrapper

