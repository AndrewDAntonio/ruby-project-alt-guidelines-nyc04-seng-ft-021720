require_relative '../config/environment'
require 'tty-prompt'


def welcome
    puts "Welcome to Boxguide."
end

def shows_or_services
    prompt = TTY::Prompt.new
    answer = prompt.select("Where would you like to start?") do |menu|
        menu.choice name: 'Shows', value: 1
        menu.choice name: 'Streaming Services', value: 2
    end
    if answer = 1
        show_options
    else
        puts "Still finishing this part" #Streaming Services conditional
    end 
end

def show_options
    prompt = TTY::Prompt.new
    answer = prompt.ask("Type in the name of the show you would like to learn more about.")

end

def run_boxguide
    welcome
    shows_or_services
end

run_boxguide