# Fish Shell Configuration file

if status is-interactive
    # Umask
    umask 077

    # Package Manager
    abbr -a pacS sudo pacman -S
    abbr -a pacSyu sudo pacman -Syu
    abbr -a yayS yay -S

    # Text Editing
    alias v=nvim
    alias se='EDITOR=nvim sudoedit'

    # Net
    abbr -a s ssh
    abbr -a p ping

    # LS/Grep
    alias ls='ls --color=auto'
    alias la='ls -a --color=auto'
    alias ll='ls -la --color=auto'
    alias grep='grep --color=auto'

    # Files
    alias brc='nvim ~/.config/fish/config.fish'
    alias brcu='source ~/.config/fish/config.fish'
    alias hosts='EDITOR=nvim sudoedit /etc/hosts'

    # Systemd
    abbr -a sctl sudo systemctl
    alias sdr='sudo systemctl daemon-reload'

    # Browser
    function search
        set -f query (echo $argv | sed 's/ /+/g')
        librewolf "https://duckduckgo.com/?q=$query"
    end

    # Git
    abbr -a ga git add
    abbr -a gc git commit -m
    abbr -a g git
    alias gs="git status"
    alias gp="git push"

    # Shell
    alias q="exit"
end
