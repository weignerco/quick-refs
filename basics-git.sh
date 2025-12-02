## Basics on Git

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

# Commit the file
git commit -m "Initial commit with <filename>" # Commits the staged changes with a message

# Push to remote repository (assuming remote is set up)
git remote add origin <remote-repo-URL> # Add remote repository URL, set this up only once
git push <filename> # Pushes the commits to the remote repository
# Push multiple files
git push <file1> <file2> <file3> # Pushes multiple files



# Shows the status of files in the working directory and staging area
git status 

# Show git configuration
git config --list

# Set user name and email
git config --global user.name "Your Name"
git config --global user.email "email@address.com"


