##### ea - alias for editing aliases
#
#When setting up a new aliases file, or having creating a new file.. About every time after editing an aliases file, I source it. This alias makes editing alias a
#
alias ea='vi ~/.bash_aliases; source ~/.bashrc && echo "aliases sourced  --ok."'
alias eb='vi ~/.bashrc; source ~/.bashrc && echo "aliases sourced --ok."'
#
source ~/synergy/scripts/setirelaypath master
source ~/synergy/scripts/settipath
alias findhere='f(){ find "." -name "*$1*"; unset -f f;}; f'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='LC_ALL=C egrep --color=auto'
alias fgrep='LC_ALL=C fgrep --color=yes'
alias grep='LC_ALL=C grep --color=auto'
alias ls='ls --color=auto'
alias open='xdg-open'
alias untar='tar -xvf'
alias untarz='tar -vzxf'
alias ws='sshpass -p localadmin ssh -t ws 'wireshark''

alias irpass='bash ~/scripts/irpass.sh'
alias irpass2='bash ~/scripts/irpass.sh && exit'
alias enbpass='bash ~/scripts/enbpass.sh'
alias enbpass2='bash ~/scripts/enbpass.sh && exit'
alias update='bash ~/scripts/update.sh'
alias ssh='irpass; ssh'
alias scp='irpass; scp'
alias sshp='~/scripts/ip_setup.sh; ~/scripts/ssh_persist.sh'
alias cls='clear; ls'
alias getpak='~/scripts/getpak.sh'
alias getallpaks='~/scripts/getallpaks.sh; cd ~/releases'
alias pinger='~/scripts/ip_setup.sh; ~/scripts/pinger.sh'
alias setupip='~/scripts/ip_setup.sh'
alias putty='irpass > /dev/null; sudo putty'
alias airunity='cd ~/synergy/apps/build/airunity/'
alias airunity2='cd ~/synergy-2/apps/build/airunity/'
alias irelay2='cd ~/synergy-2/apps/build/irelay/'
alias test-board='cd ~/synergy/apps/build/test-board/'
alias test-board2='cd ~/synergy-2/apps/build/test-board/'
alias airunitysc='cd ~/synergy/apps/build/airunitysc/'
alias airunitygct='cd ~/synergy/apps/build/airunitygct/'
alias cls='printf "\033c"'
alias cpt='~/scripts/copy_through.sh'
alias sudo='sudo ' # allow sudo to use aliases
alias ip='ip -c' # use color ip

alias irelay='cd ~/synergy/apps/build/irelay/'

#### irelay shortcuts ####
alias ir5='sshpass -p localadmin ssh ir5'

#### airunity shortcuts ####
alias a51='sshp a51 localadmin'
alias a52='sshp a52 localadmin'
alias a53='sshp a53 localadmin'
alias a54='sshpass -p localadmin ssh a54'
alias a61='sshpass -p localadmin ssh a61'
alias a62='sshpass -p localadmin ssh a62'
alias a63='sshpass -p localadmin ssh a63'
alias a872='sshpass -p localadmin ssh a872'
alias a87pi1='sshpass -p localadmin ssh a87pi1'
alias a87pi2='sshpass -p localadmin ssh a87pi2'
alias a87pi4='sshpass -p localadmin ssh a87pi4'
alias a87pi6='sshpass -p localadmin ssh a87pi6'
alias svg-segw='sshpass -p localadmin ssh svg-segw'
alias pi3='sshpass -p localadmin ssh pi3'
alias pi13='sshpass -p localadmin ssh pi13'
# backwards ls
alias sl="ls  | tr '\n' ' '  | rev; echo"
# test unit shortcuts
alias autest='sshp autest'
alias ct='ctags --exclude=@.ctagsignore --fields=+KSn -R .; rm .tags*; cp tags .tags'

alias unpa='~/scripts/unpack_archive.sh'

alias g='git'
alias chrome='/opt/google/chrome/chrome'
alias synergy='cd /home/state/synergy/'
alias cwd='printf "%q\n" "$(pwd)"'


## Spotify
alias play='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play'
alias pause='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause'
alias next='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next'
alias previous='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous'

