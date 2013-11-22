# if which rbenv &> /dev/null; then
#   eval "$(rbenv init -)"
# else
#   if [ -s "$HOME/.rbenv/bin" ]; then
#     export PATH="$HOME/.rbenv/bin:$PATH"
# 
#     eval "$(rbenv init -)"
#   elif [ -s "/usr/local/rbenv/bin" ]; then
#     export PATH="/usr/local/rbenv/bin:$PATH"
# 
#     eval "$(rbenv init -)"
#   fi
# fi
# 
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
