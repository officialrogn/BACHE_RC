# ~/.bash_aliases
alias ls='ls --color=auto'
alias see_actives_sources='find /etc/apt -name '*.list' -print -exec bash -c 'grep '^deb' {}' \;'
alias see_firefox_extensions='grep -oP '},"name":"\K[^"]+' ~/.mozilla/firefox/*.*default*/addons.json'
alias simple_update='sudo apt update && sudo apt full-upgrade'
