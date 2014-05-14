# RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
else
  if which rbenv &> /dev/null; then
    RPS1="%{$fg[yellow]%}rbenv:%{$reset_color%}%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$reset_color%} $EPS1"
  fi
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
prompt_git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# Echoes user@hostname when being in a special context or nothing otherwise
# See http://stackoverflow.com/questions/5203665/zsh-check-if-string-is-in-array
# for testing whether an element is in the DEFAULT_USERS array as used below
DEFAULT_USERS=(eno ebothmann)
prompt_context() {
  local user=`whoami`
  # Using http://stackoverflow.com/questions/5203665/zsh-check-if-string-is-in-array
  # for testing whether an element is in the DEFAULT_USERS array
  if [[ ${DEFAULT_USERS[(i)${user}]} -gt ${#DEFAULT_USERS} || -n "$SSH_CLIENT" ]]; then
    echo "%B${user}@%m%b"
  fi
}


PROMPT='$(prompt_context)$(prompt_git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}%B$%b '
RPROMPT='[%*]'
