fish_add_path /opt/homebrew/bin
fish_add_path /Users/topkech/Applications/google-cloud-sdk/bin/
fish_add_path /opt/homebrew/Caskroom/mambaforge/base/condabin/
if status is-interactive
    alias ls="eza --icons"
    alias gcp="gsutil -m cp -r"
    alias gd="git -c diff.external=difft diff"
end

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

source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_functions.d/chruby.fish
source /opt/homebrew/Cellar/chruby-fish/1.0.0/share/fish/vendor_conf.d/chruby_auto.fish
zoxide init fish | source

# uv
fish_add_path "/Users/topkech/.local/bin"
