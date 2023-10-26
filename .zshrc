# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export GITLAB_HOME="$HOME/gitlab"
# Path to your oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"

# --[ plugins ] --------------------------------

plugins=(git
	 zsh-autosuggestions
	 python
	 macos
	 systemadmin
	 jsontools
	 colorize
     aliases)

# --[ theme powerlevel10k ]---------------------
ZSH_THEME="powerlevel10k/powerlevel10k"
# --[ colorize ]--------------------------------
ZSH_COLORIZE_TOOL=pygmentize
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256


source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/Users/maekro26/.bun/_bun" ] && source "/Users/maekro26/.bun/_bun"

# --[ environment ]------------------------------
#
# --[ aliases ]----------------------------------
alias kssh="kitty +kitten ssh"
alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"
alias ll="exa --long --header --all"

# --[ vim on terminal ]--------------------------
set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
