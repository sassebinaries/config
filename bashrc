# Lives in ~/.bashrc

# More available at http://www.tldp.org/LDP/abs/html/sample-bashrc.html

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

alias du='du -kh'    # Makes a more readable output.
alias df='df -kh'    # Add a 'T' for *nix to print file system type

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
