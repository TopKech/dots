fish_config theme choose "ayu" --color-theme="light"

fish_add_path "/opt/homebrew/bin"
fish_add_path "/Users/topkech/.local/bin"  # for uv, getnf

if status is-interactive
    alias ls="eza --icons"
    alias gd="git -c diff.external=difft diff"
end

set -U fish_greeting

zoxide init fish | source

# FZF ayu light
set -gx FZF_DEFAULT_OPTS \
    --color=light,fg:#5c6166,bg:#f8f9fa,hl:#399ee6 \
    --color=fg+:#1f2430,bg+:#d3e1f5,hl+:#fa8d3e \
    --color=info:#86b300,prompt:#399ee6,pointer:#fa8d3e \
    --color=marker:#f2ae49,spinner:#55b4d4,header:#8a9199 \
    --color=border:#d2d5d8,gutter:#f8f9fa
fzf --fish | source
set -gx FZF_CTRL_R_OPTS "--with-nth 3.. --bind 'alt-t:change-with-nth(2..|1,3..|3..)'"

