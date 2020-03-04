require 'bundler'
Bundler.require


require_relative '../config/environment'
require_all 'app'
require 'tty-prompt'
require 'pry'



def welcome
    puts "Welcome to Boxguide.".colorize(:red)
end

def shows_or_services
    prompt = TTY::Prompt.new
    answer = prompt.select("Where would you like to start?") do |menu|
        menu.choice name: 'Shows', value: 1
        menu.choice name: 'Streaming Services', value: 2
        menu.choice name: 'Quick Search', value: 3
        menu.choice name: 'Exit', value: 4
    end
    if answer == 1
        puts "Still finishing this part"
    elsif answer == 2
        service_choices
    elsif answer == 3
        puts "Still finishing this part"
    else
        puts "Thanks for visiting Boxguide!"
    end 
end

def service_choices
    prompt = TTY::Prompt.new
    choices = Service.all.map{|service| service.name}
    choices << "Dont see the service you're looking for? Add it here!"
    selected_service = prompt.select("Select the Streaming Service you would like to learn more about.", choices)
   
    if selected_service == choices[-1]
        create_new_service
    else    
    service_info(selected_service)
    end
end

def service_info(streaming_service)
    service_instance = Service.all.find_by(name: streaming_service)
    prompt = TTY::Prompt.new
    answer = prompt.select("What would you like to learn about #{streaming_service}") do |menu|
        menu.choice name: "List of Shows on this service", value: 1
        menu.choice name: "List Shows by Genre Type", value: 2
        menu.choice name: "Number of Shows by Genre Type", value: 3
        menu.choice name: "Return to Main Menu", value: 4
    end
    if answer == 1
        puts service_instance.shows.map{|show| show.name}
        service_info(streaming_service)
    elsif answer == 2
        prompt = TTY::Prompt.new
        answer = prompt.ask("What genre are you interested in?")
        puts "Here are the #{answer} shows on this platform!"
        puts service_instance.shows_by_genre(answer)
        service_info(streaming_service)
    elsif answer == 3
        prompt = TTY::Prompt.new
        answer = prompt.ask("What genre are you interested in?")
        puts "There are #{service_instance.genre_count(answer)} shows on #{streaming_service} that fall under the #{answer} genre"
        service_info(streaming_service)
    else
        puts "Returning to Main Menu!"
        shows_or_services
    end
    
end

def create_new_service
    puts "Lets create the new Streaming Service here."
    prompt = TTY::Prompt.new
        answer = prompt.ask("Type in the name of the Streaming Service to add it to our records.")
    Service.create(answer)
    puts "#{answer} has been added to our list of Streaming Services"
end

def service_genre_search(streaming_instance)
    prompt = TTY::Prompt.new
        answer = prompt.ask("What genre are you interested in?")
        puts "Here are the #{answer} shows on this platform!"
        puts service_instance.shows_by_genre(answer)
        sleep 2
        service_info(streaming_instance.name)
end


