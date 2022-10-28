--[[
    file:  plugins.lua
    action: neovim 的Packer插件管理.

    插件地址：
    1： https://neovimcraft.com/
    2： https://github.com/rockerBOO/awesome-neovim
]]--

local packer = require("packer")
packer.startup({

  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 你的插件列表...

    ---------- 皮肤 ----------
    use('folke/tokyonight.nvim')
    use('sainnhe/sonokai')
    use('gruvbox-community/gruvbox')
    --[[
      现代化皮肤地址：
      https://github.com/nvim-treesitter/nvim-treesitter/wiki/Colorschemes
    ]]--

    ---------- 侧边栏 ----------
    use({'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' })
    ---------- buffer （标签页）----------
    use({'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' })
    ----------- lualine （底部信息栏）----------
    use({ 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons'} })
    use('arkav/lualine-lsp-progress')
    ---------- treesitter （代码高亮）----------
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    ---------- coc服务 代码补全 -----------
    use('neoclide/coc.nvim', {branch = 'release'})

  end,

  config = {
    -- 并发数限制
    max_jobs = 16,

    -- 浮动窗口打开安装列表
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },

    -- 自定义源
    git = {
      default_url_format = "https://hub.fastgit.xyz/%s",
      default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      default_url_format = "https://gitcode.net/mirrors/%s",
      default_url_format = "https://gitclone.com/github.com/%s",
    },
  },
})
