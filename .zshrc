fpath=(
 ${HOME}/.zsh/completions
 ${fpath}
)

autoload -Uz compinit
compinit

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
