# http://www.nparikh.org/unix/prompt.php
# alanpeabody + daveverwer + flazz + robbyrussell

if [ $USER = root ]
then CARETCOLOR='white'
else CARETCOLOR='blue'
fi

local rvm=''
if which rvm-prompt &> /dev/null; then
  rvm='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm='%{$fg_bold[green]%}$(if [[ `ls . | grep .rb` ]]; then ver=`rbenv version | sed -e "s/ (set.*$//"`;echo ‹$ver\›; fi)%{$reset_color%}'
  fi
fi

PROMPT='$host_name $separater $ret_status $currend_dir $(git_prompt_info)'
# RPS1='$(vi_mode_prompt_info) ${return_code}'" ${rvm}"
RPS1='$(vi_mode_prompt_info)'" ${rvm}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"

local host_name="%{$fg_bold[$CARETCOLOR]%}%m%{$reset_color%}"
local separater="%{$fg_bold[magenta]%}::%{$reset_color%}"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local currend_dir="%{$fg_bold[cyan]%}%1c%{$reset_color%}"
local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"

# TODO use 265 colors
# MODE_INDICATOR="$FX[bold]$FG[020]<$FX[no_bold]%{$fg[blue]%}<<%{$reset_color%}"
# TODO use two lines if git
