#!/bin/sh

# Sync upstream Git repo
git fetch upstream
git checkout master
git merge upstream/master

# Upload an existing local project to a git repository
# In the terminal of your local folder:
git init  # initiate git for your local folder
git remote add origin https://github.com/userNAME/repoName.git
git commit -m "initial commit" # this is necessary for first time uploading
git pull origin master --allow-unrelated-histories # this is optional if you already have files in the online repo
git push origin master

# Open Jupyter notebook in desired web browser
jupyter lab --browser safari

# Change Anaconda environment
conda info --evns # check to see what environments you have

conda activate EnvName # note: if you change environment, you may have to reinstall dependencies
nano ~/.bash_profile # add default environment by adding the above line
