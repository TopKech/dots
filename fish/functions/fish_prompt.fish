function fish_prompt
    set -l last_status $status

    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_showcolorhints 1
    set -g __fish_git_prompt_use_informative_chars 1

    set -l cwd (prompt_pwd)
    set -l vcs (fish_vcs_prompt '(%s)' 2>/dev/null)
    set -l failure (__prompt_status_label "$last_status")

    set_color normal
    printf '⋊> '

    set_color $fish_color_cwd
    printf '%s' "$cwd"

    if test -n "$vcs"
        set_color brblack
        printf ' %s' "$vcs"
    end

    if test -n "$failure"
        set_color red
        printf ' [%s]' "$failure"
    end

    set_color normal
    printf ' '
end
