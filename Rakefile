require 'rubygems'
require 'rake'
require './core/log'

namespace :bundle do

  PATH = '/home/samuel/tmp/skuska'

  task :greeting do
    Log.msg :green, <<EOF
====================
Rails Bundle for Vim
====================

Almost complete Ruby on Rails environment inside Vim.
Contribute to https://github.com/smolnar/vim-rails-bundle for everlasting fame and all the women!
--------------------
EOF
  end

  desc "Install vim configurations"
  task :config do
    Rake::Task['install:greeting'].invoke

    Log.info "Starting installing Vim to #{PATH} ..."

    warn = false

    dir  = { src: File.join(Dir.pwd, '.vim') }
    conf = { src: File.join(Dir.pwd, '.vimrc') }

    dir[:dest]    = File.join(PATH, File.basename(dir[:src]))
    conf[:dest] = File.join(PATH, File.basename(conf[:src]))

    if File.exists?(dir[:dest])
      Log.warn "#{dir[:dest]} already exists. Remove or merge it on your own!"

      warn = true
    else
      Log.info "Symlinking #{dir[:src]} to #{dir[:dest]}"

      FileUtils.ln_s dir[:src], dir[:dest]
    end

    if File.exists?(conf[:dest])
      Log.warn "#{conf[:dest]} already exists. Remove or merge it on your own!"

      warn = true
    else
      Log.info "Copying #{conf[:src]} to #{conf[:dest]}"

      FileUtils.cp conf[:src], conf[:dest]
    end

    unless File.exists?(dir[:dest]) || File.exists?(conf[:dest])
      Log.error "Something went wrong. The #{dir[:dest]} or #{conf[:dest]} does not exists!"
      exit 1
    end

    if warn
      Log.warn "Ooops. There's been some warning messages. You better check it out!"
    else
      Log.success "Yay! It's probably done! Hack on!"
    end
  end


  desc 'Install gtk roules for more fancy GVim look.'
  task :gtk do
    Rake::Task['install:greeting'].invoke

    Log.msg 'Installing fancy gtk roules for GVim appearance.'

    file     = '.gtkrc-2.0-vim'
    gtk_vim  = { src: File.join(Dir.pwd, file), dest: File.join(ENV['HOME'], file) }
    gtk_rc   = File.join(ENV['HOME'], '.gtkrc-2.0')

    File.open(gtk_rc, 'a') do |f|
      f.write("include \"#{gtk_vim[:dest]}\"")
    end

    File.ln_s gtk_vim[:src], gtk_vim[:dest]
  end

end
