# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/alberto/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
         git 
         tmux 
         cp 
         safe-paste 
         colored-man-pages 
         docker 
         last-working-dir 
         npm 
         python 
         systemd 
         web-search
         zsh-syntax-highlighting
	 zsh-autosuggestions
	 web-search
	 extract
         )

source $ZSH/oh-my-zsh.sh

# Config for zsh-syntax-highlighting
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan

# Adjust autocompletion strategy
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias teamspeak="/home/as/Documents/Programs/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh"

export VISUAL=vim
export EDITOR="$VISUAL"
alias v="vim"

# Use Vim mode
#bindkey -v
#export KEYTIMEOUT=1

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# Autocomplete hidden history
# bind 'set match-hidden-files off'

# Force VI mode to display
#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

SCRIPTS=~/Documents/config/scripts
export SCRIPTS
PATH=$PATH:$SCRIPTS
export PATH

# Add OpenVPN to path
export PATH="/usr/local/Cellar/openvpn/2.4.7/sbin/:$PATH"

export GOPATH="~/Documents/go"

#Amazon Webservices Alias
alias amazon="ssh -i ~/Documents/AWS/spina.pem ubuntu@spina.me"

alias pm2-deploy="pm2 deploy ecosystem.config.js dev"

#Webstorm alias
alias webstorm="webstorm.sh"

#ShaderLab
alias shaderLab="cd /home/as/Documents/C++/ShaderLabFramework && /home/as/Documents/C++/ShaderLabFramework/bin/ShaderLabFramework"

#Cooja
alias cooja="cd Documents/Contiki/contiki/tools/cooja && ant run_bigmem"

#Desktop opener
alias deskopen="./.deskopen"

#Uniflash
alias uniflash="deskopen /usr/uniflash/UniFlash.desktop"
alias flash="/usr/uniflash/flash.sh"

# Mount doc
alias doc="sudo sshfs as12015@shell2.doc.ic.ac.uk:/ /media/doc"

# Mount windows
alias windows="sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda2 /media/windows"

# Mount gr
alias gr-mount="sudo mount -t cifs -o username=labuser,password=London17 //192.168.32.102/fileshares /media/gr"
alias openvpn="sudo openvpn"

# Star wars
alias sw="telnet towel.blinkenlights.nl"

# Disk viewer utility
alias disk="sudo ncdu / --exclude /media"

# Chmod list
alias cls="ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

# Init screensaver
# xscreensaver -no-splash &

# TSIQ specific lookup
alias dhost='dscacheutil -q host -a name'

# Tmux start
alias tat='tmux attach-session -t 0'

# Git aliases
alias gg="lazygit"
alias gameall='python -m gitfame'
alias gclean='git clean  -d  -fx ""'
alias game='git fame'
alias gem='git merge'
alias gemnf='git merge --no-ff'
alias gr='git reset'
alias grh='git reset --hard'
alias gatus='git status'
alias gs='git status'
alias gull='git pull'
alias gl='git pull'
alias gush='git push'
alias gp='git push'
alias gommit='git commit -v'
alias gm='git commit'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gfl="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gloc="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %<(65,trunc)%s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias glo="gfl"
alias glf='gfl --stat'
alias glfo='gfl --stat --oneline'
alias glg='git log --stat --graph --pretty=fuller'
alias glp='git log --graph --stat --oneline --patch'
alias gelp='/$SCRIPTS/git_commit_helper'
alias repofix='sudo /home/as/.fix_http_repo'

# Docker bindings
alias dc="docker rmi $(docker images --filter 'dangling=true' -q --no-trunc) && docker rmi $(docker images | grep 'none' | awk '/ / { print $3 }')"
alias dci="docker rmi $(docker images --filter 'dangling=true' -q --no-trunc)"
alias drun="docker run"
alias dr="docker rmi"
alias db="docker build"
alias drd="docker run --rm -it --user=$(id -u) --env='DISPLAY' --volume='/tmp/.X11-unix:/tmp/.X11-unix:rw' "
alias dl="docker images"

# Contiki-NG settings
export CNG_PATH=/home/alberto/Documents/contiki-ng
alias contiker="docker run --privileged --mount type=bind,source=$CNG_PATH,destination=/home/user/contiki-ng -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb -ti contiker/contiki-ng"

# Auto history completion
bindkey "\C-w" history-beginning-search-backward
bindkey "\C-q" history-beginning-search-forward

# Remap capslock to ctrl and make it behave like esc when tapped
#setxkbmap -option 'caps:ctrl_modifier'
#xcape -e 'Caps_Lock=Escape;Control_L=Escape;Control_R=Escape'

# Spin up NVM (for node)
export NVM_DIR="$HOME/.nvm"                        
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Override grep options
export GREP_OPTIONS="--color=auto"

# Remap capslock to ctrl and make it behave like esc when tapped
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape;Control_L=Escape;Control_R=Escape'

# Source Bash Profile
source ~/.bash_profile
