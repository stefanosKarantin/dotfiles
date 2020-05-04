################################################################################
######### Marmalade Envs #######################################################
export MARMALADE_ENVS=$HOME/.marmalade.envs

for i in $MARMALADE_PATH/envs/*_env.bash ; do
  if [ -r "$i" ]; then
    source "$i"
  fi
done
source $MARMALADE_PATH/envs/env_management.bash
################################################################################
################################################################################

################################################################################
######### Paths ################################################################
add_to_path $HOME/.local/bin
################################################################################
################################################################################

################################################################################
######### Aliases ##############################################################
alias ll='command ls -la --color=auto'
alias tree='command tree -C'
alias go_to_runlevel_3='sudo systemctl set-default multi-user.target'
alias go_to_runlevel_5='sudo systemctl set-default graphical.target'
alias get_wm_class='xprop WM_CLASS'
alias O='xdg-open'
alias JAVALS='ll /etc/alternatives | grep /usr/lib/jvm | column -t'
################################################################################
################################################################################

################################################################################
######### Fedora ###############################################################
alias display_package_contents_dnf='dnf repoquery -l'
alias display_local_package_contents_dnf='dnf repoquery --installed -l'
################################################################################
################################################################################
