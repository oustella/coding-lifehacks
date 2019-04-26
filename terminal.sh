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

# Recover directory you have removed and committed 
# scary!!
git rev-list -n 1 HEAD -- <file_path>
git checkout <deleting_commit>^ -- <file_path>  # ^ is important

# If you have uploaded a folder/file that you later included to .gitignore
# You will need to commit the .gitignore, and then follow the below stops 
git rm --cached <filename>  # remove what was in git before that you no longer want
git rm --cached .  # OR use this, if you have too many files/folders to ignore
git add .  # assume your .gitignore is in place now, add back all other files not on the list
# Now you can feel safe remove the file/directory
git rm -r --cached <subdirectory> # use -r if you are removing a directory from git. This will not remove the folder from filesystem
git commit -m "remove a subdirectory"
git push origin master

# Open Jupyter notebook in desired web browser
jupyter lab --browser safari

# Change Anaconda environment
conda info --evns # check to see what environments you have

conda activate EnvName # note: if you change environment, you may have to reinstall dependencies
nano ~/.bash_profile # add default environment by adding the above line

# Install R kernel for jupyter notebook
# step 1. install R
# step 2. execute the following commands in Terminal
$ R  # open up in Terminal. Codes below cannot be executed in R application
$ install.packages('IRkernel', repos = 'https://cloud.r-project.org/')
$ IRkernel::installspec()  # let Jupyter know of the R kernel
