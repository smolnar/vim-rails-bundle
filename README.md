# Rails Bundle for Vim

Ruby on Rails IDE inside VIM in seconds!

## Installation

### Requirements

* **Vim/Gvim**
* **Ruby/Rails** ([rvm](https://rvm.io/rvm/install/) ftw!)
* **Git**

There are some core stuff that other plugin use. In order to make them work, you need to have
these packages installed:

* **Curl + xclip** for [Gist.vim](https://github.com/vim-scripts/Gist.vim)
* **Ack** for [Ack.vim](https://github.com/mileszs/ack.vim)
* **Clang** for [clang_complete.vim](https://github.com/Rip-Rip/clang_complete)

To satisfy requirements, run (Ubuntu only):
```
sudo apt-get install vim vim-gtk git curl ack-grep clang xclip
```
For other distros, refer to package management documentation.

## Configuration
### Keyboard

This is a list of keyboard mapping inside `vim.rc`. Change them according your taste.

| Keys          | Action        |
| ------------- |:-------------:|
| *Space* | Open all folds |


