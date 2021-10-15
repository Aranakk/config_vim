"""""""""""""""""""""""""""""
"CONFIG VIM BY ALEX ORMIERES"
"""""""""""""""""""""""""""""

"""
"This is not the final result, the config will be upgrade in the time
"""

"""""""""""""""""""""""""""""
"All the SET" 
""""""""""""""""""""""""""""

"-------------
syntax on  "Colorie les lignes en fonction de la syntax
syntax enable "Colorie les lignes en fonction de la syntax
"-------------


set noerrorbells "Pas de son de cloche
set tabstop=4 softtabstop=4 "Converti mon tab en 4 espaces
set shiftwidth=4 "Quand je fais shift tab ça fait les 4 espaces
set expandtab "traduit les tabs en espace
set smartindent "avoir une meilleur indentation
set nu "numéro de ligne
set nowrap "Permet de ne pas avoir de retour à la ligne quand on est au max horizontal
set smartcase "Case de recherche jusqu'a que je mette des MAJ
set noswapfile "Pas de changement de fichier
set nobackup "Ne sauvegarde pas
set undodir=~/.vim/undodir 
set undofile 
set incsearch "Recharche d'incrementation
set cursorline "La ligne du curseur
set number "Affiche les lignes
set colorcolumn=80 "La couleur de la colone
set showcmd "Affiche le cmd
set wildmenu "Active le menu de completion sur la touche tab
set scrolloff=5 "Laisse 5 espaces en bas
set sidescrolloff=5 "Laisse 5 espaces en haut
set ruler "Affiche notre position en bas à droit du fichier
set title "Affiche le titre dans le terminal
set t_Co=256 "Met le terminal en 256 couleurs


highlight ColorColumn ctermbg=0 guibg=lightgrey 
"couleur pour mes colones

""""""""""""""""""""""""""""
"Pluggins"
""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged') "J'appelle mes plugins

"Liste de tous les plugins que j'ai choisi

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end() "Je mets fin à mon appel de plugin

"Une fois ceci effectué, faire source % ET PlugInstall pour que les plugins
"s'installent

"Des colorations supplémentaires
colorscheme gruvbox
set background=dark


"Quelques codes que je test pour améliorer mon vim et ma rapidité sur celui-ci
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrl_user_command = ['.git/', 'git --git-dir=%s.git ls-files -oc --excludes-stand']
let mapleader =  " "
let g:netrw_browse_split=2
let g:netrw_banner = 0 
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0


" C: My gitusername : Aranakk

