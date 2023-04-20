# Neovim

This config requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases). Please [upgrade](#upgrade-to-neovim-v080) if you're on an earlier version of the editor.

Clone the repository into the correct location (make a backup your current `nvim` directory if you want to keep it).

```
git clone https://github.com/GiangHoang9912/dot-config.git ~/.config/nvim
```
## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```
  
- Wayland users

  [wl-clipboard](https://github.com/bugaevc/wl-clipboard)


Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

### Upgrade to Neovim v0.8.0

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
git checkout v0.8.0
sudo make install
nvim -v
```

