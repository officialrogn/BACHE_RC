# ~/.bash_aliases
alias ls='ls --color=auto'
alias see_actives_sources='find /etc/apt -name '*.list' -print -exec bash -c 'grep '^deb' {}' \;'
alias see_firefox_extensions='grep -oP '},"name":"\K[^"]+' ~/.mozilla/firefox/*.*default*/addons.json'
alias simple_update='sudo apt update && sudo apt full-upgrade'
alias set_hosts='echo "Script is removing $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; sudo rm /etc/hosts && sudo cp /etc/hosts.new /etc/hosts; echo "hosts has now $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; echo "End of switch";'
alias reset_hosts='echo "Script is removing $(grep '127.0.0.1' /etc/hosts | wc -l) entries" ; sudo rm /etc/hosts && sudo cp /etc/hosts.orig /etc/hosts; echo "hosts has now $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; echo "End of switch"'
echo "Nombre d'éléments dans '$USER' appartenant à root :" ; ls -laR ~ 2>/dev/null | grep "root " | grep -v "\.\." | wc -l