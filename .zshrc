# Use powerline
USE_POWERLINE="false"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias ls='exa --color=auto'


eval "$(starship init zsh)"

export HOMEPATH="$HOME/bin" 
if [ -d "$HOMEPATH" ] && [[ ":$PATH:" != ":$HOMEPATH:"* ]]; then
	PATH="$HOMEPATH:${PATH:+"$PATH:"}"
fi
export PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
