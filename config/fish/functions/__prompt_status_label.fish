function __prompt_status_label --description 'Format the last exit status for the prompt'
    set -l last_status $argv[1]

    if test -z "$last_status" -o "$last_status" -eq 0
        return 1
    end

    if test "$last_status" -gt 128
        set -l signal (math "$last_status - 128")
        set -l signal_name (kill -l "$signal" 2>/dev/null | string trim | string upper)

        if test -n "$signal_name"
            printf 'SIG%s' "$signal_name"
            return 0
        end
    end

    printf '%s' "$last_status"
end
