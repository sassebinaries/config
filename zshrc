# Lives in ~/.zshrc

# More available at http://www.tldp.org/LDP/abs/html/sample-bashrc.html

# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# LiquidPrompt:
# - git clone https://github.com/nojhan/liquidprompt.git ~/Applications/liquidprompt
# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ -f ~/Applications/liquidprompt/liquidprompt ]; then
    [[ $- = *i* ]] && source ~/Applications/liquidprompt/liquidprompt
fi

#------------------------
# Git Prompt/Autocomplete
#------------------------
autoload -Uz compinit && compinit

setopt interactivecomments

#----------------
# iTerm2 movement - requires changes to iTerm2 preferences, see https://coderwall.com/p/a8uxma/zsh-iterm2-osx-shortcuts
#----------------
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

#----------------------------------------------
# Other settings should be imported from bashrc
#----------------------------------------------

#---------------
# Common aliases
#---------------
# Prevent accidentally clobbering files:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias h='history'
#alias j='jobs -l'
#alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'      # Makes a more readable output.
alias du1='du -h -d 1' # Max-depth 1
alias df='df -kh'      # Add a 'T' for *nix to print file system type

#--------------
# Git shortcuts
#--------------
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbb='git bisect bad'
alias gbg='git bisect good'
alias gbr='git bisect reset'
alias gbrun='git bisect run'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gcln='git clean -d --dry-run'
alias gclnf='git clean -d --force'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcoall='git checkout -- .'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gll='git log --oneline --decorate --all --graph'
alias glp='git log --patch'
alias glr='git reflog'
alias gls='git log --stat'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpro='git pull --rebase origin' # requires final argument, e.g. 'gpr master'
alias gprune='echo "git fetch..." && git fetch && echo "git fetch --prune..." && echo "Branches deleted on remote:" && git fetch --prune 2>&1 | awk '\''/deleted/ {print $5}'\'' | awk -F \/ '\''{ if(NR > 1){printf(" \\\n")} {printf(" " $2)}} END {print ""}'\'''
alias gri='git rebase --interactive'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gstls='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias gurl='git remote get-url origin'
alias gurlx='git remote get-url'

function gsearch() { git log --all --grep="$1"; }

#----------------
# The 'ls' family
#----------------
alias lhr='ls -hG'           #  Use colour, and human-readable output
alias lsiz='ls -lSr'         #  Sort by size, biggest last. (common default is 'lk')
alias ldat='ls -ltr'         #  Sort by date, most recent last. (lt)
alias lchg='ls -ltcr'        #  Sort by/show change time,most recent last. (lc)
alias lacc='ls -ltur'        #  Sort by/show access time,most recent last. (lu)

alias ll='ls -l'             #  Long-list files
alias lr='ll -R'             #  Recursive
alias la='ls -aF'            #  Add suffixes for directories, executables and symlinks

#--------------
# Clang options
#--------------
alias clang++='clang++ -std=c++14 -stdlib=libc++ -Weverything -Wno-c++98-compat'

#-------------------------
# A fun crypto utility ;-)
#-------------------------
alias rot13="tr '[a-zA-Z]' '[n-za-mN-ZA-M]'"

#--------
# Display
#--------
alias 1mon='displayplacer "id:6B5751C9-D34B-1E8E-F956-D7F80DE3171C res:1080x1920 hz:60 color_depth:8 scaling:off origin:(0,0) degree:90"'
alias 2mon='displayplacer "id:449E274F-08E1-851D-159C-38C5784BEB2F res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:6B5751C9-D34B-1E8E-F956-D7F80DE3171C res:1080x1920 hz:60 color_depth:8 scaling:off origin:(-1080,0) degree:90"'
alias 3mon='displayplacer "id:449E274F-08E1-851D-159C-38C5784BEB2F res:1920x1080 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:5EA42BA3-2313-C376-C9A8-AA0B3DC8496E res:1792x1120 hz:59 color_depth:4 scaling:on origin:(-1792,0) degree:0" "id:6B5751C9-D34B-1E8E-F956-D7F80DE3171C res:1080x1920 hz:60 color_depth:8 scaling:off origin:(1920,0) degree:90"'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/elma.blum/workspace/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/elma.blum/workspace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/elma.blum/workspace/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/elma.blum/workspace/google-cloud-sdk/completion.zsh.inc'; fi
