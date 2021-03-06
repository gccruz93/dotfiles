
## Windows Setup

### Packages
`Scoop (Package manager)`
```
iwr -useb get.scoop.sh | iex
```
`Git`
```
winget install -e --id Git.Git
```
`Neovim`
```
scoop install neovim gcc
```
`Node`
```
scoop install nvm
```

### PowerShell
`Config files`
```
mkdir $home\.config\pwsh
```
```
ln -s -f $home\.dotfiles\Windows\pwsh\gccruz93.ps1 $home\.config\pwsh\gccruz93.ps1
```
`Setting $PROFILE dir`
```
mkdir $home\Documents\PowerShell
```
```
ln -s -f $home\.dotfiles\Windows\WindowsTerminal\Microsoft.PowerShell_profile.ps1 $home\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```
`Icons`
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```
`PSReadLine`
```
pwsh.exe -noprofile -command "Install-Module PSReadLine -Force -AllowPrerelease -SkipPublisherCheck" 
```

## Libs
- [`neovim`](https://github.com/neovim/neovim) - The fork of ubiquitous text editor focused on extensibility and usability
  - [`autopairs`](https://github.com/windwp/nvim-autopairs) - Auto pair plugin
  - [`bufferline`](https://github.com/akinsho/nvim-bufferline.lua) - Bufferline
  - [`cmp`](https://github.com/hrsh7th/nvim-cmp) - Auto completion support
    - [`cmp-buffer`](https://github.com/hrsh7th/cmp-buffer) - cmp source for buffer words
    - [`cmp-calc`](https://github.com/hrsh7th/cmp-calc) - cmp source for math calculation
    - [`cmp-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp) - cmp source for LSP client
    - [`cmp-lsp-signature-help`](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help) - cmp source for LSP signatures
    - [`cmp-luasnip`](https://github.com/saadparwaiz1/cmp_luasnip) - cmp source for luasnip snippets
    - [`cmp-path`](https://github.com/hrsh7th/cmp-path) - cmp source for filesystem paths
  - [`colorizer`](https://github.com/norcalli/nvim-colorizer.lua) - High-performance color highlighter
  - [`diffview`](https://github.com/sindrets/diffview.nvim) - Single tabpage interface for all modified files in git
  - [`editorconfig`](https://github.com/gpanders/editorconfig.nvim) - EditorConfig support
  - [`fix-cursorhold`](https://github.com/antoinemadec/FixCursorHold.nvim) - Fix neovim CursorHold and CursorHoldI autocmd events performance bug
  - [`fugitive`](https://github.com/tpope/vim-fugitive) - Git client
  - [`fzf-lua`](https://github.com/ibhagwan/fzf-lua) - Lua implementation of fuzzy finder fzf plugin
  - [`gitsigns`](https://github.com/lewis6991/gitsigns.nvim) - Asynchronous git diff in sign column
  - [`indent-blankline`](https://github.com/lukas-reineke/indent-blankline.nvim) - Display the indention levels with thin vertical lines
  - [`lspconfig`](https://github.com/neovim/nvim-lspconfig) - Quickstart configurations for the neovim LSP client
    - [`diagnostic-language-server`](https://github.com/iamcco/diagnostic-languageserver) - General purpose language server that integrate with linters
    - [`typescript-language-server`](https://github.com/theia-ide/typescript-language-server) - TypeScript & JavaScript Language Server
    - [`css-language-server`](https://github.com/vscode-langservers/vscode-css-languageserver-bin) - CSS Language Server
    - [`html-language-server`](https://github.com/vscode-langservers/vscode-html-languageserver-bin) - HTML Language Server
    - [`json-language-server`](https://github.com/vscode-langservers/vscode-json-languageserver) - JSON Language Server
    - [`lua-language-server`](https://github.com/sumneko/lua-language-server) - Lua Language Server
  - [`luasnip`](https://github.com/L3MON4D3/LuaSnip) - High-performance snippet engine
  - [`material`](https://github.com/marko-cerovac/material.nvim) - Color scheme
  - [`null-ls`](https://github.com/jose-elias-alvarez/null-ls.nvim) - Use langauge server to inject diagnostics, formatter etc.
  - [`nvim-tree`](https://github.com/kyazdani42/nvim-tree.lua) - File explorer
  - [`nvim-web-devicons`](https://github.com/kyazdani42/nvim-web-devicons) - Nerd Font icon API support
  - [`plenary`](https://github.com/nvim-lua/plenary.nvim) - Asynchronous modules using coroutines
  - [`polyglot`](https://github.com/sheerun/vim-polyglot) - Big collection of language packs as scripts are loaded only on demand
  - [`sandwich`](https://github.com/machakann/vim-sandwich) - The set of operator and text object plugins to search, select, edit sandwiched text objects
  - [`schema-store`](https://github.com/b0o/SchemaStore.nvim) - Access to the SchemaStore catalog for JSON langauge server
  - [`undotree`](https://github.com/mbbill/undotree) - Visualize undo tree
- [`git`](https://git-scm.com) - Version control system for tracking changes in files and coordinating the work
- [`node`](https://nodejs.org) - JavaScript runtime environment for developing a diverse variety of applications
  - [`npm`](https://www.npmjs.com) - Node Package Manager mainly for the JavaScript programming language