# https://www.postgresql.org/download/linux/ubuntu/

# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt -y install postgresql-14 postgis postgresql-14-postgis-3
#########################################################
# postgis
# https://gis.stackexchange.com/questions/318276/installing-postgis-after-postgresql-ubuntu-18-04
# https://computingforgeeks.com/how-to-install-postgis-on-ubuntu-debian/

sudo add-apt-repository ppa:ubuntugis/ppa
sudo apt install postgis
