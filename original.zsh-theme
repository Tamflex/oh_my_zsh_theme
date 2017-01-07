# http://www.nparikh.org/unix/prompt.php
# daveverwer + flazz + robbyrussell

if [ "$USER" = "root" ]
then CARETCOLOR="red"
else CARETCOLOR="blue"
fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg_bold[white]%}%m%{$reset_color%} %{$fg_bold[magenta]%}::%{$reset_color%} \
%{$fg_bold[green]%}%1~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}%#%{${reset_color}%} '

RPS1="$(vi_mode_prompt_info) ${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"

# TODO use 265 colors
MODE_INDICATOR="$FX[bold]$FG[020]<$FX[no_bold]%{$fg[blue]%}<<%{$reset_color%}"
# TODO use two lines if git
