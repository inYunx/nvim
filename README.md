# NeoVim

## 如何使用

1. 安装 `Neovim` 。
- **Unbuntu**
  
  - ```bash
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```

- **Arch**
  
  - ```bash
    sudo pacman -S neovim
    ```

- **配置**
  
  - 你可以到修改命令以至于快速打开 `neovim`
  
  - ```bash
    # nvim ~/.bashrc
    
    alias vim='nvim'
    alias vi='nvim'
    alias v='nvim'
    
    # source ~/.bashrc
    ```
2. 将项目 `clone`  到 `~/.config/nvim` 目录中。

```bash
cd ~/.config
git clone https://github.com/3cr7pt/nvim
```
*克隆出现证书问题：* `git config --global http.sslVerify false`

3. 安装 `Packer` 插件管理。

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

> 🍔 使用 `Packer` 安装的插件目录在： `~/.local/share/nvim/site/pack/packer/start`

4. 安装：`base-devel`
   
   - **Unbuntu：** `sudo apt install build-essential`
   
   - **Arch：** `sudo pacman -S base-devel`

## 目录详情

```

```