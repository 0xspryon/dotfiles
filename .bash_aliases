# --------------- Aliases  --------------- #
alias gu-log="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"
alias gu-last="git log -1 HEAD"

alias yoao="/opt/session/session-desktop-linux.AppImage"
alias YOAO="yoao"
alias shn="shutdown now"
alias installd="find . -maxdepth 1 -name '*.deb' | fzf | xargs -I {} -n 1 sh -c 'sudo DEBIAN_FRONTEND=noninteractive apt install -y ./{} && rm {}'"
alias instally="find . -name '*.AppImage' | fzf | xargs -I {} -n 1 sh -c 'chmod +x {} && sudo mv {} /opt/session/session-desktop-linux.AppImage'"
alias winbox="/opt/WinBox_Linux/WinBox"
alias WINBOX="winbox"
alias wth="curl wttr.in/yaounde"
alias vim="nvim"
alias zero="sudo zerotier-cli"

# Changing "ls" to "eza"
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

# changing cat to bat
alias cat="bat --color=always"
# navigating backwards
alias b='z ..'
alias bb='z ../..'
alias bbb='z ../../..'
alias b-='z -'

# adding flags
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# sourcing bashrc file
alias sbr='source ~/.bashrc'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status' # 'status' is protected name so using 'stat' instead
alias g_undo='git reset --soft HEAD~1'
alias g_undo_s_2='git reset --soft HEAD~2'
alias g_undo_s_3='git reset --soft HEAD~3'
alias g_undo_s_4='git reset --soft HEAD~4'
alias g_undo_s_5='git reset --soft HEAD~5'
alias g_undo_h='git reset --hard HEAD~1'
alias g_undo_h_2='git reset --hard HEAD~2'
alias g_undo_h_3='git reset --hard HEAD~3'
alias g_undo_h_4='git reset --hard HEAD~4'
alias g_undo_h_5='git reset --hard HEAD~5'

# nvim
alias vim="nvim"
alias nc='z ~/.config/nvim/ && nvim ~/.config/nvim/'
alias ncc='nvim ~/.config/vscode.nvim/'
alias nca='nvim ~/.bash_aliases'
alias ncb='nvim ~/.bashrc'
# custom made configurations for the nvim instance of vscode
alias vscode-nvim='NVIM_APPNAME="vscode.nvim" nvim'
