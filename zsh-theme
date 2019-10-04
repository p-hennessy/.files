LCHAR_WIDTH=%1G

PROMPT='%{$fg_bold[white]%}[%{$fg_bold[yellow]%}%c%{$fg_bold[white]%}]$ %{$reset_color%}'
RPROMPT='$(parse_git_dirty)$(git_prompt_info)$(git_prompt_short_sha)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}*"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[white]%}(%{$fg[grey]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[white]%})"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
