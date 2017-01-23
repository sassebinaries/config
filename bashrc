# .bashrc

alias ll='ls -l'	#long-list files
alias lt='ls -lsrt'	#long-list files in most-recently-touched order
alias la='ls -aF'	#add suffixes for directories, executables and symlinks; include hidden files

alias clang++='clang++ -std=c++14 -stdlib=libc++ -Weverything -Wno-c++98-compat'

alias rot13="tr '[a-zA-Z]' '[n-za-mN-ZA-M]'"

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
