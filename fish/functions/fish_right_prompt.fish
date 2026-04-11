function fish_right_prompt
    set -g VIRTUAL_ENV_DISABLE_PROMPT true

    set -l parts

    if set -q VIRTUAL_ENV
        set parts $parts (__prompt_venv_name)
    end

    set parts $parts (date '+%H:%M:%S')

    set_color brblack
    string join ' ' -- $parts
    set_color normal
end
