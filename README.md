# NeoVim Config

This repository contains my NeoVim configuration files.

- See the [keymaps.lua](lua/core/keymaps.lua) file, or run `:Telescope keymaps` in NeoVim to find the keybindings.

## Setup

1. Install [NeoVim](https://neovim.io/).

2. Clone this repository at `~/.config/`:

   ```shell
   git clone https://github.com/Hamada-Gado/neovim.git
   ```

3. Run neovim:

   - Set the `NVIM_APPNAME` environment variable to the name of the directory if it's not `nvim`:

     ```shell
     export NVIM_APPNAME="neovim"
     ```

4. Check `lua/core/options.lua` for the default settings.

5. Checkhealth in NeoVim:

   ```shell
   :checkhealth
   ```
