export ZSH="/home/kairovox/.oh-my-zsh"

#ASDF
. $HOME/.asdf/asdf.sh

#THEME
ZSH_THEME="spaceship"

#PLUGINS
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#ALIASES
alias vim="nvim"
alias poly="vim ~/.config/polybar/config"
alias b="vim ~/.config/bspwm/bspwmrc"
alias s="vim ~/.config/sxhkd/sxhkdrc"
alias x="vim ~/.xinitrc"
alias z="vim ~/.zshrc"
alias r="reset"
alias c="clear"
alias search="yay -Ss"
alias update="sudo pacman -Syy"
alias upgrade="sudo pacman -Suu"
alias emerge="sudo pacman -S"
alias portage="yay -S"

#GIT
alias status="git status"
alias commit="git commit"
alias push="git push"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
#SPACESHIP CONFIGURATION
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_USER_COLOR=#6272a4
SPACESHIP_CHAR_COLOR_SUCCESS=#bd93f9
SPACESHIP_CHAR_COLOR_FAILURE=#ff5555
SPACESHIP_GIT_SYMBOL=
SPACESHIP_GIT_BRANCH_COLOR=#ff79c6
SPACESHIP_DIR_COLOR=#8be9fd
#ZSH HIGHLIGHT CONFIGURATION
ZSH_HIGHLIGHT_STYLES[default]=fg=#f8f8f2
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=#ff5555,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=#50fa7b,bold
ZSH_HIGHLIGHT_STYLES[alias]=bg=#6272a4,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=#ff79c6,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=#50fa7b,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=#ffb86c,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#50fa7b,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=#f8f8f2,bold
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=#8be9fd,bold
ZSH_HIGHLIGHT_STYLES[path]=fg=#f1fa8c,underline,bold
ZSH_HIGHLIGHT_STYLES[globbing]=#50fa7b
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=#bd93f9
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=#f8f8f2,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=#f8f8f2,bold
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=nonefg=#f8f8f2,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=#f1fa8c,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=#f1fa8c,bold
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=#8be9fd
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=#8be9fd
ZSH_HIGHLIGHT_STYLES[assign]=fg=#f8f8f2,bold
#ZSH AUTOSUGGEST CONFIGURATION
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#44475A,bold"
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit


source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit compinit
compinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

export LC_ALL=en_US.UTF-8
