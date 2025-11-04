#!/bin/sh



eval "$(starship init zsh)"
alias ls="lsd"

alias vim='nvim'
alias vi='nvim'

alias fix_bar='yabai -m config external_bar all:$(sketchybar --query bar | jq .height):0' # => https://github.com/FelixKratz/SketchyBar/discussions/416ff
#alias exit='tmux kill-session -a; tmux kill-session -t mysession; \exit'
#alias exit='make_exit'
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Commands
# start Tmux right away
#if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
#fi


fastfetch

alias reload-aerospace='killall AeroSpace && open -a AeroSpace'

