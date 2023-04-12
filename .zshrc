source ~/zsh-snap/znap.zsh
fpath=(
 ${HOME}/.zsh/completions
 ${fpath}
)


# 補完と色の使用
autoload -Uz compinit
compinit
autoload -Uz colors
colors

# ビープ音削除
setopt no_beep
setopt nolistbeep



# ここから上はgitの補完の設定

eval "$(pyenv init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
# 上記はpyenvに必要な設定ファイル

function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi


function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)
% "
}


setopt correct
#　間違ったコマンドを入力した際に正しいコマンドを訂正してくれる



  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
     source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

    autoload -Uz compinit
    compinit
  fi
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="/Users/goru/.local/bin:$PATH"

git config --global color.ui auto

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/goru/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/goru/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/goru/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/goru/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



alias vim='nvim'


znap source marlonrichert/zsh-autocomplete


# LSDeluxeの設定
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'


eval "$(rbenv init -)"


# C++のLSPの設定
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


export LDFLAGS="-:/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"


alias makezip='(){zip $1 -r $2 -x "*.DS_Store"}'
