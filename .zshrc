zmodload zsh/zprof
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/clloz/.oh-my-zsh"
export TERM="xterm-256color"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
    git autojump cp extract sudo z zsh-syntax-highlighting zsh-autosuggestions wakatime tmux 
    gitignore safe-paste colored-man-pages history-substring-search rand-quote git-open history 
    dirhistory copybuffer copyfile copypath web-search evalcache
)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias up10k="git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull"

# 添加 homebrew 到环境变量
export PATH="/opt/homebrew/bin:$PATH"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export PATH="/opt/homebrew/sbin:$PATH"

# 设置 homebrew 清华源
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
#export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
#export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
#export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
#export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
#export HOMEBREW_NO_INSTALL_FROM_API=1

# OpenAI API_KEY
export GPTCOMMIT__OPENAI__API_KEY='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'

# proxy list
export all_proxy="http://127.0.0.1:7890"
alias vproxy="export all_proxy=socks5://127.0.0.1:1090; echo \"Set proxy successful\" "
alias proxy="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890;echo \"Set proxy successfully\" "
alias testproxy="curl -vv https://www.google.com"
alias testgithub="curl -vv https://github.com"
alias unproxy="unset http_proxy;unset https_proxy;unset all_proxy;echo \"Unset proxy successfully\" "
alias iptest="curl cip.cc"

# emacs daemon
export PATH="/Users/Clloz/.emacs.d/bin:$PATH"
alias emacs="~/.emacs_client.sh -t"
alias em="emacs"
alias emd="kill-emacs"
function kill-emacs(){
    emacsclient -e "(kill-emacs)"
    emacs_pid=$( ps x | grep "Emacs.*app" | grep daemon | awk '{print $1}' )
    if [[ -n "${emacs_pid}" ]];then
        kill -9 "${emacs_pid}"
    fi
}

# vim && nvim
alias vim=nvim

# alias
alias vmode="set -o vi"
alias emode="set -o emacs"
alias lc="colorls -lA --sd"
alias chrome="open -a /Applications/Google\ Chrome.app/"
alias typora="open -a /Applications/Typora.app"
alias bear="open -a /Applications/Bear.app"
alias word="open -a /Applications/Microsoft\ Word.app"
alias ppt="open -a /Applications/Microsoft\ PowerPoint.app"
alias excel="open -a /Applications/Microsoft\ Excel.app"
alias cdr="open -a /Applications/CodeRunner.app"
alias esp="open -a /Applications/Espresso.app"
alias ngxdir="cd /opt/homebrew/etc/nginx/servers"
alias ngxlog="cd /opt/homebrew/var/log/nginx"
alias webroot="cd /opt/homebrew/var/www"
alias brewdir="cd /opt/homebrew"
alias onedrive="cd /Users/Clloz/Library/CloudStorage/OneDrive-Personal"
alias dhttpdconf="/etc/apache2"
alias dhttpdroot="/Library/WebServer/Documents"
alias httpdconf="/opt/homebrew/etc/httpd"
alias httpdroot="/opt/homebrew/var/www"
alias blog="blog-with-date"
alias kdemo="cd ~/Work/keenon/demo"
function blog-with-date() {
    cd ~/Documents/Note/Blog/post/$1/$2
}
alias hugodir="cd /Users/Clloz/Documents/Note/github-pages"
alias writting="write-hugo-post"
function write-hugo-post() {
    cd ~/Documents/Note/github-pages
    if [ -f "/Users/Clloz/Documents/Note/github-pages/content/posts/$1/index.md" ]; then
        typora ~/Documents/Note/github-pages/content/posts/$1/index.md
    else
        hugo new posts/$1/index.md && typora ~/Documents/Note/github-pages/content/posts/$1/index.md
    fi
}

# git alias
alias gitline="git ls-files | xargs wc -l"
alias gitperson="get-person-line-stats"
function get-person-line-stats() {
    git log --format='%aN' | sort -u | while read name; do echo -en "$name\t"; git log --author="$name" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -; done
}
alias glh="get-line-log-history"
function get-line-log-history() {
    if [ $# = 2 ];then
        git log -L $1,$1:$2
    else
        git log -L $1,$2:$3
    fi
}
alias gbh="get-line-blame-history"
function get-line-blame-history() {
    if [ $# = 2 ];then
        git blame -L $1,$1 $2
    else
        git blame -L $1,$2 $3
    fi
}
alias clocvue="cloc ./ --exclude-dir=node_modules"
# 管理 .dotfiles git bare 仓库的命令
alias dotconf="/opt/homebrew/bin/git --git-dir $HOME/.dotfiles --work-tree=$HOME"

# hash directory
hash -d OneDrive=/Users/Clloz/Library/CloudStorage/OneDrive-Personal
hash -d hugodir=/Users/Clloz/Documents/Note/github-pages
hash -d keenon=/Users/Clloz/Work/keenon

# 自动补全 git branch
compdef _git_branch_comp gerrit-push
_git_branch_comp() {
    local -a git_branches
    git_branches=("${(@f)$(git branch --format='%(refname:short)')}")
    _describe 'command' git_branches
}
alias gpref="gerrit-push"
function gerrit-push() {
    git push origin HEAD:refs/for/$1
}

# python
alias python="python3"
# pip install location ~/.local/lib/python3.9/site-packages/

# thefuck
eval $(thefuck --alias fk)

# tmux

# fnm
eval "$(fnm env --use-on-cd)"

# NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# node corepack
alias corepackv="change-corepack-version"
function change-corepack-version() {
    corepack prepare $1@$2 --activate
}
# PNPM
export PNPM_HOME="$HOME/.pnpm"
export PATH="$PNPM_HOME:$PATH"

#JAVA_HOME
# Java config
export JAVA_17_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home"
export JAVA_11_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"
export JAVA_8_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
export JAVA_L_HOME="/opt/homebrew/opt/openjdk"

# config alias
alias jdk17="export JAVA_HOME=$JAVA_17_HOME"
alias jdk11="export JAVA_HOME=$JAVA_11_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdkl="export JAVA_HOME=$JAVA_L_HOME"

# config default jdk
export JAVA_HOME=$JAVA_17_HOME
# export JAVA_HOME=$JAVA_11_HOME
# export JAVA_HOME=$JAVA_8_HOME
export PATH="$JAVA_HOME:$PATH"

# my shell script bin
export PATH=~/.my-bin:$PATH

# vim
export PATH="/opt/homebrew/bin/vim:$PATH"

# homebrew make
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# google depot_tools
export PATH=$PATH:~/Github/depot_tools

# Android Studio config
alias sdk="cd ~/Library/Android/sdk"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# homebrew binutils
# export PATH="/opt/homebrew/opt/binutils/bin:$PATH"

# homebrew llvm
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
alias bllvm="cd /opt/homebrew/opt/llvm/"
alias bclang="/opt/homebrew/opt/llvm/bin/clang"
alias bclang++="/opt/homebrew/opt/llvm/bin/clang++"
alias blldb="/opt/homebrew/opt/llvm/bin/lldb"

# homebrew gcc
alias bgcc="/opt/homebrew/bin/gcc-13" 
alias bg++="/opt/homebrew/bin/g++-13" 

# homebrew bison
export PATH="/opt/homebrew/opt/bison/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Jetbrains Scripts
export PATH="$PATH:/Users/Clloz/.jetbrains/bin"

# homebrew ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Clloz/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Clloz/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Clloz/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Clloz/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source $(dirname $(gem which colorls))/tab_complete.sh
