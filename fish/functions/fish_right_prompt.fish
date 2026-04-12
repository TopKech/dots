function fish_right_prompt
    set -g VIRTUAL_ENV_DISABLE_PROMPT true
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_showcolorhints 0
    set -g __fish_git_prompt_use_informative_chars 1

    set -l parts
    set -l vcs (fish_vcs_prompt '(%s)' 2>/dev/null)

    if test -n "$vcs"
        set parts $parts "$vcs"
    end

    if set -q VIRTUAL_ENV
        set parts $parts (__prompt_venv_name)
    end

    set parts $parts (date '+%H:%M:%S')

    set_color brblack --dim
    string join ' ' -- $parts
    set_color normal
end
