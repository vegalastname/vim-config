Vim Configuration Repository
===========================

This repository contains my personalized Vim setup for Windows 11, including plugins managed by Vim-Plug. It's designed for a modern, VS Code-like experience with features like file exploration, syntax highlighting for Python, theme support, and Jupyter notebook editing. This config is tailored for data science projects..

### Features
- **Modern Theme**: Gruvbox dark theme for a clean, readable interface.
- **Status Bar**: Vim-Airline with themes and powerline fonts for a professional look.
- **Syntax Highlighting**: Polyglot for multiple languages, with emphasis on Python.
- **Linting and Formatting**: ALE for real-time error checking and auto-formatting in Python (using flake8, pylint, black, isort).
- **File Explorer**: NERDTree for a tree-view sidebar, toggled with Ctrl+T.
- **Icons**: Vim-Devicons for file icons (requires Nerd Fonts).
- **Jupyter Support**: Jupytext.vim for editing .ipynb files as Markdown.
- **Git Integration**: Vim-Fugitive for Git commands inside Vim.

### Prerequisites
- Vim installed (via winget: `winget install vim.vim`).
- Git installed (for Vim-Plug to clone plugins).
- Nerd Fonts installed (download from [nerdfonts.com](https://www.nerdfonts.com/) and set as font in your terminal).
- For Python linting: Install dependencies globally with `pip install flake8 pylint black isort` (or in a Docker environment to avoid local installs).
- Windows Terminal recommended for a better visual experience.

### Installation
1. **Clone the Repository**:  
   Clone this repo to your home directory or a preferred location:

   git clone https://github.com/vegalastname/vim-config.git ~/vim-config
   cd ~/vim-config

2. **Copy the Config File**:  
Copy the `vimrc` file to your home directory as `_vimrc` (Vim's config file on Windows):

   copy vimrc %userprofile%_vimrc

3. **Install Vim-Plug** (if not already installed):  
Download the Vim-Plug script:

   New-Item -Path "$HOME\vimfiles\autoload" -ItemType Directory -Force Invoke-WebRequest -Uri https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -OutFile $HOME\vimfiles\autoload\plug.vim

4. **Install Plugins**:  
Open Vim and run:
   vim +PlugInstall +qall

This will download and install all plugins listed in `_vimrc`.

5. **Configure Terminal**:  
- Install Windows Terminal from Microsoft Store.  
- Open Settings (`Ctrl+,`), go to Profiles > PowerShell > Appearance.  
- Set Font face to a Nerd Font (e.g., "FiraCode NF").  
- Choose a dark color scheme (e.g., "Campbell" or custom as per instructions below).

6. **Optional: Custom Dark Terminal Theme**:  
In Windows Terminal Settings > Color schemes > Add new:  
- Name: ModernDark  
- Background: #1E1E2E  
- Foreground: #D9E0EE  
- Apply to your profile.

7. **Verify Setup**:  
Open Vim (`vim`) and:  
- Press Ctrl+T to toggle NERDTree.  
- Open a Python file to see highlighting and linting.  
- Open a .ipynb file to edit as Markdown (requires Jupytext installed).

### Plugins List
- `vim-airline/vim-airline`: Modern status bar.  
- `vim-airline/vim-airline-themes`: Themes for Airline.  
- `sheerun/vim-polyglot`: Syntax highlighting for many languages.  
- `dense-analysis/ale`: Linting and fixing for Python.  
- `ryaoasis/vim-devicons`: Icons for files and folders.  
- `preservim/nerdtree`: File tree explorer.  
- `goerz/jupytext.vim`: Jupyter notebook support.  
- `tpope/vim-fugitive`: Git integration.  
- `morhetz/gruvbox`: Dark theme.

### Usage
- **Basic Commands**:  
- Toggle NERDTree: Ctrl+T  
- Save file: :w  
- Quit: :q  
- Install/Update plugins: :PlugInstall / :PlugUpdate  
- **Editing Notebooks**: Open .ipynb with Vim; Jupytext converts to Markdown. Save to sync back.  
- **Customization**: Edit `_vimrc` to add more plugins or shortcuts.

### Troubleshooting
- **Plugins Not Installing**: Ensure Git is in PATH and run `:PlugInstall`.  
- **No Icons**: Install Nerd Fonts and set in terminal settings.  
- **Linting Errors**: Install Python dependencies with pip (or use Docker).  
- **Theme Not Applying**: Reload with `:source $MYVIMRC`.

### License
MIT License - Feel free to use and modify.

For questions or contributions, open an issue or pull request!
