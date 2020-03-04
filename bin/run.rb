require 'bundler'
Bundler.require


require_relative '../config/environment'
require_all 'app'
require_relative 'helper.rb'
require 'tty-prompt'
require 'colorize'

welcome
shows_or_services
