# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ayman/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(oh-my-posh init zsh --config /home/ayman/Themes/oh-my-posh/catpuc.json)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Set up fzf key bindings and fuzzy completion
alias mvncreate=$HOME/.config/scripts/createmvn.sh
bindkey -s "^f" "^u$HOME/.config/scripts/fzftmux.sh^M"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
