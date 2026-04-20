function __prompt_venv_name --description 'Resolve a human-friendly virtualenv name'
    if not set -q VIRTUAL_ENV
        return 1
    end

    set -l venv_name (path basename "$VIRTUAL_ENV")
    set -l pyvenv_cfg "$VIRTUAL_ENV/pyvenv.cfg"

    if test -f "$pyvenv_cfg"
        set -l prompt_line (string trim -- (string replace -r '^prompt\s*=\s*' '' -- (string match -r '^prompt\s*=.*' < "$pyvenv_cfg")))

        if test -n "$prompt_line"
            printf '%s' (string trim -c '"\'' -- "$prompt_line")
            return 0
        end
    end

    if test "$venv_name" = ".venv"
        printf '%s' (path basename (path dirname "$VIRTUAL_ENV"))
        return 0
    end

    printf '%s' "$venv_name"
end
