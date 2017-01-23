# Lives in ~/.bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# LiquidPrompt
# In ~/Applications: git clone https://github.com/nojhan/liquidprompt.git
# Only load Liquid Prompt in interactive shells, not from a script or from scp
if [ -f ~/Applications/liquidprompt/liquidprompt ]; then
    [[ $- = *i* ]] && source ~/apps/liquidprompt/liquidprompt
fi

