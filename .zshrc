[ -n "$PS1" ] && source ~/.shellrc

if [ ! -d $ZSH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# `_` and `-` will be interchangeable
HYPHEN_INSENSITIVE="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Load plugins
plugins=(autojump git pip tmux virtualenv)

# Activate zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh

if [ ! -d $ZPLUG_HOME ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

SPACESHIP_PROMPT_SYMBOL='$'
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_BATTERY_SHOW=false

source ~/.zplug/init.zsh
zplug 'denysdovhan/spaceship-zsh-theme', use:spaceship.zsh, from:github, as:theme
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug check || zplug install
zplug load
