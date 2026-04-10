# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

source $HOME/.config/marlonrichert/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# End of lines added by compinstall
eval "$(oh-my-posh init zsh --config ~/.my_theme.omp.json)"

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

ZSH_AUTOSUGGEST_USE_ASYNC=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/Users/aymanhachkal/.spicetify
PS1="Ayman" 

# Created by `pipx` on 2025-09-17 00:43:40
export PATH="$PATH:/home/ayman/.local/bin"

export VCPKG_ROOT="$HOME/vcpkg"
export PATH=$VCPKG_ROOT:$PATH

# opencode
export PATH=/Users/aymanhachkal/.opencode/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

