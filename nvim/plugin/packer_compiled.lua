-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tiny/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tiny/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tiny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tiny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tiny/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["crates.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["defx-git"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/defx-git",
    url = "https://github.com/kristijanhusak/defx-git"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://github.com/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://github.com/Shougo/defx.nvim"
  },
  everforest = {
    config = { "\27LJ\2\n�\1\0\0\4\0\t\0\0196\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\0016\1\0\0009\1\3\1'\2\5\0=\2\4\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1\18\1\0\0'\3\b\0B\1\2\1K\0\1\0\22set termguicolors\27colorscheme everforest\24set background=dark\tsoft\26everforest_background\6g\14syntax on\bcmd\bvim\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5����\4(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-format�\4\1\0\b\0\25\00086\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0>\1\1\6=\6\18\0054\6\3\0>\1\1\6=\6\19\0054\6\3\0>\1\1\6=\6\20\0054\6\3\0>\1\1\6=\6\21\0054\6\3\0003\a\22\0>\a\1\6=\6\23\5=\5\24\4B\2\2\1K\0\1\0\rfiletype\blua\0\rmarkdown\tyaml\tscss\tjson\bvue\bcss\vsvelte\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.mjs,*.ts,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss,*.html,*.vue,*.svelte FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["fzf-lua"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0�\v\1\0\a\0,\00076\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\16\0045\5\17\0=\5\18\4=\4\19\0033\4\20\0=\4\21\3=\3\18\0025\3\23\0005\4\22\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0005\5#\0005\6\"\0=\6$\0055\6%\0=\6&\5=\5'\4=\4(\3=\3)\0025\3*\0=\3+\2B\0\2\1K\0\1\0\rquickfix\1\0\2\14git_icons\2\15file_icons\2\15previewers\fbuiltin\15extensions\bjpg\1\2\0\0\rueberzug\bpng\1\0\0\1\3\0\0\bviu\a-b\1\0\5\vsyntax\2\19syntax_limit_b\3��@\19syntax_limit_l\3\0\flimit_b\3���\5\20ueberzug_scaler\ncover\bman\1\0\1\bcmd\24man -c %s | col -bx\rgit_diff\1\0\3\18cmd_untracked*git diff --color --no-index /dev/null\16cmd_deleted\29git diff --color HEAD --\17cmd_modified\26git diff --color HEAD\thead\1\0\1\bcmd\thead\bbat\1\0\3\targs+--style=numbers,changes --color always\ntheme\17Coldark-Dark\bcmd\bbat\bcat\1\0\0\1\0\2\targs\r--number\bcmd\bcat\14on_create\0\fpreview\fwinopts\1\0\t\15foldmethod\vmanual\17cursorcolumn\1\19relativenumber\1\15signcolumn\ano\vnumber\2\tlist\1\18cursorlineopt\tboth\15foldenable\1\15cursorline\2\16scrollchars\1\3\0\0\b█\5\1\0\v\vborder\vborder\14scrollbar\nfloat\17flip_columns\3x\vlayout\rvertical\twrap\vnowrap\15horizontal\14right:60%\ndelay\3d\rvertical\rdown:45%\14scrolloff\a-2\ntitle\2\vhidden\rnohidden\ahl\1\0\5\vnormal\vNormal\vsearch\vSearch\vborder\vNormal\vcursor\vCursor\15cursorline\15CursorLine\vborder\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\1\0\5\brow\4�̙�\6����\3\15fullscreen\1\bcol\4\0����\3\vheight\4��̙\3���\3\nwidth\4����\t����\3\1\0\2\24global_resume_query\2\18global_resume\2\nsetup\ffzf-lua\frequire2nnoremap <Leader>s <cmd>FzfLua git_status<CR>1nnoremap <Leader>l <cmd>FzfLua live_grep<CR>-nnoremap <Leader>p <cmd>FzfLua files<CR>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["html5.vim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/html5.vim",
    url = "https://github.com/othree/html5.vim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\2B\0\2\1K\0\1\0\foptions\1\0\0\23disabled_filetypes\1\2\0\0\tdefx\25component_separators\1\0\2\nright\5\tleft\5\23section_separators\1\0\2\nright\5\tleft\5\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim}\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\1�\tname\vsource\1\0\3\14ultisnips\14[Snippet]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\tmenu\tkind�\b\1\0\t\0\29\0.6\0\0\0'\2\1\0B\0\2\0025\1\2\0009\2\3\0005\4\n\0004\5\a\0005\6\4\0>\6\1\0055\6\5\0>\6\2\0055\6\6\0>\6\3\0055\6\a\0>\6\4\0055\6\b\0>\6\5\0055\6\t\0>\6\6\5=\5\v\0045\5\r\0003\6\f\0=\6\14\5=\5\15\0045\5\19\0009\6\16\0009\6\17\0065\b\18\0B\6\2\2=\6\20\0059\6\16\0009\6\21\6B\6\1\2=\6\22\0059\6\16\0009\6\23\6B\6\1\2=\6\24\5=\5\16\0045\5\26\0003\6\25\0=\6\27\5=\5\28\4B\2\2\0012\0\0�K\0\1\0\15formatting\vformat\1\0\0\0\n<tab>\21select_next_item\f<s-tab>\21select_prev_item\t<cr>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\14ultisnips\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\nsetup\1\0\24\rVariable\21[] (Variable)\14Reference\22   (Reference)\nField\18 ﴲ  (Field)\vFolder\19   (Folder)\16Constructor\24   (Constructor)\15EnumMember\23   (EnumMember)\rFunction\21   (Function)\rConstant\21 ﲀ  (Constant)\vMethod\19   (Method)\vStruct\19 ﳤ  (Struct)\tText\18   (Text) \nEvent\18   (Event)\tFile\17   (File)\rOperator\21   (Operator)\nColor\18   (Color)\18TypeParameter\26   (TypeParameter)\fKeyword\20   (Keyword)\tEnum\16 練 (Enum)\nValue\18   (Value)\tUnit\17   (Unit)\rProperty\20 襁 (Property)\vModule\19   (Module)\14Interface\22 ﰮ  (Interface)\nClass\18   (Class)\bcmp\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\vcss_fn\2\bcss\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\4\0\1\5\0\6\0\v9\1\0\0009\1\1\1\15\0\1\0X\2\6�6\1\2\0009\1\3\0019\1\4\1'\3\5\0+\4\1\0B\1\3\1K\0\1\0�\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities�\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle()Annoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>Annoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>Bnnoremap <silent> gD <cmd>lua vim.diagnostic.open_float()<CR>@nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>=nnoremap <silent> gi <cmd>FzfLua lsp_implementations<CR>8nnoremap <silent> gr <cmd>FzfLua lsp_references<CR>9nnoremap <silent> D <cmd>lua vim.lsp.buf.hover()<CR>Cnnoremap <silent> gh <cmd>lua vim.lsp.buf.signature_help()<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim#\0\1\4\2\0\0\6-\1\0\0\18\3\0\0B\1\2\1-\1\1\0B\1\1\1K\0\1\0\5�\6��\14\1\0\18\0R\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0025\3\5\0005\4\6\0006\5\3\0009\5\a\0059\5\b\5'\a\t\0005\b\n\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\v\0005\b\f\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\r\0005\b\14\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\15\0005\b\16\0B\5\3\0019\5\17\0029\6\19\0029\b\17\0029\b\20\b\18\t\4\0B\6\3\2=\6\18\0059\5\17\0029\6\19\0029\b\17\0029\b\22\b\18\t\4\0B\6\3\2=\6\21\0059\5\17\0029\6\19\0026\b\3\0009\b\4\b9\b\24\b9\b\25\b5\t\26\0B\6\3\2=\6\23\0053\5\27\0003\6\28\0003\a\29\0005\b!\0005\t\31\0005\n\30\0=\n \t=\t\"\b5\t$\0005\n#\0=\n \t=\t%\b5\t'\0005\n&\0=\n \t=\t(\b5\t*\0005\n)\0=\n \t=\t+\b4\t\0\0=\t,\b4\t\0\0=\t-\b4\t\0\0=\t.\b4\t\0\0=\t/\b5\t0\0=\a1\t9\n2\0019\n3\n'\f4\0B\n\2\2=\n5\t5\n6\0=\n7\t=\t8\b6\t9\0\18\v\b\0B\t\2\4H\f\25�6\14:\0\18\16\r\0B\14\2\2\a\14;\0X\14\3�\18\14\r\0B\14\1\2\18\r\14\0=\a1\r6\14\3\0009\14\4\0149\14<\0149\14=\14B\14\1\0026\15\0\0'\17?\0B\15\2\0029\15@\15\18\17\14\0B\15\2\2=\15>\r8\15\f\0019\15A\15\18\17\r\0B\15\2\1F\f\3\3R\f�6\t\3\0009\t\4\t9\t<\t9\t=\tB\t\1\0025\nG\0005\vB\0005\fC\0=\fD\v5\fE\0=\fF\v=\vH\n5\vI\0=\a1\v6\f\0\0'\14?\0B\f\2\0029\f@\f\18\14\t\0B\f\2\2=\f>\v5\fM\0005\rK\0005\14J\0=\14L\r=\rN\f=\fO\v=\vP\n6\v\0\0'\rQ\0B\v\2\0029\vA\v\18\r\n\0B\v\2\0012\0\0�K\0\1\0\15rust-tools\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\0\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\b <-\25show_parameter_hints\1\23other_hints_prefix\b» \14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\24update_capabilities\17cmp_nvim_lsp\17capabilities\29make_client_capabilities\rprotocol\rfunction\ttype\npairs\vdenols\17init_options\1\0\1\tlint\2\rroot_dir\14deno.json\17root_pattern\tutil\14on_attach\1\0\0\vsvelte\nvimls\nvuels\rtsserver\vjsonls\1\0\0\1\3\0\0\31vscode-json-languageserver\f--stdio\16sumneko_lua\1\0\0\1\3\0\0\24lua-language-server\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic$textDocument/publishDiagnostics\nhover\23textDocument/hover\19signature_help\twith\31textDocument/signatureHelp\rhandlers\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\b\vtexthl\23DiagnosticSignInfo\30DiagnosticSignInformation\1\0\2\ttext\6!\vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\b✗\vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\1\0\3\nscope\tline\14focusable\1\vborder\frounded\1\0\2\fnoremap\2\vsilent\2\blsp\bvim\14lspconfig\21vim.lsp.protocol\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-transparent"] = {
    config = { "\27LJ\2\nm\0\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\0\1\venable\2\nsetup\16transparent\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ticon\b\ncolor\f#5c6370\bmp4\1\0\3\tname\bmp4\ticon\b\ncolor\f#5c6370\bmp3\1\0\3\tname\bmp3\ticon\b\ncolor\f#566370\btxt\1\0\3\tname\ttext\ticon\b\ncolor\f#61afef\bmap\1\0\3\tname\btxt\ticon\b\ncolor\f#566370\taxml\1\0\3\tname\taxml\ticon\b\ncolor\f#f76c7c\ttxml\1\0\3\tname\ttxml\ticon\b\ncolor\f#f76c7c\bxml\1\0\3\tname\bxml\ticon\b\ncolor\f#f76c7c\tacss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\ttcss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\bcss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\thtml\1\0\0\1\0\3\tname\thtml\ticon\b\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["smart-splits.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\14\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0006\4\5\0'\6\6\0B\4\2\0029\4\t\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0006\4\5\0'\6\6\0B\4\2\0029\4\v\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\5\0'\6\6\0B\4\2\0029\4\r\4B\0\4\1K\0\1\0\17resize_right\n<S-l>\14resize_up\n<S-k>\16resize_down\n<S-j>\16resize_left\17smart-splits\frequire\n<S-h>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-o>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-svelte"] = {
    config = { "\27LJ\2\nA\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15typescript\25svelte_preprocessors\6g\bvim\0" },
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vim-vue",
    url = "https://github.com/posva/vim-vue"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/tiny/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\vcss_fn\2\bcss\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\5����\4(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\15lua-format�\4\1\0\b\0\25\00086\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0+\5\2\0B\2\3\0019\2\a\0005\4\b\0005\5\t\0004\6\3\0>\1\1\6=\6\n\0054\6\3\0>\1\1\6=\6\v\0054\6\3\0>\1\1\6=\6\f\0054\6\3\0>\1\1\6=\6\r\0054\6\3\0>\1\1\6=\6\14\0054\6\3\0>\1\1\6=\6\15\0054\6\3\0>\1\1\6=\6\16\0054\6\3\0>\1\1\6=\6\17\0054\6\3\0>\1\1\6=\6\18\0054\6\3\0>\1\1\6=\6\19\0054\6\3\0>\1\1\6=\6\20\0054\6\3\0>\1\1\6=\6\21\0054\6\3\0003\a\22\0>\a\1\6=\6\23\5=\5\24\4B\2\2\1K\0\1\0\rfiletype\blua\0\rmarkdown\tyaml\tscss\tjson\bvue\bcss\vsvelte\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.js,*.mjs,*.ts,*.lua,*.jsx,*.tsx,*.md,*.mdx,*.yml,*.json,*.css,*.scss,*.html,*.vue,*.svelte FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: fzf-lua
time([[Config for fzf-lua]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0�\v\1\0\a\0,\00076\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0005\3\t\0005\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\16\0045\5\17\0=\5\18\4=\4\19\0033\4\20\0=\4\21\3=\3\18\0025\3\23\0005\4\22\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0005\5#\0005\6\"\0=\6$\0055\6%\0=\6&\5=\5'\4=\4(\3=\3)\0025\3*\0=\3+\2B\0\2\1K\0\1\0\rquickfix\1\0\2\14git_icons\2\15file_icons\2\15previewers\fbuiltin\15extensions\bjpg\1\2\0\0\rueberzug\bpng\1\0\0\1\3\0\0\bviu\a-b\1\0\5\vsyntax\2\19syntax_limit_b\3��@\19syntax_limit_l\3\0\flimit_b\3���\5\20ueberzug_scaler\ncover\bman\1\0\1\bcmd\24man -c %s | col -bx\rgit_diff\1\0\3\18cmd_untracked*git diff --color --no-index /dev/null\16cmd_deleted\29git diff --color HEAD --\17cmd_modified\26git diff --color HEAD\thead\1\0\1\bcmd\thead\bbat\1\0\3\targs+--style=numbers,changes --color always\ntheme\17Coldark-Dark\bcmd\bbat\bcat\1\0\0\1\0\2\targs\r--number\bcmd\bcat\14on_create\0\fpreview\fwinopts\1\0\t\15foldmethod\vmanual\17cursorcolumn\1\19relativenumber\1\15signcolumn\ano\vnumber\2\tlist\1\18cursorlineopt\tboth\15foldenable\1\15cursorline\2\16scrollchars\1\3\0\0\b█\5\1\0\v\vborder\vborder\14scrollbar\nfloat\17flip_columns\3x\vlayout\rvertical\twrap\vnowrap\15horizontal\14right:60%\ndelay\3d\rvertical\rdown:45%\14scrolloff\a-2\ntitle\2\vhidden\rnohidden\ahl\1\0\5\vnormal\vNormal\vsearch\vSearch\vborder\vNormal\vcursor\vCursor\15cursorline\15CursorLine\vborder\1\t\0\0\b╭\b─\b╮\b│\b╯\b─\b╰\b│\1\0\5\brow\4�̙�\6����\3\15fullscreen\1\bcol\4\0����\3\vheight\4��̙\3���\3\nwidth\4����\t����\3\1\0\2\24global_resume_query\2\18global_resume\2\nsetup\ffzf-lua\frequire2nnoremap <Leader>s <cmd>FzfLua git_status<CR>1nnoremap <Leader>l <cmd>FzfLua live_grep<CR>-nnoremap <Leader>p <cmd>FzfLua files<CR>\bcmd\bvim\0", "config", "fzf-lua")
time([[Config for fzf-lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\4\0\1\5\0\6\0\v9\1\0\0009\1\1\1\15\0\1\0X\2\6�6\1\2\0009\1\3\0019\1\4\1'\3\5\0+\4\1\0B\1\3\1K\0\1\0�\3          hi LspReferenceRead cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceText cterm=bold ctermbg=red guibg=#34495e\n          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#34495e\n          augroup lsp_document_highlight\n            autocmd! * <buffer>\n            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n          augroup END\n        \14nvim_exec\bapi\bvim\23document_highlight\26resolved_capabilities�\6\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0Tcommand! -nargs=0 LspVirtualTextToggle lua require(\"lsp/virtual_text\").toggle()Annoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>Annoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>Bnnoremap <silent> gD <cmd>lua vim.diagnostic.open_float()<CR>@nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>=nnoremap <silent> gi <cmd>FzfLua lsp_implementations<CR>8nnoremap <silent> gr <cmd>FzfLua lsp_references<CR>9nnoremap <silent> D <cmd>lua vim.lsp.buf.hover()<CR>Cnnoremap <silent> gh <cmd>lua vim.lsp.buf.signature_help()<CR>;nnoremap <silent> rn <cmd>lua vim.lsp.buf.rename()<CR>?nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>\bcmd\bvim#\0\1\4\2\0\0\6-\1\0\0\18\3\0\0B\1\2\1-\1\1\0B\1\1\1K\0\1\0\5�\6��\14\1\0\18\0R\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0025\3\5\0005\4\6\0006\5\3\0009\5\a\0059\5\b\5'\a\t\0005\b\n\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\v\0005\b\f\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\r\0005\b\14\0B\5\3\0016\5\3\0009\5\a\0059\5\b\5'\a\15\0005\b\16\0B\5\3\0019\5\17\0029\6\19\0029\b\17\0029\b\20\b\18\t\4\0B\6\3\2=\6\18\0059\5\17\0029\6\19\0029\b\17\0029\b\22\b\18\t\4\0B\6\3\2=\6\21\0059\5\17\0029\6\19\0026\b\3\0009\b\4\b9\b\24\b9\b\25\b5\t\26\0B\6\3\2=\6\23\0053\5\27\0003\6\28\0003\a\29\0005\b!\0005\t\31\0005\n\30\0=\n \t=\t\"\b5\t$\0005\n#\0=\n \t=\t%\b5\t'\0005\n&\0=\n \t=\t(\b5\t*\0005\n)\0=\n \t=\t+\b4\t\0\0=\t,\b4\t\0\0=\t-\b4\t\0\0=\t.\b4\t\0\0=\t/\b5\t0\0=\a1\t9\n2\0019\n3\n'\f4\0B\n\2\2=\n5\t5\n6\0=\n7\t=\t8\b6\t9\0\18\v\b\0B\t\2\4H\f\25�6\14:\0\18\16\r\0B\14\2\2\a\14;\0X\14\3�\18\14\r\0B\14\1\2\18\r\14\0=\a1\r6\14\3\0009\14\4\0149\14<\0149\14=\14B\14\1\0026\15\0\0'\17?\0B\15\2\0029\15@\15\18\17\14\0B\15\2\2=\15>\r8\15\f\0019\15A\15\18\17\r\0B\15\2\1F\f\3\3R\f�6\t\3\0009\t\4\t9\t<\t9\t=\tB\t\1\0025\nG\0005\vB\0005\fC\0=\fD\v5\fE\0=\fF\v=\vH\n5\vI\0=\a1\v6\f\0\0'\14?\0B\f\2\0029\f@\f\18\14\t\0B\f\2\2=\f>\v5\fM\0005\rK\0005\14J\0=\14L\r=\rN\f=\fO\v=\vP\n6\v\0\0'\rQ\0B\v\2\0029\vA\v\18\r\n\0B\v\2\0012\0\0�K\0\1\0\15rust-tools\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\0\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\b <-\25show_parameter_hints\1\23other_hints_prefix\b» \14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\24update_capabilities\17cmp_nvim_lsp\17capabilities\29make_client_capabilities\rprotocol\rfunction\ttype\npairs\vdenols\17init_options\1\0\1\tlint\2\rroot_dir\14deno.json\17root_pattern\tutil\14on_attach\1\0\0\vsvelte\nvimls\nvuels\rtsserver\vjsonls\1\0\0\1\3\0\0\31vscode-json-languageserver\f--stdio\16sumneko_lua\1\0\0\1\3\0\0\24lua-language-server\f--stdio\thtml\1\0\0\1\3\0\0\24html-languageserver\f--stdio\ncssls\1\0\0\bcmd\1\0\0\1\3\0\0\23css-languageserver\f--stdio\0\0\0\1\0\4\21update_in_insert\1\nsigns\2\17virtual_text\1\14underline\2\27on_publish_diagnostics\15diagnostic$textDocument/publishDiagnostics\nhover\23textDocument/hover\19signature_help\twith\31textDocument/signatureHelp\rhandlers\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\b\vtexthl\23DiagnosticSignInfo\30DiagnosticSignInformation\1\0\2\ttext\6!\vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\b✗\vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\1\0\3\nscope\tline\14focusable\1\vborder\frounded\1\0\2\fnoremap\2\vsilent\2\blsp\bvim\14lspconfig\21vim.lsp.protocol\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-svelte
time([[Config for vim-svelte]], true)
try_loadstring("\27LJ\2\nA\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15typescript\25svelte_preprocessors\6g\bvim\0", "config", "vim-svelte")
time([[Config for vim-svelte]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-o>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: smart-splits.nvim
time([[Config for smart-splits.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\14\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0006\4\5\0'\6\6\0B\4\2\0029\4\t\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0006\4\5\0'\6\6\0B\4\2\0029\4\v\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\5\0'\6\6\0B\4\2\0029\4\r\4B\0\4\1K\0\1\0\17resize_right\n<S-l>\14resize_up\n<S-k>\16resize_down\n<S-j>\16resize_left\17smart-splits\frequire\n<S-h>\6n\bset\vkeymap\bvim\0", "config", "smart-splits.nvim")
time([[Config for smart-splits.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nm\0\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0024\3\0\0=\3\5\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: everforest
time([[Config for everforest]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\t\0\0196\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\0016\1\0\0009\1\3\1'\2\5\0=\2\4\1\18\1\0\0'\3\6\0B\1\2\1\18\1\0\0'\3\a\0B\1\2\1\18\1\0\0'\3\b\0B\1\2\1K\0\1\0\22set termguicolors\27colorscheme everforest\24set background=dark\tsoft\26everforest_background\6g\14syntax on\bcmd\bvim\0", "config", "everforest")
time([[Config for everforest]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n�\5\0\0\5\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\28\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\29\2B\0\2\1K\0\1\0\roverride\1\0\0\tlock\1\0\3\tname\tlock\ticon\b\ncolor\f#5c6370\bmp4\1\0\3\tname\bmp4\ticon\b\ncolor\f#5c6370\bmp3\1\0\3\tname\bmp3\ticon\b\ncolor\f#566370\btxt\1\0\3\tname\ttext\ticon\b\ncolor\f#61afef\bmap\1\0\3\tname\btxt\ticon\b\ncolor\f#566370\taxml\1\0\3\tname\taxml\ticon\b\ncolor\f#f76c7c\ttxml\1\0\3\tname\ttxml\ticon\b\ncolor\f#f76c7c\bxml\1\0\3\tname\bxml\ticon\b\ncolor\f#f76c7c\tacss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\ttcss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\bcss\1\0\3\tname\bcss\ticon\b\ncolor\f#61afef\thtml\1\0\0\1\0\3\tname\thtml\ticon\b\ncolor\f#f76c7c\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\2B\0\2\1K\0\1\0\foptions\1\0\0\23disabled_filetypes\1\2\0\0\tdefx\25component_separators\1\0\2\nright\5\tleft\5\23section_separators\1\0\2\nright\5\tleft\5\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n:\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19UltiSnips#Anon\afn\bvim}\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\1�\tname\vsource\1\0\3\14ultisnips\14[Snippet]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\tmenu\tkind�\b\1\0\t\0\29\0.6\0\0\0'\2\1\0B\0\2\0025\1\2\0009\2\3\0005\4\n\0004\5\a\0005\6\4\0>\6\1\0055\6\5\0>\6\2\0055\6\6\0>\6\3\0055\6\a\0>\6\4\0055\6\b\0>\6\5\0055\6\t\0>\6\6\5=\5\v\0045\5\r\0003\6\f\0=\6\14\5=\5\15\0045\5\19\0009\6\16\0009\6\17\0065\b\18\0B\6\2\2=\6\20\0059\6\16\0009\6\21\6B\6\1\2=\6\22\0059\6\16\0009\6\23\6B\6\1\2=\6\24\5=\5\16\0045\5\26\0003\6\25\0=\6\27\5=\5\28\4B\2\2\0012\0\0�K\0\1\0\15formatting\vformat\1\0\0\0\n<tab>\21select_next_item\f<s-tab>\21select_prev_item\t<cr>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\14ultisnips\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\nsetup\1\0\24\rVariable\21[] (Variable)\14Reference\22   (Reference)\nField\18 ﴲ  (Field)\vFolder\19   (Folder)\16Constructor\24   (Constructor)\15EnumMember\23   (EnumMember)\rFunction\21   (Function)\rConstant\21 ﲀ  (Constant)\vMethod\19   (Method)\vStruct\19 ﳤ  (Struct)\tText\18   (Text) \nEvent\18   (Event)\tFile\17   (File)\rOperator\21   (Operator)\nColor\18   (Color)\18TypeParameter\26   (TypeParameter)\fKeyword\20   (Keyword)\tEnum\16 練 (Enum)\nValue\18   (Value)\tUnit\17   (Unit)\rProperty\20 襁 (Property)\vModule\19   (Module)\14Interface\22 ﰮ  (Interface)\nClass\18   (Class)\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15playground\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\1\0\2\21use_languagetree\2\venable\2\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\0\1\f\0\0\15javascript\15typescript\tjson\fgraphql\btsx\thtml\njsdoc\trust\bcss\tbash\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: crates.nvim
time([[Config for crates.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vcrates\frequire\0", "config", "crates.nvim")
time([[Config for crates.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
