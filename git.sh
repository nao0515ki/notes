# open changed files by atom
git diff HEAD^ --name-only | xargs atom

# dit diff for staged files
git diff --cached

# git log
git log --oneline --graph
git log --name-status
git log -n 3
git log --since="4 days ago" --until="2015/01/22"
git log  -- path/to/*.rb
git log --author='name'
git log --no-merges
git log --first-parent
git log --grep hoge

# git blame
git blame TargetFile|grep TargetWord|cut -d " " -f 1|xargs git show
git blame TargetFile|peco|cut -d " " -f 1|xargs git show

# git branch
## is it merged?
git branch --merged master     # show branchs that is merged     -> ok to delete
git branch --no-merged master  # show branchs taht is not merged -> not ok to delete
## delete
git branch -d [branch name]
## rename
git branch -m [new name] || git branch -m [new name] [old name]
git push origin :[old name] # remove old branch in remote
git push origin [new name]  # done to rename

# upstrem
git remote -v
git fetch upstrem
git rebase upstream/master
git pull --rebase upstream master

# git remote
git remote add origin <url>
git remote add github <url>
git remote -v
git remote rename origin destination
# change the git remote 'push to' default
git push -u <remote_name> <local_branch_name>