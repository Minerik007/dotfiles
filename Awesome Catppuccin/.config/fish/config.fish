alias 'vim'='nvim'

set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    fastfetch
end
