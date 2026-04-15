fish_add_path /opt/homebrew/bin
fish_add_path /Users/topkech/Applications/google-cloud-sdk/bin/
fish_add_path /opt/homebrew/Caskroom/mambaforge/base/condabin/
if status is-interactive
    alias ls="eza --icons"
    alias gcp="gsutil -m cp -r"
    alias gd="git -c diff.external=difft diff"
end

set -U fish_greeting

zoxide init fish | source

# uv
fish_add_path "/Users/topkech/.local/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/mambaforge/base/bin/conda
    eval /opt/homebrew/Caskroom/mambaforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/mambaforge/base/bin" $PATH
    end
end

if test -f "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/mamba.fish"
    source "/opt/homebrew/Caskroom/mambaforge/base/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<
