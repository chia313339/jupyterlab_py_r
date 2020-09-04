#!/bin/bash

sudo apt-get update

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get install -y nodejs

node -v

sudo apt-get install libxrender1

sudo apt-get install libxtst6


wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh

sh Anaconda3-2020.07-Linux-x86_64.sh

# do not work
source ~/anaconda3/bin/activate

conda create --name AI python=3.8 R=3.6

conda activate AI

pip install jupyterlab

pip insatll jupyter


R -e 'install.packages(c("repr", "IRdisplay", "IRkernel"), repos="https://cloud.r-project.org");IRkernel::installspec()'

jupyter labextension install @techrah/text-shortcuts

jupyter labextension install @lckr/jupyterlab_variableinspector

jupyter labextension install jupyterlab-execute-time


jupyter lab --ip='*' \
	--no-browser  \
	--port='5000' \
	--token='' \
	--password='0000' > jypyter.log &
	 

echo "END!!"