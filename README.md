vim-javascript-adapted
=========

This is vim-javascript-adapter repository, with vim configuration which is specially adapted for javascript/node.js/ember/html/xml/.... developers.

### Installation

To install it on you mashine first you need to clone repository to you computer (don't forget ``--recursive``):
```
git clone --recursive git@github.com:ivpusic/vim-javascript-adapted.git
```

After that you need rename cloned repository to ``.vim`` and then move repo to your home directory, and move ``.vimrc`` from cloned repository to your home directory.

Example:
```
mv vim-javascript-adapted ~/.vim
mv ~/.vim/.vimrc ~/
```

Then you need to init some modules inside ``.vim`` directory. Be sure to install ``npm``, ``ruby`` and ``ruby-devel`` packages before doing following:

```
# install jshint
sudo npm install -g jshint

# init vim-jsbeautify
cd ~/.vim/bundle/vim-jsbeautify && git submodule update --init --recursive

# init tern_for_vim
cd ~/.vim/bundle/tern_for_vim/
npm install

# init command-t
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make

# init YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh
```

### Plugins

There is a lot of plugins installed, and they main purpose is to make javascript developer easier.
Please look at each module, it will make your life easier.

List of installed plugins:
```
├── auto-pairs
├── Command-T
├── emmet-vim
├── handlebars
├── mustache
├── nerdcommenter
├── nerdtree
├── portkey
├── python-mode
├── syntastic
├── tern_for_vim
├── tlib_vim
├── vim-addon-mw-utils
├── vim-airline
├── vim-colorschemes
├── vim-easymotion
├── vim-easytags
├── vim-fugitive
├── vim-indent-guides
├── vim-jade
├── vim-javascript
├── vim-javascript-syntax
├── vim-misc
├── vim-node
├── vim-snipmate
├── vim-snippets
├── xmledit
└── YouCompleteMe
├── acp.vim
└── pathogen.vim
├── handlebars.vim
├── html.vim
└── xml.vim
├── acp.vim
├── bclose.vim
└── matchit.vim
└── taglist
└── vim-jsbeautify

```

### Specific keyboard shortcuts

Most of keyboard shortcuts are default, and it is enought to look at plugin documentation and see which are default shortcuts for plugin.

There are some specific, and they are defined in ``.vimrc`` file, so you can easily adjust to your needs.

##### Emmet
``C-o`` (main trigger) (INSERT mode)

##### node-airline
``tab`` (next buffer) (NORMAL mode)
``shift-tab`` (previous buffer) (NORMAL mode)

##### vim-jsbeautify
``c-f`` (javascript formating) (NORMAL mode)

##### taglist
``F8`` (open taglist)

##### Bclose
``Leader - q `` (closing current buffer without messing workspaces) (NORMAL mode)

##### fileNavigation specific
``C-a`` (beggining of line) (INSERT mode)
``C-e`` (end of line) (INSERT mode)
``home`` (beggining of line) (NORMAL mode)
``end`` (end of line) (NORMAL mode)

### Contact

If you have any questions you can contact me on pusic007@gmail.com
