vim-javascript-adapted
=========

This is vim-javascript-adapter repository, with vim configuration which is specially adapted for javascript/node.js/ember/html/xml/....

### Installation

To install this on you mashine first you need to clone repository to you computer (don't forget --recursive):
```
git clone --recursive git@github.com:ivpusic/vim-files.git
```

After that go into cloned repository and copy ``.vimrc`` file to your ``$HOME`` dir. After that rename whole
cloned repository to ``.vim`` and copy it to ``$HOME`` also. 

Example:
```
mv vim-javascript-adapted .vim
mv .vim ~/
mv ~/.vim/.vimrc ~/
```

Then you need to init some modules inside ``.vim`` directory. Be sure to install ``npm``, ``ruby`` and ``ruby-devel`` packages before doing following:

```
# init tern_for_vim
sudo npm install -g jshint
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

