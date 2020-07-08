export HISTFILE=$HOME/.history
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt extended_history             # keep entries with timestamp and duration.
setopt hist_expire_dups_first       # expire duplicate entries first when trimming history.
setopt hist_find_no_dups            # do not display duplicates of a line previously found.
setopt hist_ignore_all_dups         # remove older duplicate entries from history.
setopt hist_ignore_dups             # do not keep duplicates of the previous event.
setopt hist_ignore_space            # do not keep an entry starting with a space.
setopt hist_reduce_blanks           # remove superfluous blanks from history items.
setopt inc_append_history           # save history entries as soon as they are entered.
setopt share_history                # share history between different instances of the shell.

setopt autocd extendedglob notify

unsetopt hup                        # do not propagate SIGHUP on shell exit.


source /home/y9mo/.dockerservicerc

eval "$(starship init zsh)"
