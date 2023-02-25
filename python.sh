# cd ~
# install and activate virtualenv
sudo apt -y install virtualenv
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.7
sudo apt install python3.7-distutils -y
sudo apt-get install python3-pip -y
virtualenv py37 --python=python3.7
source py37/bin/activate

########################################### Install all within virtualenv ############################################
# # install python packages
# pip3 install numpy==1.19.5
# pip3 install scikit-learn
# # pip3 install tensorflow
# pip3 install opencv-python
# pip3 install pandas
# pip3 install selenium
# pip3 install jupyterlab
# pip3 install plotly
# pip3 install matplotlib
# pip3 install black isort
# pip3 install numba
# pip3 install shapely
# pip3 install pickle
# pip3 install pipreqs
# pip3 install tesseract

# # install jupter extensions
# pip3 install jupyterlab_code_formatter
# pip3 install jupyterlab-drawio
# pip3 install --upgrade jupyterlab jupyterlab-git
# jupyter labextension install @konodyuk/theme-ayu-mirage
