# Cam's Neovim Config

LazyVim-based neovim config

```
├── init.lua                    # entrypoint
├── lua/
│   ├── config/                  # global/editor config
│   └── plugins/                 # plugin specs / config
│       └── <plugin-spec>.lua
└── snippets/                    # auto-gen vsc snippets from 'scissors.nvim'
    └── <lang>.json
```

## Install

> requires `neovim>=11.0`

1. Backup existing config

```
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone repository

```
git clone git@github:camalk/nvim.git ~/.config/nvim
```
