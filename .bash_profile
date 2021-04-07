if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval "$(ssh-agent)"
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM="xterm-color"

alias ducks='du -cks * | sort -rn | head -15'
alias sshr='ssh  -A -v'
alias sshfix='ssh-keygen -f /Users/dspolleke/.ssh/known_hosts -R'
alias sshadm="ssh -v adm -t 'if tmux ls; then tmux attach; else tmux; fi'"
alias sshfix='ssh-keygen -f /Users/dspolleke/.ssh/known_hosts -R'
alias ls='ls -GFh'
alias ll='ls -alh'
