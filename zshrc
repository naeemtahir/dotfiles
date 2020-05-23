#=======
# Prompt
#=======
autoload -Uz promptinit
promptinit
# run 'prompt -l' to see available prompt themes
#prompt suse
# or create your own
PROMPT='%F{yellow}%B%n@%m[%?]:%f%~%F{yellow}%(!.#.$) %b%f'

#============
# Keybindings
#============
# Use emacs keybindings
bindkey -e

# Use vi keybindings
#bindkey -v

#===================
# Command Completion
#===================
autoload -Uz compinit
compinit

zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

setopt autocd autopushd pushdignoredups

# load bashcompinit for some old bash completions
autoload bashcompinit && bashcompinit

#========
# History
#========
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_ALL_DUPS  
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# show the substituted command in the prompt, useful when running last command with 'sudo !!' before you make a blunder
setopt HIST_VERIFY
# Remove command lines from the history list when the first character on the line is a space,
setopt HIST_IGNORE_SPACE

#===================================
# Auto-correction and Tab Completion
#===================================
setopt CORRECT
setopt CORRECT_ALL

#==============
# Miscellaneous
#==============
# allowing comments in interactive shells (useful when pasting commands)
setopt INTERACTIVE_COMMENTS

# bind Ctrl-U to kill till beginning of line (like it works in bash)
bindkey \^U backward-kill-line

#===================================
# Any custom additions go at the end
#===================================
if [ -f ~/.zshrc_additions ]; then
    . ~/.zshrc_additions
fi
