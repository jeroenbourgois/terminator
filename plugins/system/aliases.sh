#!/bin/bash

# Aliases
################################################################################################################

alias ..='cd ..'
alias ...='cd .. ; cd ..'

alias lll='ls -l'
alias ll='ls -CFh'
alias la='ls -Ah'
alias l='ls -laoh'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" # Get readable list of network IPs
alias ip='dig +short myip.opendns.com @resolver1.opendns.com' # my ip
alias flushdns='dscacheutil -flushcache' # Flush DNS cache

alias filediff="open /Applications/Xcode.app/Contents/Applications/FileMerge.app"

alias gzip='gzip -9n' # set strongest compression level as ‘default’ for gzip
alias ping='ping -c 5' # ping 5 times ‘by default’

alias hidden-show='defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder'
alias hidden-hide='defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder'

alias cwd='pwd | pbcopy' # copy current working directory to clipboard

alias hosts='sudo vi /etc/hosts'   

alias fasterfaster='sudo rm -rf /private/var/log/asl/*; sudo rm -rf /var/mail/*'

alias hist='history | grep "$@"'
alias hist-sort='history | cut -c 8- | sort | uniq -c | sort -rn'

alias fixfonts='atsutil databases -removeUser | atsutil server-shutdown | atsutil server -ping'

alias reload!='source ~/.bash_profile'

# folders
################################################################################################################

alias repos='cd ~/Dropbox/Private/repos'
alias projects='cd ~/Projects'
alias p='cd ~/Projects'
alias online='cd ~/Dropbox/Private/development/online'
alias dropbox='cd ~/Dropbox'
alias clients='cd /Volumes/Proximity1080/1_CLIENTS/'

# jack
################################################################################################################

jackip='178.79.144.193'
alias jacke='echo $jackip'

# screen
################################################################################################################

alias screen='export SCREENPWD=$(pwd); /usr/bin/screen -U'

case "$TERM" in 
    'screen')
         cd $SCREENPWD
         ;; 
esac

# Terminator
################################################################################################################

alias profile='vim ~/.terminator'
alias profilec='. ~/.bash_profile'
alias terminator='cd ~/.terminator | vim .'
alias terminatore='. ~/.bash_profile'

# apache
######################################################################################################

alias apache-start='sudo apachectl start'
alias apache-restart='sudo apachectl restart'
alias apache-stop='sudo apachectl stop'
alias apache-vhosts='sudo vim /etc/apache2/other/httpd-vhosts.conf'
alias apache-conf='sudo vim /etc/apache2/httpd.conf'

alias mysql-start='mysql.server start'
alias mysql-stop='mysql.server stop'

# postgresql
######################################################################################################

alias postgresql-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postgresql-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# php
######################################################################################################

alias php-ini='sudo vim /etc/php.ini'

# php-fpm
######################################################################################################

alias php-fpm-start='sudo php-fpm'
alias php-fpm-stop='sudo kill `cat /var/run/php-fpm.pid`'

# nginx
######################################################################################################

alias nginx-sites='vim /usr/local/etc/nginx/sites.conf'
alias nginx-conf='vim /usr/local/etc/nginx/nginx.conf'
alias nginx-start='sudo nginx'
alias nginx-reload='sudo nginx -s reload'
alias nginx-stop='sudo nginx -s stop'

# ruby+rails
################################################################################################################

alias be='bundle exec'
alias r='rails'

# javascript compiler
################################################################################################################

alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc $1'

# spotify
################################################################################################################

alias spotify="osascript ~/.terminator/bin/spotify.scpt"
alias spn="spotify next"
alias spp="spotify pause"
alias sppr="spotify previous"

# barbuda Amazon EC2
################################################################################################################
alias barbuda="ssh ubuntu@ec2-54-245-3-123.us-west-2.compute.amazonaws.com"
