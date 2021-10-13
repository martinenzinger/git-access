#!/bin/sh
# git-access install

# git history
git config --global alias.history "log --pretty=format:'%C(green)%h %Creset%s%C(cyan bold) [%an] %C(yellow)[%ar]%Cblue%d' --decorate"

# git graph
git config --global alias.graph "log --graph --branches --remotes --tags  --format=format:'%C(green)%h %Creset%<(20,trunc)%s %C(cyan bold)[%cN]' --date-order"

# git standup <author>
git config --global alias.standup "!f(){ git log --author \"\$1\" --pretty=format:'%C(green)%h %Creset%<(35,trunc)%s %C(cyan bold)[%an] %C(yellow)[%ar]%Cblue%d' --decorate; }; f"

# git search <phrase>
git config --global alias.search "!f(){ git log --pretty=format:'%C(green)%h %Creset%<(35,trunc)%s %C(cyan bold)[%an] %C(yellow)[%ar]%Cblue%d' --decorate --color=always | grep \"\$1\" --color=never | less -R -F; }; f"

# git changes
git config --global alias.changes "log --pretty=format:'%C(green)%h %Creset%s% %C(cyan bold) [%cN] %C(yellow)[%ad]%Cblue%d' --decorate --numstat"

# git branches
git config --global alias.branches "branch -a"

# git stashes
git config --global alias.stashes "stash list"

# git tags
git config --global alias.tags "tag"

# git id
git config --global alias.id "!f () { if [ -n \"\$1\" ] && [ -n \"\$2\" ]; then git config --global user.name \"\$1\"; git config --global user.email \"\$2\"; else git config --global user.name; git config --global user.email; fi; }; f"

# git open
git config --global alias.open "!f(){ git remote -v | grep -Eom 1 '(http|https)://[a-zA-Z0-9./?=_%:-]*' | tr -d '\n' | xargs -0 python -m webbrowser; }; f"

# git correction
git config --global alias.correction "!f () { git add .; if [ -n \"\$1\" ]; then git commit --amend -m \"\$1\"; else git commit --amend --no-edit; fi; }; f"

# git uncommit
git config --global alias.uncommit "reset --soft HEAD~1"

# git staged
git config --global alias.staged "diff HEAD"

# git unstage
git config --global alias.unstage "reset -q HEAD --"

# git discard
git config --global alias.discard "reset --hard HEAD --"

# git lostfound
git config --global alias.lostfound "reflog --pretty=format:'%C(green)%h %Creset%s%C(cyan bold) [%an] %C(yellow)[%ar]%Cblue%d'"

# git recover <commitid>
git config --global alias.recover "!f () { git reset \"\$1\" --hard; }; f"
