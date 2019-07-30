# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="awesomepanda"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$ZSH/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  brew
  docker
  git
  node
  npm
  colorize
  bundler
  osx
  kops
)

# Enabling auto-switch of nvm based on .nvmrc
export NVM_AUTO_USE=true

# Activate Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Loading zsh-completions
fpath=($(brew --prefix)/share/zsh-completions $fpath)

# Loading zsh plugins installed with Homebrew
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh           # MUST be last sourced plugin
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh # has to be AFTER zsh-syntax-highlighting O_O

# Configuring zsh-history-substring-search plugin
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/vladyslav/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
source ~/.bash_profile

. /Users/vladyslav/torch/install/bin/torch-activate
