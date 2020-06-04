# vimrc for dabblers 
A relatively minimal Vim config for a little bit of everything in the life of a scientist: note-taking, LaTeX, R, 
Python, Perl, Matlab, etc. Currently used with the excellent [VimR](https://github.com/qvacua/vimr) for macOS. With the exception of iron.vim, which is Neovim only, the rest also work nicely with [MacVim](https://github.com/macvim-dev/macvim) on macOS and vim-gtk on Linux. 

### Day-to-day 
[Vimwiki](https://github.com/vimwiki/vimwiki), personal note-taking.  
[LaTeX-Box](https://github.com/LaTeX-Box-Team/LaTeX-Box) for writing.  
[vim-gnupg](https://github.com/jamessan/vim-gnupg), relatively seamless handling of gpg files.  
[vim-surround](https://github.com/tpope/vim-surround), dealing with parentheses, brackets, quotes, etc.  
[solarized](https://github.com/altercation/solarized), go easy on your eyes!

### Programming-related
[Nvim-R](https://github.com/jalvesaq/Nvim-R), R integration, lighter-weight than using RStudio. As much as people love python, R produces nicer plots.  

[iron.vim](https://github.com/hkupty/iron.nvim), nice REPL plugin for Neovim only. Very convenient for dabbling in python (works with jupyter-console, for those who disagree with the concept of working in a web browser), Matlab, and pretty much anything else.  

[perl-support](https://github.com/WolfgangMehner/perl-support) for Perl. It doesn't come up that often.

[vim-fugitive](https://github.com/tpope/vim-fugitive), dealing with Git from Vim. It's still a little complicated.

[tagbar](https://github.com/majutsushi/tagbar), use Ctags to navigate your source, what a life-saver!

[dadbod](https://github.com/tpope/vim-dadbod), for the occasional database.

### Some config choices
- Mapping to allow navigation between windows using **Ctl+H,J,K,L** (instead of **Ctl+W** first). **Ctl+N** enters normal mode. 
- **Ctl+b** for toggling Tagbar.
- **Cmd+Option+Arrow** keys to swtich between tabs, **_Ctl_+Option+Arrow** keys for buffers. **Ctl+Option+Up** creates a new buffer.
- **,,** and **??** to move between items in a pop-up list.
- Mappings for iron.vim resemble those of NVim-R: **\l** sends a line, **\pp** a paragraph, **\\]]** sends a code block (see vimrc for the rest).
- Netrw is configured so that filesystem is on the left (after calling :Lex), and there's a single split on the right for editing one file. Clicking a new file replaces the content of the split. Most of the time, this is all one needs--find the file, click the file, edit the file. For multitasking, use mutiple buffers, splits, and tabs.
- In Neovim, terminals go in a horizontal split at the bottom. Jumping to it automatically enters insert mode.  
