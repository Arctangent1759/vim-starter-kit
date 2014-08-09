" Vim starter kit configuration file. Specifies how you want your editor to
" behave when you press buttons.
" Author:        Alex Chu (http://github.com/arctangent1759)
" Homepage:      http://github.com/arctangent1759/vim-starter-kit
" Version:       0.0.0

" Disable vi compatability. This makes your vim config incompatible with
" really old legacy systems, but lets you use all the awesome new features
" that vim provides.
set nocompatible

" Set up the Vundle package manager. Vundle is a popular package manager for
" vim that can install and manage plugins from Github or vim.org. There are
" alternatives like Pathogen, but Vundle is the one I find the easiest to use.
" See documentation at https://github.com/gmarik/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'gmarik/Vundle.vim'
" To install plugins, just add 'Plugin <Github or vim.org path here>' here.
" For example:
" Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" Set your leader key here. The leader key is an interface used by a lot of
" plugins to namespace their commands from the ones provided by default in
" vim. What this means is that the leader key is your new best friend, because
" it will let you interact with all sorts of useful plugins while in normal
" mode. Mine is set below. Feel free to change it.
let mapleader=";"

" This enables syntax hilighting, making coding that much more awesome.
syntax enable
" Set the colorscheme to something you like. I like elflord for dark terminals
" because it doesn't burn my eyes.
colorscheme elflord
" Notifies vim of your terminal background preferences. This changes the
" behavior of the colorscheme to enhance contrast.
set background=dark

" Line numbering. To disable, run :set nonumber.
set number

" Makes the backspace key not break on cygwin and some old terminals.
set backspace=indent,eol,start 

" Smart tabbing behavior based on the tabbing level of the last line.
set smarttab

" Code with 2 spaces.
set tabstop=2
set shiftwidth=2

" Shows the command you're entering into normal mode in the status bar.
set showcmd

" Pretty completion menu for command mode.
set wildmenu
set wildignore=*.o,*~,*.pyc

" Makes unicode characters display nicely.
set encoding=utf8

" No swaps. Swaps are annoying. If you expect your terminal to crash
" regularly, and want vim to back up your work, you might want to remove this.
set noswapfile

" Mappings. These change the things that happen when you press buttons in
" certain modes. The first character of each command determines the mode in
" which the mapping is active. Here are some common ones:
"  Character | Mode
" -----------|-------------
"      n     | normal
"      i     | insert
"      c     | command
"      v     | visual
"      o     | operator
"    blank   | all modes
" The 'noremap' means that each mapping is independent of other mappings. This
" is the recommended way to write vim mappings.
"
" A couple of mappings that I'm particularly fond of. They're commented out in
" case you want to develop and learn your own keybindings.  Uncomment them if
" you want to use them.

" Allows you to exit insert mode into normal mode by tapping jk. With this
" mapping, you won't have to reach for the escape key as often. It's good for
" beginners because it encourages them to go into normal mode more often,
" rather than just using the arrow keys to get around a document. The author
" of Learn Vimscript the Hard Way lists a couple of good reasons why this
" mapping is elegant:
" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
" inoremap jk <esc>

" Allows copying and pasting from the system clipboard using control c and
" control v on vim installations compiled with x11 support. Usually, this is
" true if you have gvim installed.
" vnoremap <c-c> "+y
" nnoremap <c-c> "+y
" vnoremap <c-v> "+p
" nnoremap <c-v> "+p
