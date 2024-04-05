# To-do -> dadbod
- Location to save queries
- Navigate through results (List of results, and also navigate through columns/rows)
- Navigate through Queries
- Create helper queries (make sure they do not save)
- When using helper queries,rename buffer to helper query


# Nvim version > 9.0

# Python3

# Node and npm. -version?

# sudo apt install ripgrep

# Obsidian
## For URL follow in markdown
sudo apt install xdg-utils \n
for URL opening; will change options in plugins/obsidian.lua if on different OS (default is linux)

# OhMyZsh
- PowerLevel10k

# Cmd utilities
sudo apt-get install xclip
ex. cat file | xclip

# Latex
[Zathura](https://pwmt.org/projects/zathura/installation/) 

# R
- install R
- add the following snippet to .Rprofile
```
utils::assignInNamespace(
  "q", 
  function(save = "no", status = 0, runLast = TRUE) 
  {
    .Internal(quit(save, status, runLast))
  }, 
  "base"
)
```
- go to https://github.com/REditorSupport/languageserver and follow instructions
  - install.packages(c("languageserver","devtools","dplyr","reticulate","ggplot2","patchwork","remote"))
