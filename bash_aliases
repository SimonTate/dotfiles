##### ea - alias for editing aliases
#
#When setting up a new aliases file, or having creating a new file.. About every time after editing an aliases file, I source it. This alias makes editing alias a
#
alias ea='vi ~/.bash_aliases; source ~/.bashrc && echo "aliases sourced  --ok."'
alias eb='vi ~/.bashrc; source ~/.bashrc && echo "aliases sourced --ok."'
#
alias findhere='f(){ find "." -name "*$1*"; unset -f f;}; f'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='LC_ALL=C egrep --color=auto'
alias fgrep='LC_ALL=C fgrep --color=yes'
alias grep='LC_ALL=C grep --color=auto'
alias ls='ls --color=auto'
alias open='xdg-open'
alias untar='echo "tar -xzf"; tar -xvf'
alias untarz='echo "tar -vzxf"; tar -vzxf'
alias ws='sshpass -p localadmin ssh -t ws 'wireshark''

alias cls='clear; ls'
alias cls='printf "\033c"'
alias sudo='sudo ' # allow sudo to use aliases
alias ip='ip -c' # use color ip

# backwards ls
alias sl="ls  | tr '\n' ' '  | rev; echo"

alias cwd='printf "%q\n" "$(pwd)"'

alias :q='exit'
alias :q!='exit'
alias :wq='exit'
alias :Q='exit'
alias :wq!='exit'

