require 'rubygems'
require 'rake'
require './core/log'

namespace :install do

  PATH = ENV['HOME']

  task :greeting do
    Log.msg :green, <<EOF
====================
Rails Bundle for Vim
====================

Almost complete Ruby on Rails environment inside Vim.
Contribute to https://github.com/smolnar/vim-rails-bundle for everlasting fame and all the women!
-------------------------------------------------------------------------------------------------
EOF
  end

  desc "Install vim configurations"
  task :vim do
    Rake::Task['install:greeting'].invoke

    Log.info "Starting installing Vim to #{PATH} ..."

    vim_dir    = File.join(Dir.pwd, '.vim')
    vim_config = File.join(Dir.pwd, '.vimrc')

    vim_dir_dest = File.join(PATH, File.basename(vim_dir))
    vim_config_dest = File.join(PATH, File.basename(vim_config))

    if File.exists?(vim_dir_dest)
      Log.warn "#{vim_dir_dest} already exists. Merge it on your own!"

      dest_backup = "#{vim_dir_dest}.backup"

      Log.info "Backuping #{vim_dir_dest} to #{dest_backup} (just to be sure) ..."
    else
      Log.info "Symlinking #{vim_dir} to #{vim_dir_dest}"

      FileUtils.ln_s vim_dir, vim_dir_dest
    end

    if File.exists?(vim_config_dest)
      Log.warn "#{vim_config_dest} already exists. Merge it on your own!"
    else
      Log.info "Copying #{vim_config} to #{vim_config_dest}"

      FileUtils.cp vim_config, vim_config_dest
    end

    unless File.exists?(vim_config_dest) || File.exists?(vim_dir_dest)
      Log.error "Something went wrong. The #{vim_config_dest} or #{vim_dir_dest} does not exists!"
      exit 1
    end

    Log.success "Yay! It's probably done! Hack on!"
  end

end
