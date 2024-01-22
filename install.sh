#!/bin/bash

# Kiểm tra hệ điều hành
if [[ "$(uname)" == "Darwin" ]]; then
    # Cài đặt Homebrew nếu chưa có
    which -s brew
    if [[ $? != 0 ]] ; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    # Cài đặt hoặc cập nhật neovim qua Homebrew
    brew install neovim || brew upgrade neovim
elif [[ "$(uname -a)" == *"Ubuntu"* ]]; then
    # Cập nhật hệ thống
    sudo apt-get update

    # Cài đặt hoặc cập nhật neovim
    sudo apt-get install -y neovim
    sudo apt-get upgrade -y neovim
else
    echo "Unsupported OS"
    exit 1
fi

# Tạo thư mục cấu hình cho neovim
mkdir -p ~/.config/nvim

# Sao chép các tệp cấu hình Lua từ thư mục hiện tại vào thư mục cấu hình của neovim
cp . ~/.config/nvim/