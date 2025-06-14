#zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mluksic/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose zsh-autosuggestions zsh-syntax-highlighting autojump macos tmux) 

# custom: Run tmux  by default, disable if needed
ZSH_TMUX_AUTOSTART=false

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="nano ~/.oh-my-zsh"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Flutter development
export PATH="$PATH:/Users/mluksic/development/flutter/bin"

# Custom binary scripts
export PATH="$PATH:/Users/mluksic/bin"

export PATH=${PATH}:`go env GOPATH`/bin 
# ansible
export PATH="$PATH:/Users/mluksic/Library/Python/3.11/lib/python/site-packages"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias start-ubuntu="~/ubuntu-vm/vftool/build/vftool -k ~/ubuntu-vm/kernel -i ~/ubuntu-vm/initrd -d ~/ubuntu-vm/disk.img -m 8192 -p 4 -a \"root=/dev/vda console=hvc0\" -t 0"

# nvm is slowing down zsh startup so I decided to remove it 
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias lg='lazygit'

# Fuzzy finder aliases
alias sd="cd ~ && cd \$(find * -type d | fzf)"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Tmux/tmuxinator
export EDITOR='vim'

## MihaL custom ( https://gist.github.com/bashbunni/f6b04fc4703903a71ce9f70c58345106 )
# Requires https://github.com/caarlos0/timer and https://github.com/julienXX/terminal-notifier to be installed 

# Mac setup for pomo
#alias work="timer 45m --format 24h && terminal-notifier -message 'Pomodoro'\
        #-title 'Work Timer is up! Take a Break 😊'\
        #-appIcon '~/Pictures/working.png'\
        #-sound Glass"
        
#alias rest="timer $1 --format 24h && terminal-notifier -message 'Pomodoro'\
#        -title 'Break is over! Get back to work 😬'\
#        -appIcon '~/Pictures/working.png'\
#        -sound Glass"

restPomodoro() {
	if [ -n "$1" ];then
		timer "$1" --format 24h && terminal-notifier -message 'Pomodoro'\
        	-title 'Break is over! Get back to work 😬'\
        	-appIcon '~/Pictures/working.png'\
        	-sound Glass
	else 
		timer 10m --format 24h && terminal-notifier -message 'Pomodoro'\
        	-title 'Break is over! Get back to work 😬'\
        	-appIcon '~/Pictures/working.png'\
        	-sound Glass
	fi
}

workPomodoro() {
	if [ -n "$1" ]; then
		timer "$1" --format 24h && terminal-notifier -message 'Pomodoro'\
		-title 'Work Timer is up! Take a Break 😊'\
	       	-appIcon '~/Pictures/working.png'\
        	-sound Glass
	else 
		timer 60m --format 24h && terminal-notifier -message 'Pomodoro'\
		-title 'Work Timer is up! Take a Break 😊'\
        	-appIcon '~/Pictures/working.png'\
        	-sound Glass
	fi
}
	

alias rest="restPomodoro"
alias work="workPomodoro"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
