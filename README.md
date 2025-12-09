# Cam's Neovim Config

<img width="1725" height="987" alt="image" src="https://github.com/user-attachments/assets/858b47ef-b315-49af-b0a9-b8a6d0a9411f" />

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
