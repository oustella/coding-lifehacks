#!/bin/sh

# Sync upstream Git repo
git fetch upstream
git checkout master
git merge upstream/master

# Open Jupyter notebook in desired web browser
jupyter lab --browser safari

# Change Anaconda environment
conda info --evns # check to see what environments you have

conda activate EnvName # note: if you change environment, you may have to reinstall dependencies
nano ~/.bash_profile # add default environment by adding the above line
