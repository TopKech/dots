function fish_prompt
    set -l last_status $status

    set -l cwd (prompt_pwd)
    set -l failure (__prompt_status_label "$last_status")

    set_color green
    printf '%s' "$cwd"
    printf ' '

    set_color yellow
    printf '⋊> '

    if test -n "$failure"
        set_color red
        printf ' [%s]' "$failure"
    end

    set_color normal
end
