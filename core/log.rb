# encoding: utf-8

require 'rubygems'
require 'colored'

class Log

  def self.colorize(color, str)
    if Colored.colors.include?(color.to_s)
      str.send(color)
    else
      str
    end
  end

  def self.format(char, msg)
    "#{prefix(char)}#{msg}"
  end

  def self.prefix(char)
    "[#{char}] "
  end

  def self.msg(color, msg)
    puts colorize(color, msg)
  end

  def self.info(msg)
    msg(:blue, format('*', msg))
  end

  def self.warn(msg)
    msg(:yellow, format('*', msg))
  end

  def self.error(msg)
    msg(:red, format('X', msg))
  end

  def self.success(msg)
    msg(:green, format('✓', msg))
  end

end
