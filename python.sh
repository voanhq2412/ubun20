cd ~
# install and activate virtualenv
sudo apt -y install virtualenv
virtualenv py38 --python=python3.8
source py38/bin/activate

########################################### Install all within virtualenv ############################################
sudo apt install python3.8-distutils -y
sudo apt-get install python3-pip -y
pip3 install --upgrade setuptools
pip3 install --upgrade pip
pip3 install --upgrade distlib

# install python packages
pip3 install pandas
pip3 install selenium
pip3 install jupyterlab
pip3 install plotly
pip3 install matplotlib
pip3 install black isort
pip3 install -U scikit-learn
pip3 install --upgrade tensorflow

# install jupter extensions
pip3 install jupyterlab_code_formatter
pip3 install jupyterlab-drawio
pip3 install --upgrade jupyterlab jupyterlab-git
jupyter labextension install @konodyuk/theme-ayu-mirage
