# Git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"

# Functions
get_pwd() {
    echo "%{$fg_bold[white]%}%c%{$reset_color%}"
}

git_info() {
    if $(git rev-parse >/dev/null 2>&1); then
        echo " ($(git_prompt_info))"
    else
        echo ""
    fi
}

lambda() {
    echo "%{$fg_bold[green]%}λ%{$reset_color%}"
}

# Prompt
PROMPT='$(get_pwd)$(git_info) $(lambda) '
