if [[ ! -o interactive ]]; then
    return
fi

compctl -K _git-local-checkout git-local-checkout

_git-local-checkout() {
  local words completions
  read -cA words
  
  completions="$(git branch | tr -d " " | tr -d \*)"  
  reply=(${(ps:\n:)completions})
}
