# EFML.vim

EFML.vim is an EFML (*.ef, *.eft) syntax highlighter for Vim.

## What is EFML

EFML (ef.js template language) is a template language for [ef.js](https://ef.js.org/).

## Installation

### [Vundle](https://github.com/VundleVim/Vundle.vim)

```viml
Plugin 'TheNeuronProject/EFML.vim'
```

### [NeoBundle](https://github.com/Shougo/neobundle.vim)

```viml
NeoBundle 'TheNeuronProject/EFML.vim'
```

### [Pathogen](https://github.com/tpope/vim-pathogen)

```shell
git clone https://github.com/TheNeuronProject/EFML.vim ~/.vim/bundle/EFML.vim
```

## Comment Toggling

1. Install [NERD Commenter](https://github.com/scrooloose/nerdcommenter).
2. Add this to your vimrc.
   ```viml
   let g:NERDCustomDelimiters = {'efml': {'left': '* ', 'leftAlt': '*'}}
   ```
3. Read the documentation of NERD Commenter to learn more.

## Screenshot

![OneDark](https://i.loli.net/2018/07/02/5b3a120066865.png)

EFML.vim, gVim, OneDark Color Scheme

## Hmmmmmmmm...

This plugin may be laggy in console version Vim.
