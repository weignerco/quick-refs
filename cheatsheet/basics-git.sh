## Basics on Git

# Git Stages
# 1. Working Directory: Where you create and edit files
# 2. Staging Area: Where you stage files to be committed
# 3. Local Repository: Where committed files are stored
# 4. Remote Repository: A version of your repository hosted on the internet or network

# Usual Steps to use Git:
# (Steps 1-3 are from your local machine, Step 4 is for remote repositories):
# 1. Initialize a repository (setup only once per project) or clone an existing one
# 2. Add files to staging area
# 3. Commit the changes
# 4. (Optional) Push to remote repository

# Initialize a new git repository
git init <directory> # Creates a new directory name with git initialized
cd <directory>


# Clone an existing repository
git clone <remote-repo-URL> # Clones the repository from the given URL


# Add a new file
git add <filename> # Stages the file 'filename' for commit
# Add multiple files
git add <file1> <file2> <file3> # Stages multiple files
# Add all files in the current directory
git add . # Stages all files in the current directory for commit

# Add a .gitignore file to exclude files from being tracked
git add .gitignore # Stages the .gitignore file

# .gitignore file example content:
# node_modules/ - ignores the entire node_modules directory
# *.log - ignores all files with .log extension


# Commit the file
git commit -m "Initial commit with <filename>" # Commits the staged changes with a message


# Push to remote repository (assuming remote is set up)
git remote add origin <remote-repo-URL> # Add remote repository URL, set this up only once
git push # Pushes the commits to the remote repository
git push <filename> # Pushes the commits to the remote repository


###########################################################

# Shows the status of files in the working directory and staging area
git status 

# Show git configuration
git config --list

# Set user name and email
git config --global user.name "Your Name"
git config --global user.email "email@address.com"


###########################################################

# Remove git initialization from a directory
rm -rf .git # Deletes the .git folder, effectively removing git tracking from the directory
# Note: This action is irreversible and will delete all git history for the repository
