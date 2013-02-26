require 'rubygems'
require 'rake'
require './core/log'
require './core/config'

namespace :bundle do

  PATH = Configuration.path.home || ENV['HOME']

  task :greeting do
    Log.msg :green, Configuration.greeting
  end

  desc "Install vim configurations"
  task :config do
    Rake::Task['bundle:greeting'].invoke

    Log.info "Starting installing Vim to #{PATH} ..."

    warn = false

    dir  = { src: File.join(File.dirname(__FILE__), Configuration.vim.dir) }
    conf = { src: File.join(File.dirname(__FILE__), Configuration.vim.config) }

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


  desc 'Install gtk rules for more fancy GVim look.'
  task :gtk do
    Rake::Task['bundle:greeting'].invoke

    Log.info 'Installing fancy gtk roules for GVim appearance.'

    file     = Configuration.vim.gtk
    gtk_vim  = { src: File.join(File.dirname(__FILE__), file), dest: File.join(PATH, file) }
    gtk_rc   = File.join(PATH, '.gtkrc-2.0')

    include_line = "include \"#{gtk_vim[:dest]}\"\n"

    File.open(gtk_rc, 'a+') do |f|
      f.write("#{include_line}") unless f.readlines.include?(include_line)
    end

    if File.exists?(gtk_vim[:dest])
      Log.warn "#{gtk_vim[:dest]} already exists. Merge it on your own!"
    else
      FileUtils.ln_s gtk_vim[:src], gtk_vim[:dest]

      Log.success 'Yay! Fancy gtk colors are on!'
    end
  end

  desc 'Install gvim script files to run gvim'
  task :desktop do
    Rake::Task['bundle:greeting'].invoke

    Log.info 'Installing .desktop and shell script to run Gvim.'
    Log.info "We need to have sudo permissions for that. Dont worry, we only copy #{Configuration.gvim.desktop} and #{Configuration.gvim.script}."

    errors = ""

    desktop = { 
      src: File.join(File.dirname(__FILE__), Configuration.gvim.desktop),
      dest: File.join(Configuration.path.desktop, Configuration.gvim.desktop) 
    }

    script = {
      src: File.join(File.dirname(__FILE__), Configuration.gvim.script),
      dest: File.join(Configuration.path.bin, Configuration.gvim.script)
    }

    Log.info "Copying desktop file ..."
    `sudo ln -s "#{desktop[:src]}" "#{desktop[:dest]}"`

    Log.info "Copying script file ..."
    `sudo ln -s "#{script[:src]}" "#{script[:dest]}"`
    `sudo chmod +x "#{script[:dest]}"`
  end

end
