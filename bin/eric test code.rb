def welcome
    puts "Welcome to BoxGuide!".colorize(:orange)
end


def menu
    prompt = TTY::Prompt.new
    prompt.select("What would you like to do?") do |menu|
        menu.choice 'Quick Search for Show', 1
        menu.choice 'Options for Shows', 2
        menu.choice 'Options for Streaming Services', 3
    end
end

def delegate(choice)
    case choice
    when 1
        quicksearch
    when 2
        showOptions
    when 3
        serviceOptions
    end
end

def quicksearch
    puts "Enter a show name you would like to search"
    search_show = gets.chomp
    Show.find_like(search_show)
end



welcome
menu

#api curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c
#genre curl http://api-public.guidebox.com/v2/genres?api_key=84b68f0497dc6bc45b5e600947b3156bf9c7743c