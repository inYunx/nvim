--[[
    file:  keybindings.lua
    action: neovim 的快捷键设置
]]--

-- 设置 'leader key'
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }


---------- 窗口管理快捷键 ----------
-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)


---------- 调节窗口比例快捷键 ----------
-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)


--- bufferline 插件 ---
-- 左右Tab切换 ctrl+h ctrl+l 左，右

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye" ctrl+w 关闭
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt) -- ctrl + l 关左
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt) -- ctrl + h 关右
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt) -- ctrl + c 选择关闭

---------- 插件快捷键 ----------
local pluginKeys = {}

--- nvim-tree 插件 --- 
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" }, -- 刷新
  { key = "a", action = "create" }, -- 创建文件
  { key = "d", action = "remove" }, -- 删除文件
  { key = "r", action = "rename" }, -- 重命名文件
  { key = "x", action = "cut" }, -- 剪切
  { key = "c", action = "copy" }, -- 复制
  { key = "p", action = "paste" }, -- 粘贴
  { key = "s", action = "system_open" },
}
return pluginKeys