# fino-time.zsh-theme

# Meant for people with RVM, timetrap and git. Tested only on OS X 10.7.

# Borrowing shamelessly from these oh-my-zsh themes:
#   fino

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function time_tracker {
  #if [ $commands[timetrap] ]; then
    #$(timetrap now)
##[ -f timetrap ] && cat ~/.box-name || hostname -s
  #fi
}


local rvm_ruby='‹$(rvm-prompt i v g)›%{$reset_color%}'
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'


PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[033]%}$(time_tracker)%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%}${git_info} ${rvm_ruby} %*
╰─$(virtualenv_info)$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
