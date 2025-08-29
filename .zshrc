# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

source $HOME/.config/marlonrichert/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# End of lines added by compinstall
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin_frappe.omp.json)"

# Set up fzf key bindings and fuzzy completion
bindkey -s "^f" "^u$HOME/.config/scripts/fzftmux.sh^M"

[[ -r ~/.config/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.config/znap

source ~/.config/znap/znap.zsh  # Start Znap
#plugins
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/Users/aymanhachkal/.spicetify

. "$HOME/.local/share/../bin/env"
