vim.opt.guicursor = 'a:blinkon6'
vim.o.sw = 2
vim.o.ts = 2
vim.o.et = true
vim.o.wrap = false
vim.opt.list = true
vim.opt.listchars = { lead = '.', trail = '.', tab = '  -' }
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.mouse = 'a'

local function toggle_qf()
  local win_id = vim.fn.getqflist({ winid = 0 }).winid
  if win_id ~= nil and win_id ~= 0 then
    vim.cmd 'ccl'
  else
    vim.cmd 'copen'
    vim.cmd 'wincmd p'
  end
end

local options = { noremap = true, silent = true }
vim.keymap.set(
  'n',
  '<C-n>',
  '<cmd>cnext<CR>zz<cmd>lua print("qflist: next")<CR>'
)
vim.keymap.set(
  'n',
  '<C-p>',
  '<cmd>cprev<CR>zz<cmd>lua print("qflist: prev")<CR>'
)
vim.keymap.set(
  'n',
  ';E',
  '<cmd>call setqflist([], "r")<CR><cmd>ccl<CR><cmd>lua print("qflist: clear")<CR>'
)
vim.keymap.set(
  'n',
  ';e',
  toggle_qf
)

vim.keymap.set(
  'i',
  '<C-c>',
  '<Esc>',
  options
)
vim.keymap.set(
  'n',
  '<leader><leader>',
  '<cmd>so<cr>',
  options
)
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set(
  'v',
  '<',
  '<gv',
  options
)
vim.keymap.set(
  'v',
  '>',
  '>gv',
  options
)
vim.keymap.set(
  'n',
  '<A-z>',
  ':set wrap!<Return>',
  options
)
vim.keymap.set('n', '<leader>t', ':tabnew<Return>', options)
vim.keymap.set('n', '>', ':tabnext<Return>', options)
vim.keymap.set('n', '<', ':tabprev<Return>', options)
vim.keymap.set('n', '<leader>Y', 'ggVG"+y', options)
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], options)
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], options)
vim.keymap.set('x', '<leader>p', [["_dP]], options)

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp = vim.opt.rtp ^ lazypath

require('lazy').setup {
  root = vim.fn.stdpath("data") .. "/my-theme/lazy",
  spec = {
    {
      'stevearc/oil.nvim',
      lazy = false,
      keys = {
        { '<leader>e', '<cmd>Oil<cr>' },
      },
      opts = {
        default_file_explorer = true,
        view_options = {
          show_hidden = true,
        },
      },
    },
    {
      'echasnovski/mini.statusline',
      main = 'mini.statusline',
      lazy = false,
      opts = {},
    },
    {
      'echasnovski/mini.pick',
      main = 'mini.pick',
      cmd = 'Pick',
      keys = {
        { ';f', '<cmd>Pick files<cr>', desc = 'files' },
        { ';r', '<cmd>Pick grep_live<cr>', desc = 'grep' },
        { '\\\\', '<cmd>Pick buffers<cr>', desc = 'search buffers' },
      },
      opts = {
        delay = {
          async = 10,
          busy = 50,
        },
        mappings = {
          toggle_preview = '<Tab>',
          choose_all = {
            char = '<C-l>',
            func = function()
              local mappings = pick.get_picker_opts().mappings
              vim.api.nvim_input(mappings.mark_all .. mappings.choose_marked)
            end,
          },
        },
        options = {
          content_from_bottom = false,
          use_cache = true,
        },
      },
    },
    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = {},
    },
    {
      'echasnovski/mini.hipatterns',
      main = 'mini.hipatterns',
      event = { 'BufReadPost' },
      config = function()
        local hipatterns = require('mini.hipatterns')
        hipatterns.setup({
          highlighters = {
            fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
            hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
            todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
            note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
            hex_color = hipatterns.gen_highlighter.hex_color(),
          },
        })
      end,
    },
    {
      'saghen/blink.cmp',
      event = 'InsertEnter',
      version = '*',
      opts = {
        keymap = {
          ['<CR>'] = { 'accept', 'fallback' },
          ['<C-e>'] = { 'hide', 'fallback' },
          ['<Tab>'] = { 'select_next', 'fallback' },
          ['<S-Tab>'] = { 'select_prev' },
        },
        sources = {
          cmdline = {},
        },
      },
    },
    {
      'wakatime/vim-wakatime',
      event = 'BufReadPost',
    },
  },
  defaults = {
    lazy = true,
  },
  install = {
    missing = false,
  },
  change_detection = { notify = false },
  rocks = {
    enabled = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'netrwPlugin',
        'netrw',
        'matchit',
        'matchparen',
        'vimball',
        'vimballPlugin',
        'rplugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
}

local theme = require("my-theme/init")

theme.setup({
	theme = "dark",
	transparent = true,
	italics = {
		comments = false,
		keywords = true,
		functions = true,
		strings = false,
		variables = true,
	},
})

theme.colorscheme()
