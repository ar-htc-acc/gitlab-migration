# gitlab-migration

# First step: clone from the old repo  
git clone old_repository_URL  
cd demo  
git remote rename origin upstream  
git remote add origin new_repository_URL  
git remote -v  
../init.sh  
git branch  
  
# Daily/weekly sync (or when you want to sync)  
../sync.sh  
