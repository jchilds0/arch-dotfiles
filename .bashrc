#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# neofetch

export PATH="$PATH:/home/josh/Documents/Honours-Research-Project/development/SnapPy/venv/bin/"
export LUA_PATH="/home/josh/.config/nvim/lua/custom/picker.lua;;"

alias config='/usr/bin/git --git-dir=/home/josh/.cfg/ --work-tree=/home/josh'

# file servers
alias onedrive-desktop='rclone sync --progress Documents/ onedrive:Desktop/ '
alias onedrive-pictures='rclone sync --progress /media/photos/3.\ Collections/ onedrive:Pictures/'

alias seafile-desktop='rclone sync --progress Documents/ seafile:Documents/ '
alias seafile-pictures='rclone sync --progress /media/photos/ seafile:Photography/'

# ruby
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"

# haskell
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# go 
export PATH="$HOME/go/bin:$PATH"

# openjfx
export PATH_TO_FX="$HOME/Downloads/openjfx/javafx-sdk-22.0.2/lib/"

# maven
export PATH="$PATH:$HOME/Downloads/apache-maven-3.9.8/bin/"

# fzf 
eval "$(fzf --bash)"

# bambulab
alias bambu-studio-mesa='__GLX_VENDOR_LIBRARY_NAME=mesa __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json bambu-studio'
