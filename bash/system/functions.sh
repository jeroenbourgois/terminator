ssh-tunnel() {
  echoo "Tunneling: localport $1 maps to remote $2 for host $3"

  ssh -L $1':localhost:'$2 $3
}

confirm() {
  read -q response\?"¿ Are you sure? [y/n] "
  case "$response" in
    [yY][eE][sS]|[yY])
      echo "\n\x1b[33;01m☼ win\x1b[39;49;00m"

      "$@"
      ;;
    *)
      echo "\n\x1b[31;01m× loser\x1b[39;49;00m"
      ;;
  esac
}

# Whether or not we have a command
# http://dotfiles.org/~steve/.bashrc
have() {
  type "$1" &> /dev/null
}

# Filter through running processes
psgrep() {
  ps aux | \grep -e "$@" | \grep -v "grep -e $@"
}

# Sort the "du" output and use human-readable units.
# https://github.com/janmoesen/tilde/blob/master/.bash/commands
duh() {
  du -sk ${@:-*} | sort -n | while read size fname; do
    for unit in KiB MiB GiB TiB PiB EiB ZiB YiB; do
      if [ "$size" -lt 1024 ]; then
        echo -e "${size} ${unit}\t${fname}"
        break
      fi
      size=$((size/1024))
    done
  done
}

###############################################################################
# SSH

# Copy your public ssh key to remote server for password-less login
# Usage: ssh-sesame 'tortuga'
function ssh-sesame() {
  cat "~/.ssh/id_rsa.pub" | ssh $@ "mkdir -p .ssh && cat >> .ssh/authorized_keys";
}

###############################################################################
# SYSTEM

# Clear temp files for a faster Terminal
function fasterfaster() {
  sudo rm -rf /private/var/log/asl/*
  sudo rm -rf /var/mail/*
}

###############################################################################
# RENAMING

# Remove spaces and replace by a dash
function remove-spaces() {
  for file in *
  do
    mv "$file" "${file// /-}"
  done
}

# Remove underscore and replace by a dash
function remove-underscore() {
  for file in *
  do
    mv "$file" "${file//_/-}"
  done
}

# List all files interacting with ipv4-6 ports
function list-files-ports() {
  echoo "lsof -i"

  lsof -i
}

function find-todos() {
  find . -exec grep -Hin TODO {} \;
}

###############################################################################
# OS

if [[ $OS == 'OSX' ]]; then
  udc() {
    d=`date -r $1 '+%Y-%m-%d %H:%M:%S'`

    echoo $d
  }
else
  function list-services() {
    chkconfig --list | grep '3:on'
  }

  function active-connections() {
    netstat -tulpn
  }

  function iptables-clear() {
    iptables -F
    iptables -X
    iptables -t nat -F
    iptables -t nat -X
    iptables -t mangle -F
    iptables -t mangle -X
    iptables -P INPUT ACCEPT
    iptables -P OUTPUT ACCEPT
    iptables -P FORWARD ACCEPT
  }
fi
