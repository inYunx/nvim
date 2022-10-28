--[[
    file:  
    action:
]]--

-- 基础设置
require('basic')
require('keybindings')

-- Packer 插件管理
require('plugins')

-- 主题设置
require('colorscheme')


--------- [[ 插件配置 ]]  ----------

-- nvim-tree 文件浏览夹
require('plugin-config.nvim-tree')
-- bufferline tag 标签插件
require('plugin-config.bufferline')
-- lualine 底部信息栏插件
require('plugin-config.lualine')
-- treesitter 代码高亮插件
require('plugin-config.nvim-treesitter')