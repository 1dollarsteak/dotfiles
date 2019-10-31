# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' '' '' ''
zstyle ':completion:*' max-errors 3 not-numeric
zstyle ':completion:*' prompt '%e> '
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/fabian/.zshrc'

autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search
compinit
promptinit

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt autocd notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

export PATH="$HOME/Documents/Prolog/sicstus4.0.8/bin:$HOME/gems/bin:$HOME/.gem/ruby/2.6.0/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH"
export PROMPT="%F{grey}%B(%?)%b%f %F{white}[%~]:%#%f %F{grey}%B%D{%R|%d.%m.%y|%W}%f%b"$'\n'"> "
export RPROMPT=""
#export SHELL="/usr/local/bin/zsh"

setopt COMPLETE_ALIASES

alias grep="grep --color=auto"
alias ls="ls -G --color=auto"
alias poweroff="doas halt -p"
alias ch="sudo /home/fabian/scripts/connect.sh"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export HISTCONTROL=ignoredups:erasedups
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export EDITOR="vim"
export PAGER="less"
peek() { tmux split-window -p 33 "$EDITOR" "$@" }

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/autojump/autojump.zsh ] && source /usr/share/autojump/autojump.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

r() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      ranger "$1"
    else
      ranger "$(autojump $1)"
    fi
  else
    ranger
  fi
	return $?
}

# GEM
export GEM_HOME="$HOME/gems"
