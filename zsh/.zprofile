# Homebrew and Homebrew-bottles
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
eval "$(/opt/homebrew/bin/brew shellenv)"
# alias brew='arch -arm64 /opt/homebrew/bin/brew'
alias brewx='arch -x86_64 /usr/local/Homebrew/bin/brew'

# The scripts isort, isort-identify-imports, epylint, pylint, pyreverse and symilar
export PATH=$PATH:/Users/zhang/Library/Python/3.9/bin

# Go
export PATH=$PATH:/Users/zhang/.go/bin

# Disable Homebrew automatic update
export HOMEBREW_NO_AUTO_UPDATE=1

# Disable and enable hot corners
alias dhc-bl='defaults write com.apple.dock wvous-bl-corner -int 0; killall Dock'
alias dhc-br='defaults write com.apple.dock wvous-br-corner -int 0; killall Dock'
alias dhc-tl='defaults write com.apple.dock wvous-tl-corner -int 0; killall Dock'
alias dhc-tr='defaults write com.apple.dock wvous-tr-corner -int 0; killall Dock'
alias dhc='dhc-bl && dhc-br && dhc-tl && dhc-tr'
alias ehc-bl='defaults write com.apple.dock wvous-bl-corner -int 5; killall Dock'
alias ehc-br='defaults write com.apple.dock wvous-br-corner -int 4; killall Dock'
alias ehc-tl='defaults write com.apple.dock wvous-tl-corner -int 11; killall Dock'
alias ehc-tr='defaults write com.apple.dock wvous-tr-corner -int 2; killall Dock'
alias ehc='ehc-bl && ehc-br && ehc-tl && ehc-tr'

# Git email
alias gito='git config --global user.email zhangregister@outlook.com'
alias gitd='git config --global user.email zhanpeng.zhang@daocloud.io'
alias gitb='git config --global user.email zhangzhanpeng.kofclubs@bytedance.com'

# My Alibaba Cloud Elastic Compute Service
alias sshr='ssh zhang-remotehost-0'

# Proxy command
alias pc4='proxychains4'
alias proxy='export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'

# Restore tilesize
alias rts='defaults write com.apple.dock tilesize -int 64; killall Dock'

# Restore launch pad layout
alias rlpl='defaults write com.apple.dock ResetLaunchPad -bool TRUE; killall Dock'

# All-in-one Homebrew/brew update
alias bu='brew update && brewx update && brew upgrade && brewx upgrade && brew cleanup && brewx cleanup && rlpl && rts'
