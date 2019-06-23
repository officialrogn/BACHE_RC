# ~/.bash_aliases
#alias see_firefox_extensions="grep -oP '},"name":"\K[^"]+' ~/.mozilla/firefox/*/addons.json"
#sudo sed -i 's/utopic/trusty/g' /etc/apt/sources.list
alias ls='ls --color=auto'
alias see_actives_sources="find /etc/apt -name '*.list' -print -exec bash -c 'grep '^deb' {}' \;"
alias simple_update='sudo apt update && sudo apt dist-upgrade -y'
alias rmv_purge='sudo apt autoremove --purge -y'
alias set_hosts='echo "Script is removing $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; sudo rm /etc/hosts && sudo cp /etc/hosts.new /etc/hosts; echo "hosts has now $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; echo "End of switch";'
alias reset_hosts='echo "Script is removing $(grep '127.0.0.1' /etc/hosts | wc -l) entries" ; sudo rm /etc/hosts && sudo cp /etc/hosts.orig /etc/hosts; echo "hosts has now $(grep '127.0.0.1' /etc/hosts | wc -l) entries"; echo "End of switch"'
alias purge_conf_files='[[ $(dpkg -l | grep ^rc) ]] && sudo dpkg -P $(dpkg -l | grep ^rc | tr -s " " | cut -d " " -f 2)'
alias transform_ubpackages_to_auto='[[ $(apt-mark showmanual | egrep 'linux-.*[0-9]' | grep -v "hwe") ]] && sudo apt-mark auto $(apt-mark showmanual | egrep linux-.*[0-9] | grep -v "hwe")'
