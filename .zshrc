autoload -U colors && colors
PS1="%{$fg[cyan]%}%n%{$reset_color%}: %{$fg[green]%}%~ %{$reset_color%}%% "

export CLICOLOR=1
export LSCOLORS=ExCxfxgxBxxxxxxxxxExEx

alias python="python3"
alias pip="pip3"

export PATH=$PATH:~/nvim-macos-arm64/bin
alias vim="nvim -O"
alias vi="nvim -O"

alias finder="open /System/Library/CoreServices/Finder.app"
alias dockerRm="docker ps -aq | xargs docker rm --force && docker network prune --force"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# manually clean up golangci-lint state
alias golangci-lint-cleanup="golangci-lint cache clean && go clean -modcache -cache -i && golangci-lint run -v --timeout=50s"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go

export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=$PATH:~/.mix/escripts

# git alias stuff
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm 'commit -v'
git config --global alias.st status
git config --global alias.po 'push -u origin'
git config --global alias.ap 'add -p'

export EDITOR="nvim"
