require_relative '../config/environment'

require 'colorize'
require 'tty-prompt'

def welcome
    puts "Welcome to BoxGuide!".colorize(:red)
end


def menu
    prompt = TTY::Prompt.new
    answer = prompt.select("Where would you like to start?") do |menu|
        menu.choice name: 'Shows', value: 1
        menu.choice name: 'Streaming Services', value: 2
        menu.choice name: 'Quick Search', value: 3
        menu.choice name: 'Exit', value: 4
    end
    if answer == 1
        show_options
    elsif answer == 2
        puts "Still finishing this part"
    elsif answer == 3
        quicksearch
    else
        puts "Thanks for visiting Boxguide!".colorize(:red)
    end 
end

def quicksearch
    puts "Boxguide will find streaming services that currently have your show.".colorize(:red)
    search_prompt
end

def search_prompt
    puts "Enter the show name you would like to search:"
    search_show = gets.chomp
    show = auth_show(search_show)
    if show == nil
        spell
        search_prompt
    else
        result = show.streaming_services
        if result.length == 1
            puts "#{search_show.titleize} is currently available on #{result.first}."
            sleep 5
            menu
        else
            puts "#{search_show.titleize} is currently available on #{result.join(", ")}."
        end
    end
end

def spell
    puts "Did you spell that correctly?"
    sleep(1)
end

def show_options
    prompt = TTY::Prompt.new
    choice = prompt.select("Here are available options for Shows") do |menu|
        menu.choice name: 'Search Streaming Services for a Show', value: 1
        menu.choice name: 'Find genre of a Show', value: 2
        menu.choice name: 'Add Show to database', value: 3
        menu.choice name: 'Add Streaming Service to Show', value: 4
        menu.choice name: 'Exit', value: 5
    end
    if choice == 1
        quicksearch
    elsif choice == 2
        show_genre
    elsif choice == 3
        add_show
    elsif choice == 4
        add_service_to_show
    else
        menu
    end 
end

def show_genre
    puts "What Show would you like to find the genre for?"
    search_show = gets.chomp
    result = auth_show(search_show)
    if result == nil
        spell
        show_genre
    else
        puts result.genre
    end
end

def add_show
    puts "Enter name of show you'd like to add:"
    show_name = gets.chomp
    puts "Enter genre of the show:"
    show_genre = gets.chomp
    show = Show.create(name: show_name.titleize, genre: show_genre.titleize)
    puts "Your show,#{show_name.capitalize}, has been added to the database!"
    prompt = TTY::Prompt.new
    choice = prompt.select("Would you like to assign a streaming service to your show?") do |menu|
        menu.choice name: "Yes", value: 1
        menu.choice name: "No", value: 2
    end
    if choice == 1
        i = true
        while i == true
            puts "What streaming service would you like to assign to your show?"
            service_name = gets.chomp
            service = auth_service(service_name)
            if service == nil
                spell
                i = true
            else
                assign_service(service, show)
                i = false
                show_option
            end
        end
    else
        show_options
    end
end

def add_service_to_show
    puts "Enter the name of Show you would like to add a streaming service to:"
    show = gets.chomp
    puts "Great! Which streaming service would you like to add the show to?"
    service = gets.chomp
    assign_service(service, show)
    puts "Your show has been added to the streaming service!"
end

def assign_service(service_assign, show_assign)
    service = auth_service(service_assign)
    show = auth_show(show_assign)
    Boxguide.create(service_id: service.id, show_id: show.id)
end

def auth_show(show)
    Show.find_by("name like ?", show)
end

def auth_service(service)
    Service.find_by("name like ?", service)
end

welcome
menu

#api curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c
#genre curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c