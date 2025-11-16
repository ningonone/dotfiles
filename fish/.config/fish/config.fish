# ============================
# Fish 配置文件 ~/.config/fish/config.fish
# ============================

# ---- 环境变量 ----
set -gx EDITOR nvim
set -gx VISUAL nvim

# PATH：把 ~/.local/bin 和 ~/bin 放前面
if test -d $HOME/.local/bin
    fish_add_path $HOME/.local/bin
end

if test -d $HOME/bin
    fish_add_path $HOME/bin
end


# 基本 ls
alias l="ls"

# 查看完整信息（长格式 + 全部文件，包括隐藏）
alias ll="ls -la"

# 长格式 + 人类可读大小（如 1.2K / 3.4M）
alias LL="ls -lah"


# ---- 普通常用短 alias ----

alias g="git"
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gl="git pull"
alias gp="git push"

# 更快的目录导航（如果安装了 zoxide）
if type -q zoxide
    zoxide init fish | source
end

# ---- fzf + fd（如果你装了它们）----
if type -q fzf
    set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
end

# ---- Starship prompt（如果你使用 starship） ----
if type -q starship
    starship init fish | source
end

