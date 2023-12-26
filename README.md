# NeoVim2023
My 2023 NeoVim Setup. Inspired by Josean

place nvim folder into ~/.config

1) Neovim 0.8+
2) Requires NERD Fonts
   https://askubuntu.com/questions/3697/how-do-i-install-fonts?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
3) In nvim, use :Mason to install lsp servers
  pyright has a node.js dependency: sudo apt install npm

Note: If running into issues (usually a dependency issue with fzf and telescope):
Try
:PackerSync
:PackerCompile
:checkhealth telescope

4) For vim-jupyter -> sudo apt install ipython (if using virtualenv, will need -> python3 -m pip install --upgrade pynvim)



