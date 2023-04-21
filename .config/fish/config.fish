if status is-interactive
    # Commands to run in interactive sessions can go here
end

#source ~/.bashrc

export HOME=/home/huwutao
export LIBCLANG_PATH=/usr/lib
export PATH=/home/huwutao/.surrealdb:$PATH
export PATH=/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin:$PATH:$HOME/.cargo/bin:$HOME/.spoof-dpi/bin:$HOME/.surrealdb
starship init fish | source

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export GPG_TTY=$(tty)

alias cls="clear"
alias grem="clear && cat .config/fish/greet"
alias refish="exec fish"
alias supac="sudo pacman"
alias supi="sudo pacman -S"
alias sus="sudo sh"
alias susys="sudo systemctl"
alias dish="fish"
# IjCompat
alias docker-compose="docker compose"
alias conpose="docker compose"

# pnpm
set -gx PNPM_HOME "/home/huwutao/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/huwutao/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

function nvim-chad
    env NVIM_APPNAME=nvim-chad nvim
end
function nvim-yum
    env NVIM_APPNAME=nvim-yum nvim
end

function nvims
    set items nvim-yum nvim-chad
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = "default" ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end

bind \ca 'nvims\n'```
