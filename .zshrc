# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#aliases

alias draco="rsync -azP --delete --exclude='Results'  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/ draco:Foamwork/ && ssh draco"
alias synctodraco="rsync -azP --delete --exclude='Results'  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/ draco:Foamwork/"
alias syncfromdraco="rsync -azP --exclude='.Backup' draco:~/Foamwork/Results/ ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/Results"
alias syncdracoresults="rsync -azP --delete  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/Results/ draco:Foamwork/Results"

alias ara="rsync -azP --delete --exclude='Results'  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/ ara:Foamwork/ && ssh ara"
alias synctoara="rsync -azP --delete --exclude='Results'  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/ ara:Foamwork/"
alias syncfromara="rsync -azP --exclude='.Backup' ara:~/Foamwork/Results/ ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/Results"
alias syncararesults="rsync -azP --delete  ~/Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork/Results/ ara:Foamwork/Results"


alias vpn-disconnect-fsu="pgrep openconnect | while read line ; do sudo kill -9 $line ; done"
alias vpn-connect-fsu="sudo openconnect -b --useragent 'AnyConnect' --user=ri74xok@uni-jena.de --pid-file=/var/run/vpn.pid --timestamp --syslog vpn.uni-jena.de"

alias foamwork="cd Documents/Uni/Courses-Master/Master_Thesis/Code/Foamwork"


[ -f /opt/mambaforge/etc/profile.d/conda.sh ] && source /opt/mambaforge/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/opt/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/opt/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/opt/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

