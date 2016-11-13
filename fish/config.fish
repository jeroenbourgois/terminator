set -g -x PATH /usr/local/bin /usr/local/sbin $PATH

. ~/.config/fish/aliases.fish

# Base16 Shell
if status --is-interactive
  # eval sh $HOME/.terminator/config/base16-shell/scripts/base16-flat.sh
  # eval sh $HOME/.terminator/config/base16-shell/scripts/base16-eighties.sh
  # eval sh $HOME/.terminator/config/base16-shell/scripts/base16-ashes.sh
  eval sh $HOME/.terminator/config/base16-shell/scripts/base16-google-light.sh
end
