################################################################################
######### Paths ################################################################
add_to_path $HOME/.local/bin
add_to_path $HOME/bin
################################################################################
################################################################################

################################################################################
######### Aliases ##############################################################
alias O='xdg-open'
alias ll='command ls -la --color=auto'
alias tree='command tree -C'
alias go-to-runlevel-3='sudo systemctl set-default multi-user.target'
alias go-to-runlevel-5='sudo systemctl set-default graphical.target'
alias get-wm-class='xprop WM_CLASS'
alias p='ps -Aww -o user,pid,ppid,%cpu,%mem,vsz,rss,tty,stat,start_time,command --sort=-user,-ppid,-pid'
alias PGREP='p | grep'
alias crl='curl --silent --show-error --fail --location'
################################################################################
################################################################################

sedit() {
  gnome-text-editor admin://"$1"
}

alias dnf-display-package-contents='dnf repoquery -l'
alias dnf-display-local-package-contents='dnf repoquery --installed -l'

[[ -e $HOME/.dir_colors ]] && eval $(dircolors ~/.dir_colors)

################################################################################
######### Marmalade Envs #######################################################
export DOTFILES_ENVS=$HOME/.marmalade.envs

for i in $DOTFILES_PATH/lib/envs/*.bash ; do
  if [ -r "$i" ]; then
    source "$i"
  fi
done
################################################################################
################################################################################

export EDITOR=/usr/bin/vim
