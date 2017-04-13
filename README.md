# gitlab-migration

# First step: clone from the old repo  
git clone <old repository URL>  
cd demo  
git remote rename origin upstream  
git remote add origin <new repository URL>  
git remote -v  
../init.sh  
git branch  
  
# Daily/weekly sync (or when you want to sync)  
../sync.sh  
