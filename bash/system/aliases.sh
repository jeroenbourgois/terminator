alias termieter="cd $TRM"
alias termietere="cd $TRM; vim ."

alias vime="cd ~/.vim; vim ."

alias reload!=". ~/.bash_profile"

################################################################################################################

alias ls='ls $LS_OPT' # long list, excludes dot files
alias ll='ls $LS_OPT -GlhA' # long list all, includes dot files
alias l='ls $LS_OPT -1AFC'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" # Get readable list of network IPs
alias ip='dig +short myip.opendns.com @resolver1.opendns.com' # my ip

alias ping='echoo "ping -c 5"; ping -c 5' # ping 5 times ‘by default’

alias hist='history | grep "$@"'
alias hist-sort='echoo "history | cut -c 8- | sort | uniq -c | sort -rn"; history | cut -c 8- | sort | uniq -c | sort -rn'

echoo() {
  printf "\x1b[34;01m▽ %s\x1b[39;49;00m\n" $1
}

alias v='vim .'
alias vi='vim'

################################################################################################################

if [[ $OS == 'OSX' ]]; then
  alias flushdns='echoo "dscacheutil -flushcache"; dscacheutil -flushcache' # Flush DNS cache
  alias hosts='echoo "sudo vim /private/etc/hosts"; sudo vim /private/etc/hosts'

  # Trash a file from your Terminal
  alias trash='mv "$@" ~/.Trash/'

  # copy current working directory to clipboard
  alias cwd='echoo "pwd | pbcopy"; pwd | pbcopy'

  # Spotlight
  alias spotlight-stop='sudo mdutil -i off /'
  alias spotlight-clear='sudo mdutil -E /'
  alias spotlight-start='sudo mdutil -i on /'

  # Sleepimage
  alias sleepimage-clear='sudo rm /private/var/vm/sleepimage'
else
  alias hosts='sudo vim /etc/hosts'
  alias sys-update='sudo apt-get update && sudo apt-get upgrade'

  # http://dotfiles.org/~ghost1227/.bashrc
  alias meminfo="echo -e '/proc/meminfo:\n';grep --color=auto '^[Mem|Swap]*[Free|Total]*:' /proc/meminfo && echo -e '\nfree -m:'; free -m"
fi
