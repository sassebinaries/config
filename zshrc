# Lives in ~/.zshrc

# More available at http://www.tldp.org/LDP/abs/html/sample-bashrc.html

if [ -f ~/Applications/liquidprompt/liquidprompt ]; then
    [[ $- = *i* ]] && source ~/Applications/liquidprompt/liquidprompt
fi

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
