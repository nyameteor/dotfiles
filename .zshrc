#!/usr/bin/env zsh

# Debug option
# set -x

#
# Configs
#
## fix: -zsh:no matches found
setopt no_nomatch

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add history as soon as the command is entered
# setopt share_history          # share command history data

#
# Exports
#
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000

## fix: some terminal emulator not recognized by remote
export TERM="xterm-256color"

#
# Aliases
#
if [ -f ~/.common_alias ]; then . ~/.common_alias; fi

if [ -f ~/.my_alias ]; then . ~/.my_alias; fi

#
# Path
#
# Refer: https://superuser.com/a/598924/986660
typeset -U path             # keep path alwasy unique, tmux will reload zshrc

path=(
    /usr/local/sbin         # fix: brew doctor warning
    $HOME/.local/bin        # pipx
    $path
    )
export PATH=":$PATH"


#
# Prompt
#
# To see prompt options: man zshmisc
# Refer: https://alldrops.info/posts/cli-drops/2021-07-26_customize-zsh-part-2/
PS1='%B%F{cyan}%6~%f%b%B%(?.%F{green}.%F{red}) %(!.#.$)%f%b ' 

# enable starship
# Refer: https://github.com/starship/starship
# eval "$(starship init zsh)"


#
# Zplugin
#
# Refer: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

