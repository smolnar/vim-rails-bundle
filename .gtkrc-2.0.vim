# fix for gvim border
style "vim-fix" {
  bg[NORMAL] = "#242424" # this matches my gvim theme 'Normal' bg color.
  fg[NORMAL] = "#ffffff"
}

style "vim-fix-tabs" {
  bg[NORMAL] = shade(1.02, "#656565")
  bg[ACTIVE] = shade(1.25, "#878787")
  fg[ACTIVE] = "#323232"
}

widget "vim-main-window*" style "vim-fix"
widget "vim-main-window.*.GtkNotebook*" style "vim-fix-tabs"
