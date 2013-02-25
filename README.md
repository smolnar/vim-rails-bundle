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
`Leader` is a key defined in `let mapleader=...`. Default setup in the bundle uses `,`.

| Keys          | Action        |
| ------------- |:-------------:|
| `Space` | Open all folds |
| `CTRL` + a| Go Home (at the beginning of a line. Emacs-like helper.)|
| `CTRL` + e| Go to End (at the end of a line. Emacs-like helper.)|
| `CTRL` + s| Save current file. (Works in Gvim out of the box. For terminal, set mapping.)|
| `Leader` + q or `CTRL` + `ALT` + q| Quit current buffer or file. |
| `CTRL` + `ALT` + w | Write and quit. |
| `Leader` + `Space`| Get rid of all search highlights. |
| `Leader` + v| Split window vertically and switch to it.|
| `Leader` + h| Split window horizontally and switch to it.|
| `CTRL` + n | Open new tab. |
| `CTRL` + `ALT` + n| Open new tab with the content of current text file. |
| `Leader` + t| Run [ctags](http://en.wikipedia.org/wiki/Ctags) silently. |
| `Leader` + p| Paste from clipboard.|
| `Leader` + y| Copy to clipboard. |
| `Leader` + a| Run [Ack](http://betterthangrep.com/) search. (Search in current dir (CWD) for specified parrtern.) |
| `Leader` + =| Format whole file. |

#### Plugins
As they appear in `vim.rc`.

| Keys          | Action        |
| ------------- |:-------------:|
| `F3` or `Leader`f | Start CtrlP search. (Kinda like CommandT in Textmate) |
| `F4` | Start CtrlP search in open buffers. |
| `F2` | Start CtrlP search dirs only. |
| `Leader` + g + v | CtrlP search in app/views. |
| `Leader` + g + c | CtrlP search in app/controllers.|
| `Leader` + g + m | CtrlP search in app/models. |
| `Leader` + g + u | Toggle Gundo undo list. |
| `Leader` + g + s | Show git status by Fugitive plugin. |
| `Leader` + g + c | Commit changes by Fugitive plugin. |a
| `Leader` + g + d | See diff of current file. |
| `F1` | Toggle NERDTree. |
| `F6` or `Leader` + r + a | Rails command. |
| `F7` or `Leader` + r + g | Rails generate command. |
| `F8` or `Leader` + r + r | Rake command. |
| `F9` or `Leader` + r + i | Initializers. (Empty argument leads to config/routes.rb) |
| `Leader` + r + o | Go straight to config/routes.rb |
| `F10` or `Leader` + r + m | Choose from app/models. |
| `F11` or `Leader` + r + v | Choose from app/views. |
| `F12` or `Leader` + r + c | Choose from app/controllers. |


#### Gui only
| Keys          | Action        |
| ------------- |:-------------:|
| `CTRL` + o | Dialog for open file. |
| `CTRL` + `ALT` + s | Save as dialog. |
| `CTRL` + `ALT` + f | Choose font dialog. |


