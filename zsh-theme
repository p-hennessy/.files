LCHAR_WIDTH=%1G
PROMPT='%{$fg_bold[white]%}[%{$fg_bold[green]%}%c%{$fg_bold[white]%}]$ %{$reset_color%}'

if [ -n $AWS_PROFILE ]; then
    RPROMPT='$(parse_git_dirty)$(git_prompt_info)$(git_prompt_short_sha) %{$fg[white]%} %{$fg[green]%}🔑 %{$fg[white]%}$AWS_PROFILE%{$reset_color%}'
else
    RPROMPT='$(parse_git_dirty)$(git_prompt_info)$(git_prompt_short_sha)%{$reset_color%}'
fi

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}*"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[white]%}(%{$fg[grey53]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[white]%}) │"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    PROMPT='%{$fg_bold[white]%}[%{$fg_bold[blue]%}%c%{$fg_bold[white]%}]$%{$reset_color%}'
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[blue]%}"
fi
