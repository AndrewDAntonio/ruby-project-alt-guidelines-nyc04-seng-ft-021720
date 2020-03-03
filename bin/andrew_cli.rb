require 'bundler'
Bundler.require


require_relative '../config/environment'
require_all 'app'
require 'tty-prompt'



def welcome
    puts "Welcome to Boxguide."
end

def shows_or_services
    prompt = TTY::Prompt.new
    answer = prompt.select("Where would you like to start?") do |menu|
        menu.choice name: 'Shows', value: 1
        menu.choice name: 'Streaming Services', value: 2
        menu.choice name: 'Quick Search', value: 3
    end
    if answer == 1
        show_options
    elsif answer == 2
        puts "Still finishing this part" #Streaming Services conditional
    elsif answer == 3
        puts "Still finishing this part"
    else
        puts "Thanks for visiting Boxguide!"
    end 
end

def show_options
    prompt = TTY::Prompt.new
    answer = prompt.ask("Type in the name of the show you would like to learn more about.")
    user_show_choice = Show.find_like(answer)
    user_show_choice

end

def run_boxguide
    welcome
    shows_or_services
end

run_boxguide