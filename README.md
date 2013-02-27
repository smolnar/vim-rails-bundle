# Rails Bundle for Vim

Vim as a Ruby on Rails IDE with all the cool plugins and nifty configuration.
Follow the simple installation guide and hack in no time! 


All plugins are listed in [bundle](https://github.com/smolnar/vim-rails-bundle/tree/master/.vim/bundle).

[Screenshot](:q)
[Video]()


## Installation

### Requirements

* **Vim/Gvim**
* **Ruby, Rails, Bundler** ([rvm](https://rvm.io/rvm/install/) ftw!)
* **Git**

There are some core stuff that other plugin use. In order to make them work, you need to have
these packages installed:

* **Curl, xclip** for [Gist.vim](https://github.com/vim-scripts/Gist.vim)
* **Ack** for [Ack.vim](https://github.com/mileszs/ack.vim)
* **Clang** for [clang_complete.vim](https://github.com/Rip-Rip/clang_complete)

To satisfy requirements, run (Ubuntu only):
```
sudo apt-get install vim vim-gtk git curl ack-grep clang xclip
```
For other distros or package managers, refer to package management documentation.

## Setup

Clone the repository:
```
git clone git://github.com/smolnar/vim-rails-bundle.git .vim-rails-bundle
cd .vim-rails-bundle
git submodule init
git submodule update
```

Install necessary gems:
```
bundle install
```

Choose what you want to install:

* **rake bundle:config** symlinks `.vim` and `.vimrc` to your `$HOME` or other path if specified in `config.yml`
* **rake bundle:gtk** symlinks `.gtkrc-2.0-vim` in your `$HOME` or or other path if specified in `config.yml`. In order to autoload this file, it appends
`include "...../.gtkrc-2.0-vim"` to your `.gtkrc-2.0`.
* **rake bundle:desktop** symlinks `gvim_for_rails.desktop` file in `/usr/share/applications` and `gvim_for_rails` script in `/usr/bin`. Note, that `sudo` is required.


For updating submodules:
```
cd .vim/bundle/any-vim-plugin
git pull
```

For updating all submodules at once:
```
cd .vim-rails-bundle
git submodule foreach git pull
```

Now, run `vim`, `gvim_for_rails` or open `Gvim for Rails` and start hackin'!

## Configuration

### Keyboard

This bundle is shipped with some default keyboard mappings defined in `.vimrc`. Fell free to change them. I try to use as many comments as possible, but if you're not confident what the options does, refer to exhaustive [vim documantation](http://vimdoc.sourceforge.net/htmldoc/usr_toc.html).


If you like trailing characters (`▸`,`¬`,`❯`,`❮`), you can easy set it up by uncommenting the following lines:
```
set list
set listchars...
```
in `.vimrc`.

`Leader` is a key defined in `let mapleader=...`. Bundle uses `,` as `Leader` by default.
Note, that when pressing any `Leader` combo, you don't need to press all buttons at once, it's a sequence. 

| Keys          | Action        |
| ------------- |:-------------:|
| `Space` | Open all folds. |
| `CTRL` + `a`| Go Home (at the beginning of a line. Emacs-like helper.)|
| `CTRL` + `e`| Go to End (at the end of a line. Emacs-like helper.)|
| `CTRL` + `s`| Save current file. (Works in Gvim out of the box. For terminal, set mapping of Ctrl - s.)|
| `Leader` + `q` or `CTRL` + `ALT` + `q`| Quit current buffer or file. |
| `CTRL` + `ALT` + `w` | Write and quit. |
| `Leader` + `Space`| Get rid of all search highlights. |
| `Leader` + `s` + `h`| Toggle highlight of search results. |
| `Leader` + `v`| Split window vertically and switch to it.|
| `Leader` + `h`| Split window horizontally and switch to it.|
| `Leader` + `t`| Run [ctags](http://en.wikipedia.org/wiki/Ctags) silently. |
| `Leader` + `p`| Paste from clipboard.|
| `Leader` + `y`| Copy to clipboard. |
| `Leader` + `a`| Run [Ack](http://betterthangrep.com/) search. (Search in current dir (CWD) for specified parrtern.) |
| `Leader` + `=`| Format whole file. |
| `CTRL` + `n` or `CTRL` + `t` | Open new tab. |
| `CTRL` + `ALT` + `n`| Open new tab with the content of current text file. |
| `ALT` + `Left`| Previous tab. |
| `ALT` + `Right` | Next tab. |
| `ALT` + *n* | Move to *n*-th tab, where n is from 0..9. |
| `Leader` + `u` | Uppercase all letters of current word. |
| `Leader` + `l` | Lowercase all letters of current word. |
| `Leader` + `w` + `u`| Uppercase first letter of current word.|
| `Leader` + `w` + `l`| Lowercases first letter of current word.|
| `Leader` + `c` + `d`| Change directory to the directory containing the file in the buffer.|
| `Leader` + `g` + `w`| Swap two words. |
| **Plugins** | |
| `F3` or `Leader` + `f` | Start CtrlP search. (Kinda like CommandT in Textmate) |
| `F4` | Start CtrlP search in open buffers. |
| `F2` | Start CtrlP search dirs only. |
| `Leader` + `e` + `v` | CtrlP search in app/views. |
| `Leader` + `e` + `c` | CtrlP search in app/controllers.|
| `Leader` + `e` + `m` | CtrlP search in app/models. |
| `Leader` + `g` + `u` | Toggle Gundo undo list. |
| `Leader` + `g` + `s` | Show git status by Fugitive plugin. |
| `Leader` + `g` + `c` | Commit changes by Fugitive plugin. |a
| `Leader` + `g` + `d` | See diff of current file by Fugitive plugin. |
| `F1` | Toggle NERDTree. |
| `F6` or `Leader` + `r` + `a` | Rails command. |
| `F7` or `Leader` + `r`+ `g` | Rails generate command. |
| `F8` or `Leader` + `r` + `r` | Rake command. |
| `F9` or `Leader` + `r` + `i` | Initializers. (Empty argument leads to config/routes.rb) |
| `Leader` + r + o | Go straight to config/routes.rb |
| `F10` or `Leader` + `r` + `m` | Choose from app/models. |
| `F11` or `Leader` + `r` + `v` | Choose from app/views. |
| `F12` or `Leader` + `r` + `c` | Choose from app/controllers. |
|**GUI**||
| `CTRL` + `o` | Dialog for open file. |
| `CTRL` + `ALT` + `s` | Save as dialog. |
| `CTRL` + `ALT` + `f` | Choose font dialog. |
| `alt` + *n* | choose *n*-th tab, where *n* is from 0..9. |
| **Navigation in NERDTree** |  |
| `c` + `d` | Change directory to hovered dir. |
| `Shift` + `i` | Show hidden files. |
| `Shift` + `u` | Go up in directory structure. |
| `Shift` + `c` | Go to hovered directory. |
| `m` | Modify hovered file/dir. |
| `s` | Split hovered file/dir vertically. |


### UI 

Gvim uses gtk fixes in `.gtkrc-2.0-vim` to set colors of gtk backround and tabs. Adjust these values as you like. 
Default theme is `Monokai` colorscheme port from Textmate. If you want Monaco font (Textmate Monospaced font), follow [this guide](https://gist.github.com/epegzz/1634235) and then
change font in `.vimrc` like this

```
set guifont=Monaco\ for\ Powerline\ 9
```

### Codes snippets
This bundle uses [Snipmate Snippets](https://github.com/honza/snipmate-snippets), so check out the [Ruby and Rails snippets definitions](https://github.com/honza/snipmate-snippets/blob/master/snippets/ruby.snippets) to speed up your coding.


## Contribution

Vim configuration files are mainly based on [my dotfiles](https://github.com/smolnar/dotfiles), [kremso's dotfiles](https://github.com/kremso/dotfiles) and keyboard mappings in [Janus: Vim distribution](https://github.com/carlhuda/janus).

If you know about some cool plugin that we've missed, send us a pull request.

Follow the common rules:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

### This code is free to use under the terms of the MIT license.

Copyright (c) 2013 Samuel Molnár

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
