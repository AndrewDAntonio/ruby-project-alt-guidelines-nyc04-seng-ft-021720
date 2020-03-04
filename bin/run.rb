
require 'bundler'
Bundler.require


require_relative '../config/environment'
require_all 'app'
require 'tty-prompt'
require 'colorize'

def welcome
    puts "Welcome to Boxguide.".colorize(:red)
end

def shows_or_services
    prompt = TTY::Prompt.new
    answer = prompt.select("Where would you like to start?") do |menu|
        menu.choice name: 'Shows', value: 1
        menu.choice name: 'Streaming Services', value: 2
        menu.choice name: 'Quick Search', value: 3
    end
    if answer == 1
        puts "Still finishing this part"
    elsif answer == 2
        puts "Still finishing this part"
    elsif answer == 3
        puts "Still finishing this part"
    else
        puts "Thanks for visiting Boxguide!"
    end 
end